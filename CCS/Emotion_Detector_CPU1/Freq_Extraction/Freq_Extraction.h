/*
 * Freq_Extraction.h
 *
 *  Created on: 11/01/2021
 *      Author: danie
 */

#ifndef FREQ_EXTRACTION_FREQ_EXTRACTION_H_
#define FREQ_EXTRACTION_FREQ_EXTRACTION_H_

#define PRVSig 1
#define EDASig 0

#include <stdint.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    FREQUENCY EXTRACTION FUNCTIONS    %%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Freq_Extraction(float* InputX, float* InputY, uint16_t Type);

#endif /* FREQ_EXTRACTION_FREQ_EXTRACTION_H_ */
