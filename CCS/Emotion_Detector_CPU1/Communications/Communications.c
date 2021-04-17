#include <driverlib/cpu.h>

#include "Communications/Communications.h"
#include "Communications/I2C.h"
#include "Communications/SCI_UART.h"
#include "Communications/Biom_AS7026GG.h"
#include "Configuration/Configuration.h"
#include "Freq_Extraction/Cubic_Spline.h"
#include "Time_Extraction/PPI_Estimation.h"
#include "Conditioning/FIR_filter.h"

//%%%%%%%%%%%%%%%%%%    MAIN VARIABLES    %%%%%%%%%%%%%%%%%%
extern volatile bool Main_Running;

//%%%%%%%%%%%%%%%%%%    SCI_UART VARIABLES    %%%%%%%%%%%%%%%%%%
extern int HM10_State;
extern volatile bool SCI_RxAvail;
extern uint16_t SCI_Mode;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode

//%%%%%%%%%%%%%%%%%%    CONFIGURATION VARIABLES    %%%%%%%%%%%%%%%%%%
extern volatile uint16_t Config_Auto;
extern volatile uint16_t Config_Addr;

extern volatile uint16_t Clb_Mode;

//%%%%%%%%%%%%%%%%%%    COMMUNICATIONS VARIABLES    %%%%%%%%%%%%%%%%%%
struct Biometric_Sensor{
    int16_t GR_LED;
    int16_t int_EDA;
};
struct Biometric_Sensor Biom1;

int16_t PPG;
float PRV_h[852];
float PRV_y[853];
float SCR[2208];    //2048 points for 64s of signal + 160 points for buffer of 5s

bool TxSwitch;

//%%%%%%%%%%%%%%%%%%    FREQUENCY EXTRACTION VARIABLES    %%%%%%%%%%%%%%%%%%
extern volatile float Coeff_A[];
extern volatile float Const_B[];
extern volatile float S[];
extern volatile float CubSpl[];
extern volatile bool SCRShift, PRVShift;

