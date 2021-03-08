#include "Coef.h"
#include "FIR_filter.h"
#include <stdint.h>

#define N 101 //Number of coefficients
#define order 201 //FIR order

//%%%%%%%%%%%%%%%%%%    FILTERS VARIABLES    %%%%%%%%%%%%%%%%%%

int16_t xb_EDA[order];
int16_t xb_PPG[order];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    ASM FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
extern int16_t firFilter(int16_t sample,int16_t Num_coef,int16_t* coef_Adress, int16_t* buffer_Adress);

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    FILTERS FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//EDA's filter with cut frequencies of 0.16 to 2.1 Hz (SCR), fs=32 Hz
//PPG's filter with cut frequencies of 0.6 to 3.7 Hz, fs=128 Hz

//int16_t x: Sample of PPG or EDA
//--------------------------------------------------------------------

int16_t FIR_EDA(int16_t x){
    int16_t y;
    y=firFilter(x,N,coef_FIR_EDA,xb_EDA);
    return y;
}

int16_t FIR_PPG(int16_t x){
    int16_t y;
    y=firFilter(x,N,coef_FIR_PPG,xb_PPG);
    return y;
}
