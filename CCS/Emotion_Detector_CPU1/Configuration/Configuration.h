/*
 * Configuration.h
 *
 *  Created on: 08/12/2020
 *      Author: Daniel Ortiz Torres
 */

#ifndef CONFIGURATION_H_
#define CONFIGURATION_H_

#include <stdint.h>
#include <tms320f28379d.h>

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CONFIGURATION FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Init_EmotBuff(void);
void Emotion_Write(void);
void TxVars(uint16_t Number);
void VariablesMap(uint16_t REG_ADDR, uint16_t Data);

#endif /* CONFIGURATION_H_ */
