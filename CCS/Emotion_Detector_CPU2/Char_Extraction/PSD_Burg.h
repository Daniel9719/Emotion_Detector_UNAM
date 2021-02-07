/*
 * PDS_Burg.h
 *
 *  Created on: 04/01/2021
 *      Author: danie
 */

#ifndef CHAR_EXTRACTION_PSD_BURG_H_
#define CHAR_EXTRACTION_PSD_BURG_H_

#include <stdint.h>
#include <math.h>
#include <tms320f28379d.h>

#define NFFT 2048
#define ARorder 50

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    PDS FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
float ARBurg(float* X, uint16_t order, uint16_t signal);
float* AR2PSD(float rho, float Ts);

#endif /* CHAR_EXTRACTION_PSD_BURG_H_ */
