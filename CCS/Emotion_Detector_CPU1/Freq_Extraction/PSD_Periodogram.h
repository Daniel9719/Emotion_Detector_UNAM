/*
 * PSD_Periodogram.h
 *
 *  Created on: 24/01/2021
 *      Author: danie
 */

#ifndef FREQ_EXTRACTION_PSD_PERIODOGRAM_H_
#define FREQ_EXTRACTION_PSD_PERIODOGRAM_H_

#include <stdint.h>
#include <math.h>
#include <tms320f28379d.h>

#define NFFT 2048

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    PDS FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
float* PSD_Periodogram(float* Ptr);


#endif /* FREQ_EXTRACTION_PSD_PERIODOGRAM_H_ */
