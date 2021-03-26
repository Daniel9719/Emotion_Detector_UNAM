#ifndef __FIR_FILTER_H__
#define __FIR_FILTER_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    FILTERS FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//Filter of EDA with cut frequencies of 0.095 to 2.16 Hz (SCR), fs=32 Hz
//filter of PPG with cut frequencies of 0.4 to 3.58 Hz, fs=128 Hz

//int16_t x: Sample of PPG or EDA
//--------------------------------------------------------------------

int16_t FIR_EDA(int16_t x);
int16_t FIR_PPG(int16_t x);

#ifdef __cplusplus
}
#endif // extern "C"

#endif //end of __FIR_FILTER_H__ definition

//
// End of file
//
