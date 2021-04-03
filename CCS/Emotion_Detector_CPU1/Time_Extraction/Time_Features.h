/*
 * Time_Features.h
 *
 *  Created on: 12/02/2021
 *      Author: becam
 */

#ifndef TIME_FEATURES_H_
#define TIME_FEATURES_H_

#include <stdint.h>
#include <stdbool.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    TIME FEATURES EXTRACTION FUNCTION    %%%%%%%%%%%%%%%
//--------------------------------------------------------------------

void Time_Features(float* PPI, uint16_t sum_flg);

#endif /* TIME_FEATURES_H_ */
