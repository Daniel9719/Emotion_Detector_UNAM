/*
 * Cubic_Spline.c
 *
 *  Created on: 02/01/2021
 *      Author: danie
 */
#include <driverlib/cpu.h>
#include "Char_Extraction/Cubic_Spline.h"

extern float absf(float);
extern volatile uint16_t CS_UpN, CS_LowN, CS_OVLP;
extern volatile float CS_LowAcum, CS_UpAcum, CS_UpLim, CS_LowLim; //Quizas Low Lim Const

//float h[N-1];
float Gauss[N-2];
float d[N-2];
float S[N];
float CubSpl[lenCS];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    CUBIC SPLINE INTERPOLATION     %%%%%%%%%%%%%%%%%
//     float* h: Pointer to array with X data
//     float* Y: Pointer to array with Y data
//return float*: Pointer to array with interpolated signal
//--------------------------------------------------------------------
float* Cubic_Spline(float* h, float* Y){
    float w;
    int16_t i,j;
    float WD=256.0;      //64[s] o 16[s]
    float tq=0.125;
    float Thrs, Aux, A, B, C, D;

    //Matrix construction based on Cubic Spline coefficient parameters (eq. 3.17 Gerald, Wheatley)
    for(i=CS_LowN;i<CS_UpN;i++){
        if(i>=2){     // from 0 to N-3
            Gauss[i-2]=2*(h[i-2]+h[i-1]);
            d[i-2]=6*((Y[i]-Y[i-1])/h[i-1]-(Y[i-1]-Y[i-2])/h[i-2]);
            //1st Step of Gauss Elimination
            if(i>=3){
                w=h[i-2]/Gauss[i-3];
                Gauss[i-2]=Gauss[i-2]-w*h[i-2];
                d[i-2]=d[i-2]-w*d[i-3];
            }
        }
    }

    //Conditions for interpolation process
    CS_UpAcum-=WD;
    Thrs=h[CS_UpN-2]-CS_UpAcum;
    j=lenCS-1;

    //2nd step of Gauss elimination method to obtain A,B,C & D parameters
    for(i=CS_UpN-2;i>-1;i--){
        if(i==CS_UpN-2){
            S[i]=d[i-1]/Gauss[i-1];
        }
        else if(i>0){
            Aux=(d[i-1]-h[i]*S[i+1])/Gauss[i-1];
            //Stop condition in case of convergence of new S results from previous S results
            if(absf(absf(Aux)-absf(S[i-CS_OVLP]))<0.001){ break; }
            S[i]=Aux;
        }
        A=(S[i+1]-S[i])/(6*h[i]);
        B=S[i]/2;
        C=(Y[i+1]-Y[i])/h[i]-(2*h[i]*S[i]+h[i]*S[i+1])/6;
        D=Y[i];
        //Interpolation process
        while(Thrs>=0 && j>=0){
            CubSpl[j]=A*(Thrs*Thrs*Thrs)+B*(Thrs*Thrs)+C*(Thrs)+D;
            Thrs=Thrs-tq;
            j--;
        }
//        if(Thrs<0 && j==0){
//            CubSpl[j]=A*(Thrs*Thrs*Thrs)+B*(Thrs*Thrs)+C*(Thrs)+D;
//        }
        Thrs=h[i-1]+Thrs;
    }

    //Estimation of global parameters for the Overlapping (CS_OVLP) process
    i=CS_LowAcum==0?0:1;
    while(CS_LowAcum<CS_LowLim){            //Analizar segunda secuencia
        CS_LowAcum+=h[i];
        i++;
    }
    CS_OVLP=i-1;
    CS_LowAcum-=CS_LowLim;

    CS_UpN-=CS_OVLP;
    DMA_Channels_Config(CS_OVLP, CS_UpN);
    CS_LowN=CS_UpN;

    CS_UpLim=15.0;              //Quizas poner en otro lado

    return &CubSpl[0];
}

void DMA_Channels_Config(uint16_t BegAddr, uint16_t Size){
    Size-=3;
    Size=Size<<1;
    EALLOW;

    DMA_CH2_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH2_SRCBEGADDRSHADOW_R=(uint32_t)(&Gauss[BegAddr]);
    DMA_CH2_SRCADDRSHADOW_R=(uint32_t)(&Gauss[BegAddr]);

    DMA_CH3_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH3_SRCBEGADDRSHADOW_R=(uint32_t)(&d[BegAddr]);
    DMA_CH3_SRCADDRSHADOW_R=(uint32_t)(&d[BegAddr]);

    DMA_CH4_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH4_SRCBEGADDRSHADOW_R=(uint32_t)(&S[BegAddr+1]);
    DMA_CH4_SRCADDRSHADOW_R=(uint32_t)(&S[BegAddr+1]);

    EDIS;
}
