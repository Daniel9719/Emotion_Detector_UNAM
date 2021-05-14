#include <stdint.h>

#include "Time_Extraction/Amplitude_Estimations.h"
#include "Time_Extraction/Rise_Time_Mean.h"
#include "Time_Extraction/Quantiles.h"
#include "Time_Extraction/MergeSort.h"

void SCR_Detection(int16_t x_SCR, uint16_t flag){
    static uint16_t NumSCR = 0, k = 0;
    uint16_t i = 0, j = 0;
    static int16_t SCR_data[2];
    static float det_scr[96];
    static bool SCR_flg = false;
    float Amp[32], mTL[32];

    SCR_data[1] = x_SCR;

    //First zero crossing
    if((SCR_data[1] > 0 && SCR_data[0] < 0) || SCR_flg){
        SCR_flg = true;
        det_scr[k] = (float)SCR_data[1];
        if(SCR_data[1] - SCR_data[0] < 0){
            Amp[NumSCR] = (float)SCR_data[0];
            mTL[NumSCR] = Rise_Time_Mean(det_scr, Amp[NumSCR], NumSCR, flag);
            NumSCR++;
            SCR_flg = false;
            k = 0;
        }
        k++;
    }

    SCR_data[0] = x_SCR;

    if(flag>3){
        MergeSort(Amp, 0, NumSCR-1);
        for(i=0; i<NumSCR; i++){
            if(Amp[i] > 0.1*Amp[NumSCR-1]){
                Amp[j] = Amp[i];
                mTL[j] = mTL[i];
                j++;
            }
        }
        NumSCR = j;
        Amplitude_Estimations(Amp, NumSCR);
        Rise_Time_Mean(mTL, Amp[NumSCR], NumSCR, flag);
        Quantiles(Amp, NumSCR);
    }
}
