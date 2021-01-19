/*
 * PSD_Burg.c
 *
 *  Created on: 03/01/2021
 *      Author: danie
 */
#include<Char_extraction/PSD_Burg.h>
#include<Char_extraction/Cubic_Spline.h>

//float AR[ARorder];
float ef[1024]={0};
float eb[1024]={0};
float FFT_R[NFFT]={0};
//float FFT_I[NFFT];
float PSD[NFFT]={0};

extern float* fft_float(float* ,uint16_t);

//--------------------------------------------------------------------
//%%%%%%%%   AR COEFFICIENTS ESTIMATION USING BURG'S METHOD   %%%%%%%%
//       float* X: Pointer to array with input data
// uint16_t order: Order number for the AR estimation (up to order 50)
//uint16_t signal: (0) EDA (1) PRV
//   return float: Value of rho
//--------------------------------------------------------------------
float ARBurg(float* X, uint16_t order, uint16_t Type){
    uint16_t n,k, khalf;
    float num, den, rho=0, temp, Nf, kp, new_rho, aux;
    uint16_t Ni;

    Ni = Type? 512:1024;              //If Signal (1) PRV (0) EDA
//    Ni = Type? 11:1024;
    for(n=0;n<Ni;n++){
        eb[n]=X[n];
        ef[n]=X[n];
        rho += X[n]*X[n];
    }

    Nf = (float)(Ni);
    den = rho*2;
    rho /= Nf;
    temp = 1.0;

    while(DMA_CH1_CONTROL_R&0x800){}       //While CH1 transfer isn't complete (PSD!=0)

    //AR coeffitients estimation
    for(k=0;k<order;k++){
        num=0;
        for(n=k+1;n<Ni;n++){
            num += ef[n]*eb[n-1];
        }
        // Calculate the next order reflection coefficient
        den = temp*den-(ef[k]*ef[k])-(eb[Ni-1]*eb[Ni-1]);
        kp = -2.0*num/den;
        temp = 1.0-(kp*kp);
        new_rho = temp*rho;
        rho = new_rho;
        PSD[k+1] = kp;
        if(k!=0){
            //Update the AR coefficients
            khalf = (k+1)>>1;
            for(n=0;n<khalf;n++){
                aux = PSD[n+1];
                PSD[n+1] = aux + kp*PSD[k-n];
                if(n!=k-n-1){
                    PSD[k-n] = PSD[k-n]+kp*aux;
                }
            }
        }
        //Update the prediction errors eb & ef
        for(n=Ni-1;n>k;n--){
            aux = ef[n];
            ef[n] = aux+kp*eb[n-1];
            eb[n] = eb[n-1]+kp*aux;
        }
    }
    return rho;
}

//--------------------------------------------------------------------
//%%%%%%%%%%    AR PARAMETRIC POWER DENSITY SPECTRUM     %%%%%%%%%%%%%
//    float rho: Value of parameter rho
//      float T: Sampling period form the signal
//return float*: Pointer to Burg PSD array
//--------------------------------------------------------------------
float* AR2PSD(float rho, float Ts){
    uint16_t k;
    float* PSDpt;
    PSD[0] = 1.0;
    PSDpt = fft_float(PSD, NFFT);               //freq_res=1/(Ts*NFFT)
    for(k=0;k<101;k++){
        PSDpt[k] = 10*log10((rho*Ts*2)/PSDpt[k]);
    }
    return PSDpt;
}

