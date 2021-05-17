/*
 * Quantiles.c
 *
 *  Created on: 15/02/2021
 *      Author: becam
 */
#include <stdint.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

void Quantiles(float* Amp, uint16_t numSCR){
    uint16_t n = 0;

    //--------------------------------------------------------------------
    //%%%%%%%%%%%%%%%    25%   %%%%%%%%%%%%%%%
    //--------------------------------------------------------------------

    n = (int)(numSCR*0.25);

    if(n == (numSCR*0.25)){
        Feat_Val.ctl25 = (Amp[n-1] + Amp[n])/2.0;
    }
    else{
        Feat_Val.ctl25 = Amp[n];
    }

    //--------------------------------------------------------------------
    //%%%%%%%%%%%%%%%    50%   %%%%%%%%%%%%%%%
    //--------------------------------------------------------------------

    n = (int)(numSCR*0.50);

    if(n == (numSCR*0.50)){
        Feat_Val.ctl50 = (Amp[n-1] + Amp[n])/2.0;
    }
    else{
        Feat_Val.ctl50 = Amp[n];
    }

    //--------------------------------------------------------------------
    //%%%%%%%%%%%%%%%    75%   %%%%%%%%%%%%%%%
    //--------------------------------------------------------------------

    n = (int)(numSCR*0.75);

    if(n == (numSCR*0.75)){
        Feat_Val.ctl75 = (Amp[n-1] + Amp[n])/2.0;
    }
    else{
        Feat_Val.ctl75 = Amp[n];
    }

    //--------------------------------------------------------------------
    //%%%%%%%%%%%%%%%    90%   %%%%%%%%%%%%%%%
    //--------------------------------------------------------------------

    n = (int)(numSCR*0.90);

    if(n == (numSCR*0.90)){
        Feat_Val.ctl90 = (Amp[n-1] + Amp[n])/2.0;
    }
    else{
        Feat_Val.ctl90 = Amp[n];
    }

    Send_Feature(ctl25);
    Send_Feature(ctl50);
    Send_Feature(ctl75);
    Send_Feature(ctl90);
}


