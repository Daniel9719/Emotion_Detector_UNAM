#include <stdbool.h>
#include <stdint.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

//Intrinsic
float __sqrt(float scr);

void Amplitude_Estimations(float* Amp, int16_t numSCR){
    static float sdAmp = 0, AmpSCR = 0;
    uint16_t i = 0;

    for(i=0; i<numSCR; i++){
        sdAmp += Amp[i]*Amp[i];
        AmpSCR += Amp[i];
    }
    sdAmp = (sdAmp - (AmpSCR*AmpSCR)/numSCR)/(numSCR-1);

    Feat_Val.sdAmp = __sqrt(sdAmp);
    Feat_Val.AmpSCR = AmpSCR/numSCR;
    Feat_Val.NumSCR = numSCR;
}
