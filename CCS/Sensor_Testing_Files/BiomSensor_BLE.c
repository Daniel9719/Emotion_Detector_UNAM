#include<stdint.h>
//#include<stdbool.h>
#include<string.h>
#include"driverlib/inc/tms320f28379d.h"
#include"driverlib/cpu.h"
#include"Biom_AS7026GG.h"
#include"IEEE_I2C.h"
#include"HM10_BLE.h"
#include"filtro.h"

volatile int SCI_State;
volatile bool SCI_RxAvail=true;
bool SCI_TxAvail=true;
int16_t* SCI_StartPt;
int16_t* SCI_EndPt;
uint16_t SCI_Data;
volatile uint16_t SCI_Mode=0;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode

struct Raw_Data{
    int16_t GR_LED;
    int16_t int_EDA;
};
struct Raw_Data Raw;

struct Sensor_Biometrico{
    int16_t LED_V[8];
    int16_t EDA[2];
};
struct Sensor_Biometrico Biom1;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%     INT INTERRUPT (GPIO 22)    %%%%%%%%%%%%%%%%%%
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
//%%%%%%%%%%%%%%%%%%%%%%    I2CA INTERRUPT    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_I2CA (void){
    static uint16_t i=0, j=0, k=4;
    static char Conmut=1;
    //-------Calibration variables---------//
    static uint16_t Clb_Windw=0, Clb_Mode=1, Offset=7, Current=0;
    static int32_t Clb_Max=0, Clb_Min=16383, Clb_Ampl=0;

    if(Conmut){
        //OFE1 LED VERDE o LED IR
        Raw.GR_LED=(I2C_Read_Byte())>>2;
        Raw.GR_LED|=((I2C_Read_Byte())<<6);
        if(Clb_Mode==2){                            //Amplitude Check
            Clb_Max=__max(Clb_Max,Raw.GR_LED);  //PPG Signal Pregain or PPG Signal After OFE1
            Clb_Min=__min(Clb_Min,Raw.GR_LED);
        }
        if(Clb_Mode==0){
//            Biom1.LED_V[i]=FIR_PPG(Raw.GR_LED);
            Biom1.LED_V[i]=Raw.GR_LED;
            i++;
        }
    }
    else{
        //EAF EDA
        Raw.int_EDA=(I2C_Read_Byte())>>2;
        Raw.int_EDA|=((I2C_Read_Byte())<<6);
        if(Clb_Mode==1){                            //Range Check
            Clb_Max=__max(Clb_Max,Raw.int_EDA);    //PPG Signal Pregain or PPG Signal After OFE1
            Clb_Min=__min(Clb_Min,Raw.int_EDA);
        }
        if(Clb_Mode==0){
            k++;
            if(k%4==0){
                Biom1.EDA[j]=FIR_EDA(Raw.int_EDA);
//                Biom1.EDA[j]=Raw.int_EDA;
                j^=1;
                k=0;
            }
        }
    }
//--------------CALIBRATION---------------//
//Start the calibration showing PPG raw & PPG filtered signals
    if(Clb_Mode){                                   //(0) End of calibration  (1) Range Check   (2) Amplitude Check
        Clb_Windw++;
        if(Clb_Windw==768){                         //Wait for a window of data of 1.2[s]*5=6 [s]     128*6=768
            if(Clb_Mode==1){                        //Range Check
                if(Clb_Max<12288 && Clb_Min>5120){
                    Clb_Mode=2;                     //Move to Amplitude check
                }
                else{
                    if(Offset<256){
                        if(Clb_Max>12288){
                            Offset++;
                        }
                        if(Clb_Min<5120){
                            Offset--;
                        }
                        Biom_Calibration(Clb_Mode,Offset);
                    }
                    else{
                        Clb_Mode=0;                 //End of calibration
                    }
                }
            }
            else{                                   //Amplitude Check
                Clb_Ampl=Clb_Max-Clb_Min;            //Amplitude
                if(Clb_Ampl<3500 && Clb_Ampl>1200){
                    Clb_Mode=0;                     //End of calibration
                }
                else{
                    if(Current<39){                 //Max 100 [mA]
                        if(Clb_Ampl<1500){
                            Current++;
                        }
                        if(Clb_Ampl>3500){
                            Current--;
                        }
                        Biom_Calibration(Clb_Mode,Current);
                        Clb_Mode=1;                 //Move to Range check
                    }
                    else{
                        Clb_Mode=0;                 //End of calibration
                    }
                }
                //After the calibration finishes, change the Channels to PPG & EDA
                if(Clb_Mode==0){
                    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
                    //------Canales al ADC-------//
                    I2C_Write_Byte(AS7026GG_ADC_CHANNEL_MASK_L);
                    I2C_Write_Byte(0x42);                // OFE1 After Gain & Electrical Front End
                    I2C_StartWR(AS7026GG_ADD, 2, WRITE);
                    I2C_Stop();
                }
            }
            Clb_Windw=0;
            Clb_Max=0;
            Clb_Min=16383;
        }
    }
