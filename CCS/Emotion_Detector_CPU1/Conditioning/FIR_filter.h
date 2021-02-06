#ifndef __FIR_FILTER_H__
#define __FIR_FILTER_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    FILTERS FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//EDA's filter with cut frequencies of 0.16 to 2.1 Hz (SCR), fs=32 Hz
//PPG's filter with cut frequencies of 0.6 to 3 Hz, fs=128 Hz

//int16_t x: Sample of PPG or EDA
//--------------------------------------------------------------------

float FIR_EDA(int16_t x);
float FIR_PPG(int16_t x);

#ifdef __cplusplus
}
#endif // extern "C"

#endif //end of __FIR_FILTER_H__ definition

//
// End of file
//
