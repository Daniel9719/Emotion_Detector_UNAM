/*
 * Cubic_Spline.h
 *
 *  Created on: 05/01/2021
 *      Author: danie
 */

#ifndef FREQ_EXTRACTION_CUBIC_SPLINE_H_
#define FREQ_EXTRACTION_CUBIC_SPLINE_H_

#include <stdint.h>
#include <tms320f28379d.h>

#define N 853
#define lenCS 2048
#define CS_UpLim 256.0
#define CS_LowLim 64.0

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CUBIC SPLINE FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
float* Cubic_Spline(float* h, float* Y);
void DMA_Channels_Config(uint16_t BegAddr, uint16_t Size);

#endif /* FREQ_EXTRACTION_CUBIC_SPLINE_H_ */