//--------------SEND DATA TO SCI---------------//
    if(i==8){
        while(!SCI_TxAvail){}
        SCI_TxAvail=false;
        SCI_StartPt=&Biom1.LED_V[0];
        SCI_EndPt=&Biom1.EDA[2];
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
        SCI_TxAvail=true;
    }
    SCIB_FFTX_R|=0x40;                      //RXFFINTCLR: Clean RXFFIL interrupt
    PIE_ACK_R|=0x100;                       //Clean Group 9 interrupt flag
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    INTERRUPCIÓN SCIB RX    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_SCIBRX (void){
    static char SCI_RxData[26];
    static char* SCI_RxPt=SCI_RxData;
    static bool RxType=true;                                //(true) Text  (false) Data

    SCIB_FFRX_R|=0x40;                                      //RXFFINTCLR: Clean interrupt RXFFIL
    while(SCIB_FFRX_R&0x1F00){                              //While SCI FIFO RX is not empty
        SCIB_Read(SCI_RxPt);                                //Reading Data from Rx FIFO
        if(RxType){                                         //If Text RxType (true)
            if((*SCI_RxPt++)==0xA){                         //If String contains a "\n" statement
                switch(SCI_Mode){
                case 0:                                     //AT Mode
                    if(strstr(SCI_RxData,"OK")!=NULL){
                        SCI_State++;                        //Increase State
                        SCI_RxAvail=true;
                        if(SCI_State==5){ SCI_Mode=1; }     //Switch to Connection Mode
                    }
                    break;
                case 1:                                     //Connection Mode
                    if(strstr(SCI_RxData,"OK+CONN")!=NULL){ SCI_Mode=2; }               //Switch to Standby Mode
                    break;
                case 2:                                     //Standby Mode
                    if(strstr(SCI_RxData,"OK+LOST")!=NULL){ SCI_Mode=1; }               //Switch to Connection Mode
                    else if(strstr(SCI_RxData,"EM_DET_UNAM")!=NULL){ RxType=false; }    //Switch to Data RxType
                    break;
                }
            SCI_RxPt=SCI_RxData;
            Clean_Reg(SCI_RxData);
            }
        }
    }
    PIE_ACK_R|=0x100;                                     //Clean flag interrupt from Group 9
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%   GPIO PORTS CONFIGURATIONS  %%%%%%%%%%%%%%%%%%%%
//                   SCL: GPIO105    SDA: GPIO104
//               SCIB RX: GPIO19     SCIB TX: GPIO18
//                             INT: GPIO22
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
//%%%%%%%%%%%%%%%%%%    CONFIGURATION SCI (UART)    %%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_SCIB(void){
    CLKCFG_LOSPCP_R=0x0;                    //LSPCLK=SYSCLK/1
    CPUSYS_PCLKCR7_R|=0x2;                  //Hab reloj SCIB

    SCIB_CCR_R=0x7;                         //Longitud de los datos a 8 bits
    SCIB_HBAUD_R=0;
//    SCIB_LBAUD_R=129;                     //BRR=129 para tasa de 9615
    SCIB_LBAUD_R=10;                        //BRR=10
                                            //SCI_Freq=LSPCLK/((BRR+1)*8)=113636
    SCIB_FFTX_R=0xE001;                     //SCIFFEN: Hab FIFOs
    SCIB_FFRX_R=0x2021;                     //RXFFIENA: Hab interrupción Rx FIFO   RXFFIL(10): Nivel de inter a 1 nibbles
    SCIB_CTL1_R&=~0x20;                     //SWRESET: Reset para limpiar interrupción ERROR (BRKDT)
    SCIB_CTL1_R=0x23;                       //SWRESET: Reset
                                            //TXENA: Hab Tx SCI  RXENA: HAb Rx SCI
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    CONFIGURATION I2CA    %%%%%%%%%%%%%%%%%%%%%%
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
//%%%%%%%%%%%%%%%%%%%%%    CONFIGURATION PIE    %%%%%%%%%%%%%%%%%%%%%%
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
//%%%%%%%%%%%%%%%%%%%%%%%    MAIN PROGRAM   %%%%%%%%%%%%%%%%%%%%%%%%
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
        INT9_3_SCIBRX_R=(uint32_t)(&Inter_SCIBRX);
        INT9_4_SCIBTX_R=(uint32_t)(&Inter_SCIBTX);

        Config_PIE();
    EDIS;

    EINT;                                   //Habilitar interrupciones mascarables
    SCI_TxAvail=true;
    HM10_Config();
    while(SCI_Mode!=2);                     //While the BLE device isn't connected
    Biom_Config();
    while(1){
    }
}
