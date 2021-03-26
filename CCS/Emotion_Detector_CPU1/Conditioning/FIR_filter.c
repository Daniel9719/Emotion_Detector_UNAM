#include "Coef.h"
#include "FIR_filter.h"
#include <stdint.h>

#define N 101 //Number of coefficients
#define order 201 //FIR order+1

//%%%%%%%%%%%%%%%%%%    FILTERS VARIABLES    %%%%%%%%%%%%%%%%%%

int16_t xb_EDA[order];
int16_t xb_PPG[order];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    ASM FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
extern int16_t firFilter(int16_t sample,int16_t Num_coef,int16_t* coef_Adress, int16_t* buffer_Adress);

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    FILTERS FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//Filter of EDA with cut frequencies of 0.095 to 2.16 Hz (SCR), fs=32 Hz
//filter of PPG with cut frequencies of 0.4 to 3.58 Hz, fs=128 Hz

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
