/*
 * MergeSort.h
 *
 *  Created on: 16/02/2021
 *      Author: becam
 */

#ifndef MERGESORT_H_
#define MERGESORT_H_

#include <stdint.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%    SORT AND MERGE FUNCTIONS   %%%%%%%%%%%%%%%
//--------------------------------------------------------------------


void MergeSort(float* Amp, int l, int r);
void Merge(float Amp, int l, int m, int r);


#endif /* MERGESORT_H_ */
