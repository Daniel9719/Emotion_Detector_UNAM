
#include "Char_Extraction/Freq_Extraction.h"

//#include "Char_Extraction/PDS_Burg.h"
//#include "Char_Extraction/Cubic_Spline.h"
/**
 * main.c
 */
//extern float eb[];
//extern float ef[];
//float X[N]={1,1,1,1,0,0,0,0};
float X[N]={0.75,1.55,2.25,2.98,3.76,4.45,4.95,5.48,6.2,7,7.9};
float PRV[N]={0.75,0.8,0.7,0.73,0.78,0.69,0.5,0.53,0.72,0.8,0.9};
//float Y[]={0.75,0.8,0.7,0.73,0.78,0.69,0.5,0.53,0.72,0.8,0.9}
//extern float* fft_float(float* ,uint16_t);

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%   DMA CONFIGURATION    %%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_DMA(void){
    //  BURST:Columna   TRANSFER:Renglón  Realiza 4 ciclos por word
    CPUSYS_PCLKCR0_R|=0x4;                  //Hab reloj DMA
    CPUSYS_SECMSEL_R=0x4;                   //PF2SEL:Puente conectado al DMA
    DMA_DEBUGCTRL_R|=0x8000;                 //FREE: DMA corre durante un emulation halt
    //CANAL 4
    DMA_CH4_MODE_R=0x0500;                  //DATASIZE: 16 bits de transferencia (0)
                                            //ONESHOT: Cada disparo ocasiona toda una transferencia
                                            //PERINTE: Hab disparo por periferico o software
                                            //PERINTSEL: Ningun periférico/Por software (0)
    DMA_CH4_CONTROL_R|=0x90;                //ERRCLR: Limpia bandera OVRFLG
                                            //PERINTCLR: Limpia bandera PERINTFLG

    DMA_CH4_BURSTSIZE_R=31;                 //Tamaño Burst=31+1=32 words por burst
    DMA_CH4_SRCBURSTSTEP_R=1;               //Paso Fuente=1 word
    DMA_CH4_DSTBUSRTSTEP_R|=1;              //Paso Destino=1 word

    DMA_CH4_TRANSFERSIZE_R=31;              //Tamaño Burst=31+1=32 burst por transfer
    DMA_CH4_SRCTRANSFERSTEP_R=1;            //Paso Fuente=1 word
    DMA_CH4_DSTTRANSFERSTEP_R|=1;           //Paso Destino=1 word

//    DMA_CH4_SRCBEGADDRSHADOW_R=(uint32_t)(&Emotion_Buff[1]);
//    DMA_CH4_SRCADDRSHADOW_R=(uint32_t)(&Emotion_Buff[1]);
//    DMA_CH4_DSTBEGADDRSHADOW_R=(uint32_t)(&Emotion_Buff[0]);
//    DMA_CH4_DSTADDRESHADOW_R=(uint32_t)(&Emotion_Buff[0]);

//    //CANAL 3
//    DMA_CH3_MODE_R=0x0500;                  //DATASIZE: 16 bits de transferencia (0)
//                                            //ONESHOT: Cada disparo ocasiona toda una transferencia
//                                            //PERINTE: Hab disparo por periferico o software
//                                            //PERINTSEL: Ningun periférico/Por software (0)
//    DMA_CH3_CONTROL_R|=0x90;                //ERRCLR: Limpia bandera OVRFLG
//                                            //PERINTCLR: Limpia bandera PERINTFLG
//
//    DMA_CH3_BURSTSIZE_R=31;                 //Tamaño Burst=31+1=32 words por burst
//    DMA_CH3_SRCBURSTSTEP_R=1;               //Paso Fuente=1 word
//    DMA_CH3_DSTBUSRTSTEP_R|=1;              //Paso Destino=1 word
//
//    DMA_CH3_TRANSFERSIZE_R=31;              //Tamaño Burst=31+1=32 burst por transfer
//    DMA_CH3_SRCTRANSFERSTEP_R=1;            //Paso Fuente=1 word
//    DMA_CH3_DSTTRANSFERSTEP_R|=1;           //Paso Destino=1 word
//
//    DMA_CH3_SRCBEGADDRSHADOW_R=(uint32_t)(&ynFir);
//    DMA_CH3_SRCADDRSHADOW_R=(uint32_t)(&ynFir);
//    DMA_CH3_DSTBEGADDRSHADOW_R=(uint32_t)(&Vect_Im);
//    DMA_CH3_DSTADDRESHADOW_R=(uint32_t)(&Vect_Im);

    DMACLASSR_DMACHSRCSEL1_R=0x0;           //CH4, CH3 se dispara por Software
    DMA_CH4_CONTROL_R|=0x1;                 //RUN: Hab el CH4
    DMA_CH3_CONTROL_R|=0x1;                 //RUN: Hab el CH3
}

int main(void){
    Config_DMA();
	while(1){
	    Freq_Extraction(PRV,1);
	    Freq_Extraction(EDA,1);
	}
}
