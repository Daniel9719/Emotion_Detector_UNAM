#include "Conditioning/Coef.h"
#include "Conditioning/FIR_filter.h"
#include <stdint.h>

#define N 101 //Number of coefficients
#define order 201 //FIR order

extern int16_t firFilter(int16_t,int16_t,int16_t*, int16_t*); //(sample,Number of coefficients, Coefficients address, buffer's address)
extern float conv(int16_t*); //Int16 to float

int16_t xb_EDA[order];
int16_t xb_PPG[order];

float FIR_EDA(int16_t x){ //EDA's filter with cut frequencies of 0.04 to 1 Hz
    int16_t y_int;
    float y;
    y_int=firFilter(x,N,coef_FIR_EDA,xb_EDA);
    y=conv(&y_int);
    return y;
}

float FIR_PPG(int16_t x){ //PPG's filter with cut frequencies of 0.3 to 10 Hz
    int16_t y_int;
    float y;
    y_int=firFilter(x,N,coef_FIR_PPG,xb_PPG);
    y=conv(&y_int);
    return y;
}