//%%%%%%%%%%%%%%%%%%    TIME EXTRACTION VARIABLES    %%%%%%%%%%%%%%%%%%
extern volatile uint16_t sum_flg;
extern volatile uint16_t XY_indx;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%     DMA CH3 INTERRUPT   %%%%%%%%%%%%%%%%%%
// Switching between SCR & CubSpl signals for shifting process
//--------------------------------------------------------------------
__interrupt void Inter_DMACH3 (void){
    PIE_ACK_R|=0x40;                                //Clean flag interrupt from Group 7
    DMA_CH3_TRANSFERSIZE_R=3071;                    //Transfer Size=Size+1 bursts per transfer
    DMA_CH3_DSTBEGADDRSHADOW_R=(uint32_t)(&CubSpl[0]);
    DMA_CH3_DSTADDRESHADOW_R=(uint32_t)(&CubSpl[0]);
    DMA_CH3_SRCBEGADDRSHADOW_R=(uint32_t)(&CubSpl[512]);
    DMA_CH3_SRCADDRSHADOW_R=(uint32_t)(&CubSpl[512]);
    DMA_CH3_MODE_R&=~0x8000;                        //CHINTE: Disable interrupt
    DMA_CH3_CONTROL_R|=0x9;                         //RUN: Enable CH4 PERINTFRC:Force peripheral event from CH4 (OVLP Coeff_A)
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%     XINT2 INTERRUPT (GPIO 22)    %%%%%%%%%%%%%%%%%%
// Request for reading data from biometric sensor
//--------------------------------------------------------------------
__interrupt void Inter_XINT2 (void){
    PIE_ACK_R|=0x1;                                 //Clean flag interrupt from Group 1
    while(I2CA_STR_R&0x1000){};                     //While the controller is occupied BB
    I2C_Write_Byte(AS7026GG_FIFOL);
    I2C_StartWR(AS7026GG_ADD, 1, WRITE);
    I2C_StartWR(AS7026GG_ADD, 2, READ);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%    I2CA INTERRUPT    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_I2CA (void){
    static char Conmut=1;
    static uint16_t i=0, j=0, k=0;
    //-------Calibration variables---------//
    static uint16_t Clb_Windw=0, Offset=7, Current=0;
    static int32_t Clb_Max=0, Clb_Min=16383, Clb_Ampl=0;
    //-------Shifting variables---------//
    static bool WDW_ready=false;
    uint16_t Size;

    if(Conmut){
        //OFE1 GREEN LED
        Biom1.GR_LED=(I2C_Read_Byte())>>2;
        Biom1.GR_LED|=((I2C_Read_Byte())<<6);       //PPG Signal After OFE1
        if(Clb_Mode==2){                            //Amplitude Check
            Clb_Max=__max(Clb_Max,Biom1.GR_LED);    //PPG Signal After OFE1
            Clb_Min=__min(Clb_Min,Biom1.GR_LED);
        }
        if(Clb_Mode==0){
            PPG=FIR_PPG(Biom1.GR_LED);
            if(PRVShift==true){
                Size=(XY_indx<<1)-1;
                EALLOW;

                DMA_CH1_TRANSFERSIZE_R=Size;        //Transfer Size=Size+1 bursts per transfer
                DMA_CH2_TRANSFERSIZE_R=Size;        //Transfer Size=Size+1 bursts per transfer
                DMA_CH1_CONTROL_R|=0x9;             //RUN: Enable CH1 PERINTFRC:Force peripheral event from CH1 (PRV_h)
                DMA_CH2_CONTROL_R|=0x9;             //RUN: Enable CH2 PERINTFRC:Force peripheral event from CH2 (PRV_y)

                EDIS;
                PRVShift=false;
            }
            WDW_ready|=PPI_Estimation(PPG, PRV_y, PRV_h);
        }
    }
    else{
        //EAF EDA
        Biom1.int_EDA=(I2C_Read_Byte())>>2;
        Biom1.int_EDA|=((I2C_Read_Byte())<<6);      //PPG Signal Pregain or EDA Electrical Front End
        if(Clb_Mode==1){                            //Range Check
            Clb_Max=__max(Clb_Max,Biom1.int_EDA);   //PPG Signal Pregain
            Clb_Min=__min(Clb_Min,Biom1.int_EDA);
        }
        if(Clb_Mode==0){
            j++;
            if(j%4==0){
                if(i==2048){
                    sum_flg++;
                    if(sum_flg<=3){
                        i=0;
                    }
                }
                if(sum_flg>=3){
                    SCR[i]=FIR_EDA(Biom1.int_EDA);
                    if(WDW_ready==1 && i>2047){
                        Main_Running=true;
                        WDW_ready=0;
                    }
                    if(i>2048){
                        k++;
                    }
                    if(SCRShift==true){
                        Size=(k<<1)-1;
                        EALLOW;

                        DMA_CH3_TRANSFERSIZE_R=Size;        //Transfer Size=Size+1 bursts per transfer
                        DMA_CH3_DSTBEGADDRSHADOW_R=(uint32_t)(&SCR[0]);
                        DMA_CH3_DSTADDRESHADOW_R=(uint32_t)(&SCR[0]);
                        DMA_CH3_SRCBEGADDRSHADOW_R=(uint32_t)(&SCR[2048]);
                        DMA_CH3_SRCADDRSHADOW_R=(uint32_t)(&SCR[2048]);
                        DMA_CH3_MODE_R|=0x8000;             //CHINTE: Enable interrupt
                        DMA_CH3_CONTROL_R|=0x9;             //RUN: Enable CH3 PERINTFRC:Force peripheral event from CH3 (SCR)

                        EDIS;
                        i=k;
                        k=0;
                        SCRShift=false;
                    }
                }
                i++;
                j=0;
            }
        }
    }
//--------------CALIBRATION---------------//
    if(Clb_Mode!=0){                                //(0) End of calibration  (1) Range Check   (2) Amplitude Check
        Clb_Windw++;
        if(Clb_Windw==768){                         //Wait for a window of data of 1.5[s]*2=3 [s]     256*3=768
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
                Clb_Ampl=Clb_Max-Clb_Min;           //Amplitude
                if(Clb_Ampl<3500 && Clb_Ampl>1200){
                    Clb_Mode=0;                     //End of calibration
                }
                else{
                    if(Current<39){    //Max 100 [mA] & Min 2.5 [mA]
                        if(Clb_Ampl<1200){
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
                if(Clb_Mode==0){
                    GPIO_PORTA_CLEAR_R|=0x7;        //Turn off Cyan LED RGB for Calibration Mode
                    AS7026GG_ADC_Channel(1);
                }
            }
            Clb_Windw=0;
            Clb_Max=0;
            Clb_Min=16383;
        }
    }
//-------------------------------------------//
    Conmut^=1;
    I2CA_FFRX_R|=0x40;                              //RXFFINTCLR: Clean FIFO Rx flag
    PIE_ACK_R|=0x80;                                //Clean flag interrupt from Group 8
//    if(!Main_Running){
//        CPUSYS_LPMCR_R&=0xFFFFFFFC;                 //IDLE MODE
//        IDLE;
//    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    INTERRUPCIÓN SCIB RX    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_SCIBRX (void){
    static char SCI_RxData[26];
    static char* SCI_RxPt=SCI_RxData;
    static bool RxType=true;                                //(true) Text  (false) Data
    static uint16_t FirstByte=1;

    SCIB_FFRX_R|=0x40;                                      //RXFFINTCLR: Clean interrupt RXFFIL
    while(SCIB_FFRX_R&0x1F00){                              //While SCI FIFO RX is not empty
        SCIB_Read(SCI_RxPt);                                //Reading Data from Rx FIFO
        if(RxType){                                         //If Text RxType (true)
            if((*SCI_RxPt++)==0xA){                         //If String contains a "\n" statement
                switch(SCI_Mode){
                case 0:                                     //AT Mode
                    if(strstr(SCI_RxData,"OK")!=NULL){
                        HM10_State++;                       //Increase State
                        SCI_RxAvail=true;
                        if(HM10_State==5){ SCI_Mode=1; }    //Switch to Connection Mode
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
        else{                                               //If Data RxType (false)
            if(FirstByte){
                if(Config_Auto){
                    SCI_RxData[1]=SCI_RxData[0];
                    SCI_RxData[0]=Config_Addr;
                    Config_Addr++;
                    goto VarsMap;
                }
                else if(SCI_RxData[0]&0x80){                //If it's a reading request
                    goto VarsMap;
                }
                else{
                    SCI_RxPt++;
                }
            }
            else{
VarsMap:
                VariablesMap(SCI_RxData[0],SCI_RxData[1]);  //Write to Variables Map
                if((SCI_RxData[0]&0x40)==0){
                    RxType=true;                            //Switch to Text RxType
                    Clean_Reg(SCI_RxData);
                }
                FirstByte=0;
                SCI_RxPt=SCI_RxData;
            }
            FirstByte^=1;
        }
    }
    PIE_ACK_R|=0x100;                                       //Clean flag interrupt from Group 9
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%   GPIO PORTS CONFIGURATIONS  %%%%%%%%%%%%%%%%%%%%
//                  R: GPIO2     G: GPIO1    B: GPIO0
//                   SCL: GPIO105        SDA: GPIO104
//               SCIB RX: GPIO19     SCIB TX: GPIO18
//                 XINT3: GPIO 67      XINT2: GPIO22
//--------------------------------------------------------------------
void Config_Ports(void){
    GPIO_PORTD_GMUX1_R|=0x0;                 //GPIO 104-105 a Grupo 0
    GPIO_PORTD_MUX1_R|=0x50000;              //GPIO 104-105 Mux 2 (I2C)
    GPIO_PORTD_ODR_R|=0x300;                 //GPIO 104-105 con ODR
    GPIO_PORTD_QSEL1_R|=0xF0000;             //GPIO 104-105 Async

    GPIO_PORTA_GMUX1_R|=0x0;                 //GPIO 0-2 a Grupo 0
    GPIO_PORTA_MUX1_R|=0x0;                  //GPIO 0-2 Mux 0 (GPIO)
    GPIO_PORTA_DIR_R|=0x7;                   //GPIO 0-2 Output

    GPIO_PORTA_GMUX1_R=0x0;                  //GPIO 22 a Grupo 0
    GPIO_PORTA_MUX1_R|=0x0;                  //GPIO 22 Mux 0 (GPIO)
    GPIO_PORTA_DIR_R|=0x0;                   //GPIO 22 Input

    GPIO_PORTA_DIR_R|=0x4000;                //GPIO 18 Salida
    GPIO_PORTA_GMUX2_R|=0x0;                 //GPIO 18-19 a Grupo 0
    GPIO_PORTA_MUX2_R|=0xA0;                 //GPIO 18-19 Mux 2 (SCIB)
    GPIO_PORTA_QSEL2_R|=0xF0;                //GPIO 18-19 Async

    XINT2CR_R|=0x1;                          //Interrupt on falling edge & Enable XINT2
    XBAR_IN_SEL5_R|=22;                      //Connect Input XBAR5 to GPIO22 for destiny XINT2
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CONFIGURATION SCI (UART)    %%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_SCIB(void){
    CLKCFG_LOSPCP_R=0x0;                     //LSPCLK=SYSCLK/1
    CPUSYS_PCLKCR7_R|=0x2;                   //Hab reloj SCIB

    SCIB_CCR_R=0x7;                          //Longitud de los datos a 8 bits
    SCIB_HBAUD_R=0;
//    SCIB_LBAUD_R=129;                      //BRR=129 para tasa de 9615
    SCIB_LBAUD_R=10;                         //BRR=10
                                             //SCI_Freq=LSPCLK/((BRR+1)*8)=113636
    SCIB_FFTX_R=0xE001;                      //SCIFFEN: Hab FIFOs    TXFFIL: Nivel de inter a <1 Byte
    SCIB_FFRX_R=0x2021;                      //RXFFIENA: Hab interrupción Rx FIFO   RXFFIL(10): Nivel de inter a >1 Byte
    SCIB_CTL1_R&=~0x20;                      //SWRESET: Reset para limpiar interrupción ERROR (BRKDT)
    SCIB_CTL1_R=0x23;                        //SWRESET: Reset
                                             //TXENA: Hab Tx SCI  RXENA: HAb Rx SCI
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    CONFIGURATION I2CA    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_I2CA(void){
    CPUSYS_PCLKCR9_R|=0x1;                   //Hab reloj I2CA
    I2CA_PSC_R=0;                            //PSC=0  d=7    I2C_Clk=SysClk/(I2CPSC+1)
    I2CA_CLKL_R=0x8;                         //ICCL=8        SCL_freq=I2C_Clk/[(ICCL+d)+(ICCH+d)]
    I2CA_CLKH_R=0x3;                         //ICCH=3
    I2CA_FFTX_R=0x6000;                      //Hab FIFOs Rx y Tx, y Hab FIFO Tx
    I2CA_FFRX_R=0x2022;                      //RXFFRST: Hab FIFO Rx
                                             //RXFFIENA: Hab interrupciones
                                             //RXFFIL: 2 (Nivel 2 FIFO)

    I2CA_MDR_R=0x20;                         //IRS: Hab módulo I2C
    while(I2CA_STR_R&0x1000){};              //Mientras el controlador esté ocupado BUSBSY
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%   DMA CONFIGURATION    %%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_DMA(void){
    //BURST:Column     TRANSFER:Row    Makes 4 cycles per word
    CPUSYS_PCLKCR0_R|=0x4;                   //Enable DMA Clock
    CPUSYS_SECMSEL_R=0x4;                    //PF2SEL:Puente conectado al DMA                    DOUBT!!!!
    DMA_DEBUGCTRL_R|=0x8000;                 //FREE: DMA corre durante un emulation halt

    //CHANNEL 1 (PRV_h)
    DMA_CH1_MODE_R=0x4500;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH1_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH1_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH1_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH1_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH1_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH1_DSTBEGADDRSHADOW_R=(uint32_t)(&PRV_h[0]);
    DMA_CH1_DSTADDRESHADOW_R=(uint32_t)(&PRV_h[0]);

    DMA_CH1_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 2 (PRV_y)
    DMA_CH2_MODE_R=0x4500;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH2_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH2_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH2_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH2_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH2_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH2_DSTBEGADDRSHADOW_R=(uint32_t)(&PRV_y[0]);
    DMA_CH2_DSTADDRESHADOW_R=(uint32_t)(&PRV_y[0]);

    DMA_CH2_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 3 (SCR)
    DMA_CH3_MODE_R=0x4520;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH3_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH3_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH3_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH3_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH3_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH3_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 4 (Cubic Spline [Coeff_A])
    DMA_CH4_MODE_R=0x4500;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH4_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH4_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH4_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH4_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH4_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH4_DSTBEGADDRSHADOW_R=(uint32_t)(&Coeff_A[0]);
    DMA_CH4_DSTADDRESHADOW_R=(uint32_t)(&Coeff_A[0]);

    DMA_CH4_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 5 (Cubic Spline [Const_B])
    DMA_CH5_MODE_R=0x4500;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH5_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH5_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH5_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH5_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH5_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH5_DSTBEGADDRSHADOW_R=(uint32_t)(&Const_B[0]);
    DMA_CH5_DSTADDRESHADOW_R=(uint32_t)(&Const_B[0]);

    DMA_CH5_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 6 (Cubic Spline [S])
    DMA_CH6_MODE_R=0x4500;                   //DATASIZE: 32 bits of transfer (1)
                                             //ONESHOT: Channel performs an entire transfer
                                             //PERINTE: Enable pheripheral event trigger
                                             //PERINTSEL: No peripheral (0)
    DMA_CH6_BURSTSIZE_R=0;                   //Burst Size=0+1=1 words per burst
    DMA_CH6_SRCBURSTSTEP_R=1;                //Source Step=1 word
    DMA_CH6_DSTBUSRTSTEP_R|=1;               //Destination Step=1 word

    DMA_CH6_SRCTRANSFERSTEP_R=1;             //Source Step=1 word
    DMA_CH6_DSTTRANSFERSTEP_R|=1;            //Destination Step=1 word

    DMA_CH6_DSTBEGADDRSHADOW_R=(uint32_t)(&S[1]);
    DMA_CH6_DSTADDRESHADOW_R=(uint32_t)(&S[1]);

    DMA_CH6_CONTROL_R|=0x90;                 //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    DMACLASSR_DMACHSRCSEL1_R=0x0;            //CH4, CH3, CH2, CH1 is triggered by Software
    DMACLASSR_DMACHSRCSEL2_R=0x0;            //CH5 is triggered by Software
}
