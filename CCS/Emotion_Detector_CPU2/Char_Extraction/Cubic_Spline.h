/*
 * Cubic_Spline.h
 *
 *  Created on: 05/01/2021
 *      Author: danie
 */

#ifndef CHAR_EXTRACTION_CUBIC_SPLINE_H_
#define CHAR_EXTRACTION_CUBIC_SPLINE_H_

#include <stdint.h>
#include <tms320f28379d.h>

#define N 853
//#define N 11
#define lenCS 2048

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CUBIC SPLINE FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
float* Cubic_Spline(float* h, float* Y);
void DMA_Channels_Config(uint16_t BegAddr, uint16_t Size);

#endif /* CHAR_EXTRACTION_CUBIC_SPLINE_H_ */
