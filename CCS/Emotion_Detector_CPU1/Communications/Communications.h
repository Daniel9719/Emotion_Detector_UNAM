/*
 * Communications.h
 *
 *  Created on: 07/12/2020
 *      Author: Daniel Ortiz Torres
 */

#ifndef COMMUNICATIONS_H_
#define COMMUNICATIONS_H_

#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%    COMMUNICATIONS FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
__interrupt void Inter_DMACH3 (void);
__interrupt void Inter_XINT2 (void);
__interrupt void Inter_I2CA (void);
__interrupt void Inter_SCIBRX (void);
void Config_Ports(void);
void Config_SCIB(void);
void Config_I2CA(void);
void Config_DMA(void);

#endif /* COMMUNICATIONS_H_ */
