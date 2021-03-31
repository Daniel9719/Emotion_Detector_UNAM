/*
 * Cubic_Spline.c
 *
 *  Created on: 02/01/2021
 *      Author: danie
 */
#include <driverlib/cpu.h>
#include <Freq_Extraction/Cubic_Spline.h>

extern float absf(float);
volatile int16_t CS_UpN=0, CS_LowN=0, CS_SHIFT=0;
volatile float CS_LowAcum=0, CS_UpAcum=0;

//float h[N-1];
float Coeff_A[N-2];
float Const_B[N-2];
float S[N];
float CubSpl[lenCS];

extern float PRV_h[];
extern float PRV_y[];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    CUBIC SPLINE INTERPOLATION     %%%%%%%%%%%%%%%%%
//     float* h: Pointer to array with X data
//     float* Y: Pointer to array with Y data
//return float*: Pointer to array with interpolated signal
//--------------------------------------------------------------------
float* Cubic_Spline(float* h, float* Y){  //Takes 0.2198 seg = 2198528 clock cycles
    float w;
    int16_t i,j;
    float tq=0.125;      //Interpolation to signal of 8 Hz
    float Thrs, Aux, A, B, C, D;

    //Conditions for interpolation process
    CS_UpAcum-=CS_UpLim;
    Thrs=h[CS_UpN-1]-CS_UpAcum-tq;
    j=lenCS-1;

    //Matrix construction based on Cubic Spline coefficient parameters (eq. 3.17 Gerald, Wheatley)
    for(i=CS_LowN;i<=CS_UpN;i++){
        if(i>=2){     // from 0 to N-3
            Coeff_A[i-2]=2*(h[i-2]+h[i-1]); //aumentar en un i a h
            Const_B[i-2]=6*((Y[i]-Y[i-1])/h[i-1]-(Y[i-1]-Y[i-2])/h[i-2]);
            //1st Step of Gauss Elimination
            if(i>=3){
                w=h[i-2]/Coeff_A[i-3];
                Coeff_A[i-2]=Coeff_A[i-2]-w*h[i-2];
                Const_B[i-2]=Const_B[i-2]-w*Const_B[i-3];
            }
        }
    }

    CS_LowN=CS_LowAcum==0? 0:1;

    //2nd step of Gauss elimination method to obtain A,B,C & D parameters
    for(i=CS_UpN-1;i>-1;i--){
        if(i==CS_UpN-1){
            S[i]=Const_B[i-1]/Coeff_A[i-1];
        }
        else if(i>0){
            Aux=(Const_B[i-1]-h[i]*S[i+1])/Coeff_A[i-1];
            //Stop condition in case of convergence of new S results from previous S results
            if(absf(absf(Aux)-absf(S[i-CS_SHIFT]))<(0.01*absf(S[i-CS_SHIFT]))){ break; }
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
        if(i>0){
            Thrs=h[i-1]+Thrs;
        }
        if(Thrs<0 && j>=0){
            while(Thrs>=-Y[i] && j>=0 && j<13){
                CubSpl[j]=A*(Thrs*Thrs*Thrs)+B*(Thrs*Thrs)+C*(Thrs)+D;
                Thrs=Thrs-tq;
                j--;
                CS_LowAcum=Y[i];
            }
        }
    }

    //Estimation of global parameters for the Shifting (CS_SHIFT) process
    while(CS_LowAcum<CS_LowLim){
        CS_LowAcum+=h[CS_LowN];
        CS_LowN++;
    }
    CS_SHIFT=CS_LowN-1;
    CS_LowAcum-=CS_LowLim;

    CS_UpN-=CS_SHIFT;
    DMA_Channels_Config(CS_SHIFT, CS_UpN);
    CS_LowN=CS_UpN;

    return &CubSpl[0];
}

void DMA_Channels_Config(uint16_t BegAddr, uint16_t Size){
    Size=((Size-1)<<1)-1;
    EALLOW;

    DMA_CH1_SRCBEGADDRSHADOW_R=(uint32_t)(&PRV_h[BegAddr]);
    DMA_CH1_SRCADDRSHADOW_R=(uint32_t)(&PRV_h[BegAddr]);

    DMA_CH2_SRCBEGADDRSHADOW_R=(uint32_t)(&PRV_y[BegAddr]);
    DMA_CH2_SRCADDRSHADOW_R=(uint32_t)(&PRV_y[BegAddr]);

    DMA_CH4_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH4_SRCBEGADDRSHADOW_R=(uint32_t)(&Coeff_A[BegAddr]);
    DMA_CH4_SRCADDRSHADOW_R=(uint32_t)(&Coeff_A[BegAddr]);

    DMA_CH5_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH5_SRCBEGADDRSHADOW_R=(uint32_t)(&Const_B[BegAddr]);
    DMA_CH5_SRCADDRSHADOW_R=(uint32_t)(&Const_B[BegAddr]);

    DMA_CH6_TRANSFERSIZE_R=Size;              //Transfer Size=Size+1 bursts per transfer
    DMA_CH6_SRCBEGADDRSHADOW_R=(uint32_t)(&S[BegAddr+1]);
    DMA_CH6_SRCADDRSHADOW_R=(uint32_t)(&S[BegAddr+1]);

    EDIS;
}
