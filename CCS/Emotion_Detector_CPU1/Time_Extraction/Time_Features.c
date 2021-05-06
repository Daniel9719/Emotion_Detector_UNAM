#include <stdint.h>
#include <stdbool.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

//Intrinsic
float __sqrt(float scr);

void TFeat_PreEstimation(float* PPI, int* num_PPI, float* pre_NN50, float* sum_PPI, float* pre_SDNN, float* pre_RMSSD){

    //Number of interval differences of successive PPI greater than 50ms
    if(PPI[0] - PPI[1] > 0.050 || PPI[0] - PPI[1]   < -0.050){
       (*pre_NN50)++;
    }

    *sum_PPI += PPI[0];

    *pre_SDNN += PPI[0]*PPI[0];

    *pre_RMSSD += (PPI[1] - PPI[0])*(PPI[1] - PPI[0]);

    (*num_PPI)++;
}

void TFeat_Estimation(float* PPI, int* num_PPI, float* pre_NN50, float* sum_PPI,  float* pre_SDNN, float* pre_RMSSD){
    //NN50 divided by the total number of PPI
    Feat_Val.NN50 = *pre_NN50;

    Feat_Val.pNN50 = *pre_NN50/((float)*num_PPI);

    *sum_PPI += PPI[0];

    //Mean
    Feat_Val.PPImed = *sum_PPI/(*num_PPI + 1);

    //Root mean square
    Feat_Val.RMSSD= __sqrt(*pre_RMSSD/(*num_PPI));

    *pre_SDNN += PPI[0]*PPI[0];

    *pre_SDNN = (*pre_SDNN - (((*sum_PPI)*(*sum_PPI))/(*num_PPI+1)))/(*num_PPI);

    //Standard deviation
    Feat_Val.SDNN = __sqrt(*pre_SDNN);

    Send_Feature(0x00);
    Send_Feature(0x01);
    Send_Feature(0x02);
    Send_Feature(0x03);
    Send_Feature(0x04);

    *num_PPI = 0;
}

void Time_Features(float* PPI, uint16_t sum_flg){
    //Time domain features
    static float sum1_PPI = 0, pre_NN50_1 = 0, pre_RMSSD1 = 0, pre_SDNN1 = 0;
    static float sum2_PPI = 0, pre_NN50_2 = 0, pre_RMSSD2 = 0, pre_SDNN2 = 0;
    static float sum3_PPI = 0, pre_NN50_3 = 0, pre_RMSSD3 = 0, pre_SDNN3 = 0;
    static float sum4_PPI = 0, pre_NN50_4 = 0, pre_RMSSD4 = 0, pre_SDNN4 = 0;
    static int num_PPI1 = 0, num_PPI2 = 0, num_PPI3 = 0, num_PPI4 = 0, sum_count = 0;

    if(sum_flg > 3){

        if(sum_count == 0){
          TFeat_Estimation(PPI, &num_PPI1, &pre_NN50_1, &sum1_PPI, &pre_SDNN1, &pre_RMSSD1);
          sum_count++;
        }
        else if(sum_count == 1){
          TFeat_Estimation(PPI, &num_PPI2, &pre_NN50_2, &sum2_PPI, &pre_SDNN2, &pre_RMSSD2);
          sum_count++;
        }
        else if(sum_count == 2){
          TFeat_Estimation(PPI, &num_PPI3, &pre_NN50_3, &sum3_PPI, &pre_SDNN3, &pre_RMSSD3);
          sum_count++;
        }
        else{
          TFeat_Estimation(PPI, &num_PPI4, &pre_NN50_4, &sum4_PPI, &pre_SDNN4, &pre_RMSSD4);
          sum_count = 0;
        }
    }
    else{

        TFeat_PreEstimation(PPI, &num_PPI1, &pre_NN50_1, &sum1_PPI, &pre_SDNN1, &pre_RMSSD1);

        if(sum_flg >= 1){
            TFeat_PreEstimation(PPI, &num_PPI2, &pre_NN50_2, &sum2_PPI, &pre_SDNN2, &pre_RMSSD2);
        }

        if(sum_flg >= 2){
            TFeat_PreEstimation(PPI, &num_PPI3, &pre_NN50_3, &sum3_PPI, &pre_SDNN3, &pre_RMSSD3);
        }

        if(sum_flg >= 3){
            TFeat_PreEstimation(PPI, &num_PPI4, &pre_NN50_4, &sum4_PPI, &pre_SDNN4, &pre_RMSSD4);
        }
    }
}
