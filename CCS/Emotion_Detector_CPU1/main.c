#include <stdbool.h>
#include <stdint.h>

#include <tms320f28379d.h>
#include <driverlib/cpu.h>

#include "Configuration/Configuration.h"
#include "Communications/Communications.h"
#include "Communications/Biom_AS7026GG.h"
#include "Communications/SCI_UART.h"

extern uint16_t volatile SCI_Mode;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode
uint16_t Sporadic_Error;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%   DMA CONFIGURATION    %%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_DMA(void){
    //  BURST:Columna   TRANSFER:Renglón  Realiza 4 ciclos por word
    CPUSYS_PCLKCR0_R|=0x4;                  //Enable DMA Clock
    CPUSYS_SECMSEL_R=0x4;                   //PF2SEL:Puente conectado al DMA                    DOUBT!!!!
    DMA_DEBUGCTRL_R|=0x8000;                //FREE: DMA corre durante un emulation halt

    //CHANNEL 1 (EDA)
    DMA_CH1_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH1_BURSTSIZE_R=31;                 //Burst Size=31+1=1 words per burst
    DMA_CH1_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH1_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word

    DMA_CH1_TRANSFERSIZE_R=63;              //Transfer Size=63+1=64 bursts per transfer
    DMA_CH1_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH1_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH1_SRCBEGADDRSHADOW_R=(uint32_t)(&EDA);
    DMA_CH1_SRCADDRSHADOW_R=(uint32_t)(&EDA[]);
    DMA_CH1_DSTBEGADDRSHADOW_R=(uint32_t)(&EDA[0]);
    DMA_CH1_DSTADDRESHADOW_R=(uint32_t)(&EDA[0]);

    DMA_CH1_CONTROL_R|=0x91;                 //RUN: Enable CH1
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 2 (PRV_x)
    DMA_CH2_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH2_BURSTSIZE_R=0;                  //Burst Size=0+1=1 words per burst
    DMA_CH2_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH2_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word

    DMA_CH2_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH2_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH2_DSTBEGADDRSHADOW_R=(uint32_t)(&Gauss[0]);
    DMA_CH2_DSTADDRESHADOW_R=(uint32_t)(&Gauss[0]);

    DMA_CH2_CONTROL_R|=0x91;                 //RUN: Enable CH2
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG
    //CHANNEL 3 (PRV_y)
    DMA_CH3_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH3_BURSTSIZE_R=0;                  //Burst Size=0+1=1 words per burst
    DMA_CH3_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH3_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word

    DMA_CH3_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH3_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH3_DSTBEGADDRSHADOW_R=(uint32_t)(&h[0]);
    DMA_CH3_DSTADDRESHADOW_R=(uint32_t)(&h[0]);

    DMA_CH3_CONTROL_R|=0x91;                 //RUN: Enable CH3
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 4 (FIFO Emotion)
    DMA_CH4_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH4_BURSTSIZE_R=0;                  //Burst Size=0+1=1 words per burst
    DMA_CH4_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH4_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word
    DMA_CH4_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH4_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH4_DSTBEGADDRSHADOW_R=(uint32_t)(&FIFO_Emotion[0]);
    DMA_CH4_DSTADDRESHADOW_R=(uint32_t)(&FIFO_Emotion[0]);

    DMA_CH4_CONTROL_R|=0x91;                 //RUN: Enable CH3
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    DMACLASSR_DMACHSRCSEL1_R=0x0;           //CH4, CH3, CH2, CH1 is triggered by Software
    DMACLASSR_DMACHSRCSEL2_R=0x0;           //CH5 is triggered by Software
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%    CONFIGURATION PIE    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_PIE(void){
    PIE_CTRL_R|=0x1;                        //ENPIE: Hab inter
    PIE_ACK_R|=0x181;                       //Clean interrupt flags from Goups 1, 8, 9 & 12
    PIE_IER1_R|=0x10;                       //Enable Channel 5 from Group 1 for XINT2
    PIE_IER8_R|=0x2;                        //Enable Channel 2 from Group 8 for I2C FIFO
    PIE_IER9_R|=0xC;                        //Enable Channel 3 & Channel 4 from Group 9 for SCIB RX & SCIB TX
//    PIE_IER12_R|=0x1;                       //Enable Channel 1 from Group 12 for XINT3
    IER|=0x981;                             //Enable Int1, Int8, Int9 & Int12 from IER of CPU
}

//------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%    MAIN PROGRAM   %%%%%%%%%%%%%%%%%%%%%%%%
//------------------------------------------------------------------
void main(void){
    DINT;                                   //Disable interrupt masks

    EALLOW;
        Config_Ports();
        Config_SCIB();
        Config_I2CA();
        //Assign ISR (Interrupt Service Routine) to register with I2CA, XINT2 & SCIB RX
        INT1_5_XINT2_R=(uint32_t)(&Inter_XINT2);
        INT8_2_I2CAFIFO_R=(uint32_t)(&Inter_I2CA);
        INT9_3_SCIBRX_R=(uint32_t)(&Inter_SCIBRX);
        INT9_4_SCIBTX_R=(uint32_t)(&Inter_SCIBTX);
//        INT12_1_XINT3_R=(uint32_t)(&Inter_XINT3);
        Config_PIE();
    EDIS;

    EINT;                                   //Enable interrupt masks

    Init_EmotBuff();
    HM10_Config();
    Biom_Config();
    while(SCI_Mode!=2);                     //While the BLE device isn't connected
    while(1){
    }
}
