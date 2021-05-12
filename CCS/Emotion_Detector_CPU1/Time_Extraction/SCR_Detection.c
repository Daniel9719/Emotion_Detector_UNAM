#include <stdint.h>

#include <Amplitude_Estimations.h>
#include <Rise_Time_Mean.h>
#include <Quantiles.h>
#include <MergeSort.h>

void SCR_Detection(int16_t x_SCR, bool rdy){
    static uint16_t NumSCR = 0, k = 0;
    uint16_t i = 0, j = 0;
    static int16_t SCR[2];
    static float det_scr[96];
    static bool SCR_flg = false;
    float Amp[32], mTL[32];

    SCR[1] = x_SCR;

    //First zero crossing
    if((SCR[1] > 0 && SCR[0] < 0) || SCR_flg){
        SCR_flg = true;
        det_scr[k] = (float)SCR[1];
        if(SCR[1] - SCR[0] < 0){
            Amp[NumSCR] = (float)SCR[0];
            mTL[NumSCR] = Rise_Time_Mean(det_scr, Amp[NumSCR], NumSCR, rdy);
            NumSCR++;
            SCR_flg = false;
            k = 0;
        }
        k++;
    }

    SCR[0] = x_SCR;

    if(rdy){
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
        Rise_Time_Mean(mTL, Amp[NumSCR], NumSCR, rdy);
        Quantiles(Amp, NumSCR);
    }
}
