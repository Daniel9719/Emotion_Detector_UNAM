#include <stdbool.h>
#include <stdint.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

float Rise_Time_Mean(float* scr, float Amp, int16_t numSCR, bool rdy){
    static float mTL = 0;
    int16_t indx_10 = -1, indx_90 = 0, i = 0;
    float p_10 = 0, p_90 = 0;

    if(rdy){
        for(i=0; i<numSCR; i++){
           Feat_Val.mTL += scr[i];
        }
        Feat_Val.mTL = Feat_Val.mTL/numSCR;
    }
    else{
        p_10 = Amp*0.1;
        p_90 = Amp*0.9;

        for(i=0; i < 96; i++){
            if(scr[i] > p_90){
                if((scr[i] - p_90) < (p_90 - scr[i-1])){
                    indx_90 = i;
                }
                else{
                    indx_90 = i - 1;
                }
                mTL = (indx_90 - indx_10)/32.0;
                return mTL;
            }
            else if(scr[i] > p_10 && indx_10 == -1){
                if((scr[i] - p_10) < (p_10 - scr[i-1])){
                    indx_10 = i;
                }
                else{
                    indx_10 = i - 1;
                }
            }
        }
    }
}
