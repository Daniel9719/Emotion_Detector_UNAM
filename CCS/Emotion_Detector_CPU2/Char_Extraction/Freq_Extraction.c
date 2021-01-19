/*
 * Freq_Extraction.c
 *
 *  Created on: 10/01/2021
 *      Author: danie
 */
#include <Char_Extraction/PSD_Burg.h>
#include "Char_Extraction/Cubic_Spline.h"

#pragma DATA_SECTION(Chars_Val2, "CPU2_TO_CPU1");

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
    float rho=0, Aux1=0, Aux2=0, Aux3=0;
    float LowAcum=0;
    float* Ptr=InputY;
    static uint16_t LowN=0;

    DMA_CH1_CONTROL_R|=0x8;                 //PERINTFRC:Force peripheral event from CH1 (Clean PSD)

    if(Type){                           //If Input==PRV
        Ptr=Cubic_Spline(InputX, InputY);
        DMA_CH2_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH2 (OVLP Gauss)
        DMA_CH3_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH3 (OVLP h)
        DMA_CH4_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH4 (OVLP d)
        DMA_CH5_CONTROL_R|=0x8;             //PERINTFRC:Force peripheral event from CH5 (OVLP S)
    }
    rho=ARBurg(Ptr, 80, Type);
    if(Type){                           //If Input==PRV
        Ptr=AR2PSD(rho, 0.008);
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
        Chars_Val2.PRV_LF=Aux2/28;       // LF: 0.4296875 - 0.1484375
        Chars_Val2.PRV_HF=Aux3/62;       // HF: 0.1523437 - 0.3906250
        Chars_Val2.PRV_LF_HF=Chars_Val2.PRV_LF/Chars_Val2.PRV_LF;
    }
    else{                               //If Input==EDA
        Ptr=AR2PSD(rho, 0.015625);
        for(i=3;i<33;i++){             //Resolution=32[Hz]/2048
            if(i<11){
                Aux1+=Ptr[i];
            }
            else{
                Aux2+=Ptr[i];
            }
        }
        Chars_Val2.EDA_LF=Aux1/8;
        Chars_Val2.EDA_HF=Aux2/22;
    }
}

//void Upper_Counter(void){
//
//    N++;
//}
