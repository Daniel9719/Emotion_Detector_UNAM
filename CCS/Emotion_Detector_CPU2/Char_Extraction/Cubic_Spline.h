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

#define N 213
//#define N 11
#define lenCS 512

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CUBIC SPLINE FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Freq_Extraction(float* Input, uint16_t Type);

#endif /* CHAR_EXTRACTION_CUBIC_SPLINE_H_ */
