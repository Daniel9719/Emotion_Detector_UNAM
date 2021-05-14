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

#define FEAT_LENGTH 21
#define Q16 65536.0
#define Q28 268435456.0

struct Features_Asignation{
    uint16_t PRV[4];
    uint16_t EDA[4];
};

struct Features_Value{
    float pNN50;
    float NN50;
    float PPImed;
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
    float EDA_HF;
};

enum Features_Labels {ALL=0x0, pNN50=0x1, NN50=0x2, PPImed=0x4, SDNN=0x8,
                      RMSSD=0x10, SD1_SD2=0x20, LF_HF=0x40, VLF=0x80,
                      PRV_LF=0x100 ,PRV_HF=0x200 ,SD1=0x400 ,SD2=0x800,
                      NumSCR=0x1000 ,AmpSCR=0x2000 ,mTL=0x4000 ,sdAmpl=0x8000,
                      ctl25=0x10000 ,ctl50=0x20000 ,ctl75=0x40000 ,ctl90=0x80000 ,
                      EDA_HF=0x100000};

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%    CONFIGURATION FUNCTIONS   %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Write_Emotion(void);
void Send_Feature(enum Features_Labels Number);
void VariablesMap(uint16_t REG_ADDR, uint16_t Data);

#endif /* CONFIGURATION_H_ */
