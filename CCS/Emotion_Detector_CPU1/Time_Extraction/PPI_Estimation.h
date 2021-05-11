/*
 * PPI_Estimation.h
 *
 *  Created on: 12/02/2021
 *      Author: becam
 */

#ifndef PPI_ESTIMATION_H_
#define PPI_ESTIMATION_H_

#define CS_UpLim 256.0

#include <stdint.h>
#include <stdbool.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    PPI ESTIMATION FUNCTION   %%%%%%%%%%%%%%%
//--------------------------------------------------------------------

bool PPI_Estimation(int x_PPG, float* Y, float* X);

#endif /* PPI_ESTIMATION_H_ */

