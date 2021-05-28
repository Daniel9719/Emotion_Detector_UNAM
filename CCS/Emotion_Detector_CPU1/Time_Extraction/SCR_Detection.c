#include <stdint.h>

#include "Time_Extraction/Amplitude_Estimations.h"
#include "Time_Extraction/Rise_Time_Mean.h"
#include "Time_Extraction/Quantiles.h"
#include "Time_Extraction/MergeSort.h"
#include "Time_Extraction/Bartlett_w.h"

#define N 20

int16_t buff[N];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    ASM FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
extern int16_t convol(int16_t sample,int16_t Num_window, int16_t* bartlett_Add, int16_t* buffer_Add);

void SCR_Detection(int16_t x_SCR, uint16_t flag){
    static uint16_t NumSCR = 0, k = 0;
    uint16_t i = 0, j = 0;
    static int16_t SCR_data[2];
    static float det_scr[96];
    static bool SCR_flg = false;
    float Amp[32], mTL[32];

    int16_t diff_SCR = 0;
    int16_t EDA[2];

    EDA[1] = x_SCR;
    diff_SCR = EDA[1] - EDA[0];
    EDA[0] = EDA[1];

    SCR_data[1] = convol(diff_SCR, N, w, buff);

    //First zero crossing
    if((SCR_data[1] > 0 && SCR_data[0] < 0) || SCR_flg){
        SCR_flg = true;
        det_scr[k] = (float)SCR_data[1];
        k++;
        if(SCR_data[1] - SCR_data[0] < 0){
            Amp[NumSCR] = (float)SCR_data[0];
            mTL[NumSCR] = Rise_Time_Mean(det_scr, Amp[NumSCR], NumSCR, flag);
            NumSCR++;
            SCR_flg = false;
            k = 0;
        }
    }

    SCR_data[0] = SCR_data[1];

    if(flag>3){
        MergeSort(Amp, 0, NumSCR-1);
        MergeSort(mTL, 0, NumSCR-1);
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
        NumSCR=0;
    }
}
