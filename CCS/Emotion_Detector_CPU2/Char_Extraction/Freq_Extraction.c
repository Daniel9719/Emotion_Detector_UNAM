/*
 * Freq_Extraction.c
 *
 *  Created on: 10/01/2021
 *      Author: danie
 */
#include "Char_Extraction/PDS_Burg.h"
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
// float* Input: Pointer to data input
//uint16_t Type: (0) EDA (1) PRV
//--------------------------------------------------------------------
void Freq_Extraction(float* Input, uint16_t Type){
    int i;
    float rho, Aux=0;
    float* Ptr=Input;

    DMA_CH1_CONTROL_R|=0x8;                 //PERINTFRC:Fuerza disparo del evento CH1

    if(Type){                           //If Input==PRV
        Ptr=Cubic_Spline(X, Input);
    }
    rho=ARBurg(Ptr, 50, Type);
    Ptr=AR2PSD(rho, 0.008);

    if(Type){                           //If Input==PRV
        for(i=1;i<100;i++){
            Aux+=Ptr[i];
            Aux+=Ptr[i];
            Aux+=Ptr[i];
        }
        Chars_Val2.PRV_VLF=Aux/10;      //VLF: 0.0039062 - 0.0390625
        Chars_Val2.PRV_LF=Aux/28;       // LF: 0.4296875 - 0.1484375
        Chars_Val2.PRV_HF=Aux/62;       // HF: 0.1523437 - 0.3906250
        Chars_Val2.PRV_LF_HF=Chars_Val2.PRV_LF/Chars_Val2.PRV_LF;
    }
    else{                               //If Input==EDA
        for(i=1;i<100;i++){
            Aux+=Ptr[i];
            Aux+=Ptr[i];
        }
        Chars_Val2.EDA_LF=Aux/28;
        Chars_Val2.EDA_HF=Aux/62;
    }

}
