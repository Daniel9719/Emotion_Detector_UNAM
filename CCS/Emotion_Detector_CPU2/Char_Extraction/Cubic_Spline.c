/*
 * Cubic_Spline.c
 *
 *  Created on: 02/01/2021
 *      Author: danie
 */
#include "Char_Extraction/Cubic_Spline.h"
extern float absf(float);

float h[N-1];
float Gauss[N-2];
float d[N-2];
float S[N];
float CubSpl[lenCS];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%    CUBIC SPLINE INTERPOLATION     %%%%%%%%%%%%%%%%%
//float rho: Value of parameter rho
//  float T: Sampling period form the signal
//--------------------------------------------------------------------
float* Cubic_Spline(float* X, float* Y){
    static float XF,XP;
    float w;
    int16_t i,j;
    float WD=8;
    float tq=0.125;
    float Diff, Thrs, Aux, A, B, C, D;

    for(i=0;i<N;i++){
        XP=XF;
        XF=X[i];
        if(i>=1){
            h[i-1]=XF-XP;
        }
        if(i>=2){     // from 0 to N-3
            Gauss[i-2]=2*(h[i-2]+h[i-1]);
            d[i-2]=6*((Y[i]-Y[i-1])/h[i-1]-(Y[i-1]-Y[i-2])/h[i-2]);
            if(i>=3){
                w=h[i-2]/Gauss[i-3];
                Gauss[i-2]=Gauss[i-2]-w*h[i-2];
                d[i-2]=d[i-2]-w*d[i-3];
            }
        }
    }
    Diff=XF-WD;
    Thrs=h[N-2]-Diff;
    j=lenCS-1;

    for(i=N-2;i>-1;i--){
        if(i==N-2){
            S[i]=d[i-1]/Gauss[i-1];
        }
        else if(i>0){
            Aux=(d[i-1]-h[i]*S[i+1])/Gauss[i-1];
            if((absf(Aux)-absf(S[i]))<0.001){ break; }
            S[i]=Aux;
        }
        A=(S[i+1]-S[i])/(6*h[i]);
        B=S[i]/2;
        C=(Y[i+1]-Y[i])/h[i]-(2*h[i]*S[i]+h[i]*S[i+1])/6;
        D=Y[i];
        while(Thrs>-tq && j>=0){
            CubSpl[j]=A*(Thrs*Thrs*Thrs)+B*(Thrs*Thrs)+C*(Thrs)+D;
            Thrs=Thrs-tq;
            j=j-1;
        }
        Thrs=h[i-1]+Thrs;
    }
    return &CubSpl[j];
}
