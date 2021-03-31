/*
 * Freq_Extraction.c
 *
 *  Created on: 10/01/2021
 *      Author: danie
 */
#include <driverlib/cpu.h>
#include <Freq_Extraction/Freq_Extraction.h>
#include <Freq_Extraction/Cubic_Spline.h>
#include <Freq_Extraction/PSD_Periodogram.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;
volatile bool SCRShift=false, PRVShift=false;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    FREQUENCY CHARS ESTIMATION     %%%%%%%%%%%%%%%%%
// float* InputX: Pointer to data input X
// float* InputY: Pointer to data input Y
// uint16_t Type: (0) SCR (1) PRV
//--------------------------------------------------------------------
void Freq_Extraction(float* InputX, float* InputY, uint16_t Type){ //Takes 1.133 seg = 11333000 clock cycles
    int i=0;
    float  Aux1=0, Aux2=0, Aux3=0;
    float* Ptr=InputY;

    if(Type){                               //If Input==PRV

        Ptr=Cubic_Spline(InputX, InputY);
        PRVShift=true;

        EALLOW;
        DMA_CH4_CONTROL_R|=0x9;             //RUN: Enable CH4 PERINTFRC:Force peripheral event from CH4 (OVLP Coeff_A)
        DMA_CH5_CONTROL_R|=0x9;             //RUN: Enable CH5 PERINTFRC:Force peripheral event from CH5 (OVLP Const_B)
        DMA_CH6_CONTROL_R|=0x9;             //RUN: Enable CH6 PERINTFRC:Force peripheral event from CH6 (OVLP S)
        EDIS;

        Ptr = PSD_Periodogram(Ptr);         //freq_res=1/(Ts*NFFT)
        for(i=1;i<101;i++){                 //Resolution=8[Hz]/2048
            if(i<11){
                Aux1+=Ptr[i];
            }
            else if(i<39){
                    Aux2+=Ptr[i];
                }
                else{
                    Aux3+=Ptr[i];
                }
        }
        Feat_Val.PRV_VLF=Aux1/10;           //VLF: 0.0039062 - 0.0390625
        Feat_Val.PRV_LF=Aux2/28;            // LF: 0.0429687 - 0.1484375
        Feat_Val.PRV_HF=Aux3/62;            // HF: 0.1523437 - 0.3906250
        Feat_Val.PRV_LF_HF=Feat_Val.PRV_LF/Feat_Val.PRV_HF;
    }
    else{                                   //If Input==SCR
        Ptr = PSD_Periodogram(Ptr);         //freq_res=1/(Ts*NFFT)
        SCRShift=true;
        for(i=11;i<33;i++){                 //Resolution=32[Hz]/2048
            Aux1+=Ptr[i];
        }
        Feat_Val.EDA_HF=Aux1/22;            //HF: 0.171875 - 0.5
    }
}
