/*
 * Freq_Extraction.c
 *
 *  Created on: 10/01/2021
 *      Author: danie
 */
#include <driverlib/cpu.h>

#include "Char_Extraction/PSD_Periodogram.h"
#include "Char_Extraction/Cubic_Spline.h"

//#pragma DATA_SECTION(Chars_Val2, "CPU2_TO_CPU1");

struct Characteristics_Value2{
    float PRV_LF_HF;
    float PRV_VLF;
    float PRV_LF;
    float PRV_HF;
    float EDA_LF;
    float EDA_HF;
} Chars_Val2;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    FREQUENCY CHARS ESTIMATION     %%%%%%%%%%%%%%%%%
// float* InputX: Pointer to data input X
// float* InputY: Pointer to data input Y
//uint16_t Type: (0) EDA (1) PRV
//--------------------------------------------------------------------
void Freq_Extraction(float* InputX, float* InputY, uint16_t Type){
    int i=0;
    float  Aux1=0, Aux2=0, Aux3=0;
    float* Ptr=InputY;

    EALLOW;
    DMA_CH1_CONTROL_R|=0x8;                 //PERINTFRC:Force peripheral event from CH1 (Clean PSD)
    EDIS;

    if(Type){                           //If Input==PRV
        Ptr=Cubic_Spline(InputX, InputY);
        EALLOW;
        DMA_CH2_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH2 (OVLP Gauss)
        DMA_CH3_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH3 (OVLP d)
        DMA_CH4_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH4 (OVLP S)
        EDIS;
    }
    if(Type){                           //If Input==PRV
        Ptr = PSD_Periodogram(Ptr);               //freq_res=1/(Ts*NFFT)
        for(i=1;i<101;i++){              //Resolution=8[Hz]/2048
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
        Chars_Val2.PRV_VLF=Aux1/10;      //VLF: 0.0039062 - 0.0390625
        Chars_Val2.PRV_LF=Aux2/28;       // LF: 0.0429687 - 0.1484375
        Chars_Val2.PRV_HF=Aux3/62;       // HF: 0.1523437 - 0.3906250
        Chars_Val2.PRV_LF_HF=Chars_Val2.PRV_LF/Chars_Val2.PRV_HF;
    }
    else{                               //If Input==EDA
        Ptr = PSD_Periodogram(Ptr);               //freq_res=1/(Ts*NFFT)
        for(i=3;i<33;i++){             //Resolution=32[Hz]/2048
            if(i<11){
                Aux1+=Ptr[i];
            }
            else{
                Aux2+=Ptr[i];
            }
        }
        Chars_Val2.EDA_LF=Aux1/8;       // LF: 0.046875 - 0.15625
        Chars_Val2.EDA_HF=Aux2/22;      // HF: 0.171875 - 0.5
    }
}
