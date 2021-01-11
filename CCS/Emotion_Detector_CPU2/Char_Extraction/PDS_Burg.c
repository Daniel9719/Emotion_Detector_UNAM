/*
 * PDS_Burg.c
 *
 *  Created on: 03/01/2021
 *      Author: danie
 */
#include<Char_extraction/PDS_Burg.h>

//float AR[ARorder];
float ef[1024]={0};
float eb[1024]={0};
float FFT_R[NFFT]={0};
//float FFT_I[NFFT];
float PDS[NFFT]={0};

extern float* fft_float(float* ,uint16_t);

//--------------------------------------------------------------------
//%%%%%%%%%    AR PARAMETERS ESTIMATION USING BURG METHOD    %%%%%%%%%
//       float* X: Pointer to array with input data
// uint16_t order: Order number for the AR estimation (up to order 50)
//uint16_t signal: (0) EDA (1) PRV
//   return float: Value of rho
//--------------------------------------------------------------------
float ARBurg(float* X, uint16_t order, uint16_t Type){
    uint16_t n,k, khalf;
    float num, den, rho=0, temp, Nf, kp, new_rho, aux;
    uint16_t Ni;

    int i;
    Ni = signal? 512:1024;
//    Ni = Type? 11:1024;
    for(i=0;i<Ni;i++){
        eb[i]=PRV[i];
        ef[i]=PRV[i];
    }

    Nf = (float)(Ni);
    for(n=0;n<Ni;n++){
        rho += X[n]*X[n];
    }
    den = rho*2;
    rho /= Nf;
    temp = 1.0;

    while(DMA_CH1_CONTROL_R&0x800){}       //Mientras el TRANSFER del CH1 no sea cero
    while(DMA_PRIORITYSTAT_R&0x7){}         //Mientras el CH1 permanezca activo
    DMA_CH1_CONTROL_R|=0x2;                 //HALT:Pone al canal en Standby al terminar Transfer

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
        PDS[k+1] = kp;
        if(k!=0){
            //Update the AR coefficients
            khalf = (k+1)>>1;
            for(n=0;n<khalf;n++){
                aux = PDS[n+1];
                PDS[n+1] = aux + kp*PDS[k-n];
                if(n!=k-n-1){
                    PDS[k-n] = PDS[k-n]+kp*aux;
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
//float rho: Value of parameter rho
//  float T: Sampling period form the signal
//--------------------------------------------------------------------
void AR2PSD(float rho, float Ts){
    uint16_t k;
    float* PDSpt;
    PDS[0] = 1.0;
    PDSpt = fft_float(PDS, NFFT);               //freq_res=1/(Ts*NFFT)
    for(k=0;k<100;k++){
        PDSpt[k] = 10*log10((rho*Ts*2)/PDSpt[k]);
    }
}


