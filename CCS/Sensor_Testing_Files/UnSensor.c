//-------------System Libraries------------//
#include<stdint.h>
#include<string.h>
#include"driverlib/inc/tms320f28379d.h"
#include"driverlib/cpu.h"
//-------------Own Libraries------------//
#include"Biom_AS7026GG.h"
#include"IEEE_I2C.h"
#include"HM10_BLE.h"

#define size 10

volatile bool SCI_RxAvail=true;
int SCI_State;
bool SCI_Sent;
uint16_t* SCI_StartPt;
uint16_t* SCI_EndPt;
uint16_t SCI_Data;

struct Sensor_Biometrico{
    uint16_t LED_V[size];
    uint16_t EDA[size];
};
struct Sensor_Biometrico Biom1;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%    INTERRUPCIÓN INT (GPIO 22)    %%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
// Solicitud de lectura de datos del sensor biométrico
__interrupt void Inter_GPIO22 (void){
    PIE_ACK_R|=0x1;                             //Limpia bandera Grupo 1 interrupciones
    while(I2CA_STR_R&0x1000){};                 //Mientras el controlador esté ocupado BB
    I2C_Write_Byte(AS7026GG_FIFOL);
    I2C_StartWR(AS7026GG_ADD, 1, WRITE);
    I2C_StartWR(AS7026GG_ADD, 2, READ);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%    INTERRUPCIÓN I2CA    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_I2CA (void){
    static uint16_t i=0;
    static char Conmut=1;
    //-------Calibration variables---------//
    static uint16_t Clb_Windw=0, Clb_Mode=1, Offset=10, Current=0;
    static int32_t Clb_Max=0, Clb_Min=16383;

    if(Conmut){
        //OFE1 LED VERDE o LED IR
        Biom1.LED_V[i]=(I2C_Read_Byte())>>2;
        Biom1.LED_V[i]|=((I2C_Read_Byte())<<6);
        if(Clb_Mode==2){                            //Amplitude Check
            Clb_Max=__max(Clb_Max,Biom1.LED_V[i]);  //PPG Signal Pregain or PPG Signal After OFE1
            Clb_Min=__min(Clb_Min,Biom1.LED_V[i]);
        }
    }
    else{
        //EAF EDA
        Biom1.EDA[i]=(I2C_Read_Byte())>>2;
        Biom1.EDA[i]|=((I2C_Read_Byte())<<6);
        if(Clb_Mode==1){                            //Range Check
            Clb_Max=__max(Clb_Max,Biom1.EDA[i]);    //PPG Signal Pregain or PPG Signal After OFE1
            Clb_Min=__min(Clb_Min,Biom1.EDA[i]);
        }
        i++;
    }
//--------------CALIBRATION---------------//
    if(Clb_Mode){                                   //(0) End of calibration  (1) Range Check   (2) Amplitude Check
        Clb_Windw++;
        if(Clb_Windw==768){                         //Wait for a window of data of 12 [s] 768
            if(Clb_Mode==1){                        //Range Check
                if(Clb_Max<12288 && Clb_Min>6144){
                    Clb_Mode=2;                     //Move to Amplitude check
                }
                else{
                    if(Clb_Max>12288){
                        Offset++;
                    }
                    if(Clb_Min<6144){
                        Offset--;
                    }
                    Biom_Calibration(Clb_Mode,Offset);
                }
            }
            else{                                   //Amplitude Check
                Clb_Max=Clb_Max-Clb_Min;            //Amplitude
                if(Clb_Max<3500 && Clb_Max>1500){
                    Clb_Mode=0;                     //End of calibration
                }
                else{
                    if(Current<17 && Current>0){                 //Max 50 [mA]
                        if(Clb_Max<1500){
                            Current++;
                        }
                        if(Clb_Max>3500){
                            Current--;
                        }
                        Biom_Calibration(Clb_Mode,Current);
                        Clb_Mode=1;                 //Move to Range check
                    }
                    else{
                        Clb_Mode=0;                 //End of calibration
                    }
                }
            }
            Clb_Windw=0;
            Clb_Max=0;
            Clb_Min=16383;
        }
    }
//--------------SEND DATA TO SCI---------------//
    if(i==size){
        while(!SCI_Sent){}
        SCI_Sent=false;
        SCI_StartPt=&Biom1.LED_V[0];
        SCI_EndPt=&Biom1.EDA[size];
        SCI_Data=Biom1.LED_V[0];
        SCIB_FFTX_R|=0x20;                          //TXFFIENA: Hab Inter Tx FIFO
        i=0;
    }
    Conmut^=1;
    I2CA_FFRX_R|=0x40;                              //RXFFINTCLR: Limpia bandera FIFO Rx
    PIE_ACK_R|=0x80;                                //Limpia bandera Grupo 8 interrupciones
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%   SCIB TX INTERRUPT    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_SCIBTX (void){
    SCIB_WData();
    if(SCI_StartPt==SCI_EndPt){
        SCIB_FFTX_R&=~0x20;                 //TXFFIENA: Disable Inter Tx FIFO
        SCI_Sent=true;
    }
    SCIB_FFTX_R|=0x40;                      //RXFFINTCLR: Clean RXFFIL interrupt
    PIE_ACK_R|=0x100;                       //Clean Group 9 interrupt flag
}

//--------------------------------------------------------------------
//%%%%%%%%   CONFIGURACIÓN DE PUERTOS ASOCIADOS AL I2CA  %%%%%%%%%%%
//                   SCL: GPIO105    SDA: GPIO104
//--------------------------------------------------------------------
void Config_puertos(void){
    GPIO_PORTD_GMUX1_R|=0x0;                //GPIO 104-105 a Grupo 0
    GPIO_PORTD_MUX1_R|=0x50000;             //GPIO 104-105 Mux 2 (I2C)
    GPIO_PORTD_ODR_R|=0x300;                //GPIO 104-105 con ODR
    GPIO_PORTD_QSEL1_R|=0xF0000;            //GPIO 104-105 Async

    GPIO_PORTA_GMUX1_R|=0x0;                //GPIO 22 a Grupo 0
    GPIO_PORTA_MUX1_R|=0x0;                 //GPIO 22 Mux 0 (GPIO)
    GPIO_PORTA_DIR_R|=0x0;                  //GPIO 22 Salida

    GPIO_PORTA_DIR_R|=0x4000;               //GPIO 18 Salida
    GPIO_PORTA_GMUX2_R|=0x0;                //GPIO 18-19 a Grupo 0
    GPIO_PORTA_MUX2_R|=0xA0;                //GPIO 18-19 Mux 2 (SCIB)
    GPIO_PORTA_QSEL2_R|=0xF0;               //GPIO 18-19 Async

    XINT2CR_R|=0x1;                         //Interrupción es en flanco de bajada y Hab Interrupción
    XBAR_IN_SEL5_R|=22;                     //Conecta Input XBAR5 a GPIO22 para destino XINT2
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    CONFIGURACIÓN SCI (UART)    %%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_SCIB(void){
    CLKCFG_LOSPCP_R=0x0;                    //LSPCLK=SYSCLK/1
    CPUSYS_PCLKCR7_R|=0x2;                  //Hab reloj SCIB

    SCIB_CCR_R=0x7;                         //Longitud de los datos a 8 bits
    SCIB_HBAUD_R=0;
    SCIB_LBAUD_R=10;                        //BRR=10
                                            //SCI_Freq=LSPCLK/((BRR+1)*8)=113636
    SCIB_FFTX_R=0xE001;                     //SCIFFEN: Hab FIFOs
    SCIB_FFRX_R=0x2021;                     //RXFFIENA: Hab interrupción Rx FIFO   RXFFIL(10): Nivel de inter a 1 nibbles
    SCIB_CTL1_R&=~0x20;                     //SWRESET: Reset para limpiar interrupción ERROR (BRKDT)
    SCIB_CTL1_R=0x23;                       //SWRESET: Reset
                                            //TXENA: Hab Tx SCI  RXENA: HAb Rx SCI
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    CONFIGURACIÓN I2CA    %%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_I2CA(void){
    CPUSYS_PCLKCR9_R|=0x1;                  //Hab reloj I2CA
    I2CA_PSC_R=0;                           //PSC=0  d=7    I2C_Clk=SysClk/(I2CPSC+1)
    I2CA_CLKL_R=0x8;                        //ICCL=8        SCL_freq=I2C_Clk/[(ICCL+d)+(ICCH+d)]
    I2CA_CLKH_R=0x3;                        //ICCH=3
    I2CA_FFTX_R=0x6000;                     //Hab FIFOs Rx y Tx, y Hab FIFO Tx
    I2CA_FFRX_R=0x2022;                     //RXFFRST: Hab FIFO Rx
                                            //RXFFIENA: Hab interrupciones
                                            //RXFFIL: 2 (Nivel 2 FIFO)

    I2CA_MDR_R=0x20;                        //IRS: Hab módulo I2C
    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BUSBSY
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    CONFIGURACIÓN PIE    %%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_PIE(void){
    PIE_CTRL_R|=0x1;                        //ENPIE: Hab inter
    PIE_ACK_R|=0x181;                       //Limpia bandera Grupo 1, 8 y 9 interrupciones
    PIE_IER1_R|=0x10;                       //Hab Canal 5 del Grupo 1 para XINT2
    PIE_IER8_R|=0x2;                        //Hab Canal 2 del Grupo 8 para I2C FIFO
    PIE_IER9_R|=0xC;                        //Hab Canal 3 y Canal 4 del Grupo 9 para SCIB RX
    IER|=0x181;                             //Hab Int1, Int8 e Int9 de IER del CPU
}

//------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    PROGRAMA PRINCIPAL    %%%%%%%%%%%%%%%%%%%%
//------------------------------------------------------------------
void main(void){
    DINT;                                   //Desactivar interrupciones mascarables

    EALLOW;
        Config_puertos();
        Config_SCIB();
        Config_I2CA();
        //Asignación de ISR a registro con interrupción del I2CA, XINT2 y SCIB RX
        INT1_5_XINT2_R=(uint32_t)(&Inter_GPIO22);
        INT8_2_I2CAFIFO_R=(uint32_t)(&Inter_I2CA);
        INT9_4_SCIBTX_R=(uint32_t)(&Inter_SCIBTX);
        Config_PIE();
    EDIS;

    EINT;                                   //Habilitar interrupciones mascarables
    SCI_Sent=true;
    Biom_Config();
    while(1){
    }
}
