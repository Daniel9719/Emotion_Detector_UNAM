/*
 * PSD_Periodogram.c
 *
 *  Created on: 24/01/2021
 *      Author: danie
 */
#include <Freq_Extraction/Cubic_Spline.h>
#include <Freq_Extraction/PSD_Burg.h>

float FFT_R[NFFT]={0};
float PSD[NFFT]={0};

extern float* fft_float(float* ,uint16_t);

//--------------------------------------------------------------------
//%%%%%%%%%%    PSD NON PARAMETRIC PERIODOGRAM  %%%%%%%%%%%%%
//    float Ptr: Pointer to array with data input
//return float*: Pointer to Periodogram PSD array
//--------------------------------------------------------------------
float* PSD_Periodogram(float* Ptr){
    uint16_t k;
    float* PSDpt;

    PSDpt = fft_float(Ptr, NFFT);
    for(k=0;k<101;k++){
        PSDpt[k] = 10*log10(PSDpt[k]/((float)(NFFT)*1.5));      //Origin of 1.5 constant is unknown but gives same result as MATLAB
    }
    return PSDpt;
}

