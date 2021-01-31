
#include <tms320f28379d.h>
#include <driverlib/cpu.h>

#include "ConstantesPrueba.h"
#include "Char_Extraction/Freq_Extraction.h"
#include "Char_Extraction/PSD_Burg.h"

extern volatile float Gauss[];
extern volatile float d[];
extern volatile float S[];

//float X[]={1,1,1,1,0,0,0,0};

volatile uint16_t CS_UpN=311, CS_LowN=0, CS_OVLP=0;
volatile float CS_LowAcum=0, CS_UpAcum=256.512, CS_UpLim=256.0, CS_LowLim=15.0;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%   DMA CONFIGURATION    %%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_DMA(void){
    //BURST:Column     TRANSFER:Row    Makes 4 cycles per word
    CPUSYS_PCLKCR0_R|=0x4;                  //Enable DMA Clock
    CPUSYS_SECMSEL_R=0x4;                   //PF2SEL:Puente conectado al DMA                    DOUBT!!!!
    DMA_DEBUGCTRL_R|=0x8000;                //FREE: DMA corre durante un emulation halt

    //CHANNEL 2 (Cubic Spline [Gauss])
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

    //CHANNEL 3 (Cubic Spline [d])
    DMA_CH3_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH3_BURSTSIZE_R=0;                  //Burst Size=0+1=1 words per burst
    DMA_CH3_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH3_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word

    DMA_CH3_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH3_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH3_DSTBEGADDRSHADOW_R=(uint32_t)(&d[0]);
    DMA_CH3_DSTADDRESHADOW_R=(uint32_t)(&d[0]);

    DMA_CH3_CONTROL_R|=0x91;                 //RUN: Enable CH3
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    //CHANNEL 4 (Cubic Spline [S])
    DMA_CH4_MODE_R=0x4500;                  //DATASIZE: 32 bits of transfer (1)
                                            //ONESHOT: Channel performs an entire transfer
                                            //PERINTE: Enable pheripheral event trigger
                                            //PERINTSEL: No peripheral (0)
    DMA_CH4_BURSTSIZE_R=0;                  //Burst Size=0+1=1 words per burst
    DMA_CH4_SRCBURSTSTEP_R=1;               //Source Step=1 word
    DMA_CH4_DSTBUSRTSTEP_R|=1;              //Destination Step=1 word

    DMA_CH4_SRCTRANSFERSTEP_R=1;            //Source Step=1 word
    DMA_CH4_DSTTRANSFERSTEP_R|=1;           //Destination Step=1 word

    DMA_CH4_DSTBEGADDRSHADOW_R=(uint32_t)(&S[1]);
    DMA_CH4_DSTADDRESHADOW_R=(uint32_t)(&S[1]);

    DMA_CH4_CONTROL_R|=0x91;                 //RUN: Enable CH3
                                             //ERRCLR: Limpia bandera OVRFLG
                                             //PERINTCLR: Limpia bandera PERINTFLG

    DMACLASSR_DMACHSRCSEL1_R=0x0;           //CH4, CH3, CH2, CH1 is triggered by Software
    DMACLASSR_DMACHSRCSEL2_R=0x0;           //CH5 is triggered by Software
}

void OVLP_Reset(void){
    CS_OVLP=0;

    CS_UpN=0;
    CS_LowN=0;

    CS_UpAcum=0;
    CS_LowAcum=0;

    CS_UpLim=64.0;              //Quizas poner en otro lado
}

int main(void){
    EALLOW;

    Config_DMA();

    EDIS;
//    OVLP_Reset();
    while(1){
	    Freq_Extraction(Xej,Yej,PRVSig);
//	    Freq_Extraction(0,EDA,EDASig);
	}
}
