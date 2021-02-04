#ifndef __FIR_FILTER_H__
#define __FIR_FILTER_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

float FIR_EDA(int16_t x); //EDA's filter with cut frequencies of 0.04 to 1 Hz
float FIR_PPG(int16_t x); //PPG's filter with cut frequencies of 0.3 to 10 Hz

#ifdef __cplusplus
}
#endif // extern "C"

#endif //end of __FIR_FILTER_H__ definition

//
// End of file
//
