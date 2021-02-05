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

struct Features_Asignation{
    uint16_t PRV[4];
    uint16_t EDA[4];
};

struct Features_Value{
    float pNN50;
    float NN50;
    float RRmed;
    float SDNN;
    float RMSSD;
    float SD1_SD2;
    float PRV_LF_HF;
    float PRV_VLF;
    float PRV_LF;
    float PRV_HF;
    float SD1;
    float SD2;
    float NumSCR;
    float AmpSCR;
    float mTL;
    float sdAmp;
    float ctl25;
    float ctl50;
    float ctl75;
    float ctl90;
    float EDA_LF;
    float EDA_HF;
};

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CONFIGURATION FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Emotion_Write(void);
void TxVars(uint16_t Number);
void VariablesMap(uint16_t REG_ADDR, uint16_t Data);

#endif /* CONFIGURATION_H_ */
