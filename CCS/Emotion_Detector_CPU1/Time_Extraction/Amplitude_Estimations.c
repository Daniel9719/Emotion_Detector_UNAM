#include <stdbool.h>
#include <stdint.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

void Amplitude_Estimations(float* Amp, int16_t numSCR){
    float sdAmp = 0, AmplSCR = 0;
    uint16_t i = 0;

    for(i=0; i<numSCR; i++){
        sdAmp += Amp[i]*Amp[i];
        AmplSCR += Amp[i];
    }
    sdAmp = (sdAmp - (AmplSCR*AmplSCR)/numSCR)/(numSCR-1);

    Feat_Val.sdAmp = __sqrt(sdAmp);
    Feat_Val.AmpSCR = AmplSCR/numSCR;
    Feat_Val.NumSCR = numSCR;

    Send_Feature(NumSCR);
    Send_Feature(AmpSCR);
    Send_Feature(sdAmpl);
}
