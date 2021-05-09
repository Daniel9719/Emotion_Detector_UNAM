#include "Configuration/Configuration.h"

#define const1_sd 0.7071067812
#define const2_sd -0.7071067812

extern volatile struct Features_Value Feat_Val;

//Intrinsic
float __sqrt(float scr);

void PFeat_PreEstimation(float* PPI, uint16_t* num_PPI, float* sum_prj_SD1, float* sum_prj_SD2, float* meanSD1, float* meanSD2){
    float prj_SD2 = 0, prj_SD1 = 0;

    prj_SD1 = PPI[0]*const1_sd + PPI[1]*const1_sd;
    prj_SD2 = PPI[0]*const2_sd + PPI[1]*const1_sd;

    //Projection
    *sum_prj_SD1 += (prj_SD1)*(prj_SD1);
    *sum_prj_SD2 += (prj_SD2)*(prj_SD2);

    *meanSD1 += prj_SD1;
    *meanSD2 += prj_SD2;

    (*num_PPI)++;
}

void PFeat_Estimation(uint16_t* num_PPI, float* sum_prj_SD1, float* sum_prj_SD2, float* meanSD1, float* meanSD2){

    Feat_Val.SD1 = (*sum_prj_SD1-(((*meanSD1)*(*meanSD1))/(*num_PPI)))/(*num_PPI-1);
    Feat_Val.SD2 = (*sum_prj_SD2-(((*meanSD2)*(*meanSD2))/(*num_PPI)))/(*num_PPI-1);

    Feat_Val.SD1 = __sqrt(Feat_Val.SD1);
    Feat_Val.SD2 = __sqrt(Feat_Val.SD2);

    //SD1/SD2 ratio
    Feat_Val.SD1_SD2 = (Feat_Val.SD1)/(Feat_Val.SD2);

    Send_Feature(0x05);
    Send_Feature(0x0A);
    Send_Feature(0x0B);

    *sum_prj_SD1 = 0;
    *sum_prj_SD2 = 0;
    *meanSD1 = 0;
    *meanSD2 = 0;

    *num_PPI = 0;
}


void Poincare_Graph(float* PPI, uint16_t sum_flg){

    static float sum1_prj_SD1 = 0, sum1_prj_SD2 = 0, mean1SD1 = 0, mean1SD2 = 0;
    static float sum2_prj_SD1 = 0, sum2_prj_SD2 = 0, mean2SD1 = 0, mean2SD2 = 0;
    static float sum3_prj_SD1 = 0, sum3_prj_SD2 = 0, mean3SD1 = 0, mean3SD2 = 0;
    static float sum4_prj_SD1 = 0, sum4_prj_SD2 = 0, mean4SD1 = 0, mean4SD2 = 0;

    static uint16_t num_PPI1 = 0, num_PPI2 = 0, num_PPI3 = 0, num_PPI4 = 0, sum_count = 0;

    if(sum_flg > 3){

        if(sum_count == 0){
            PFeat_Estimation(&num_PPI1, &sum1_prj_SD1, &sum1_prj_SD2, &mean1SD1, &mean1SD2);
            sum_count++;
        }
        else if(sum_count == 1){
            PFeat_Estimation(&num_PPI2, &sum2_prj_SD1, &sum2_prj_SD2, &mean2SD1, &mean2SD2);
            sum_count++;
        }
        else if(sum_count == 2){
            PFeat_Estimation(&num_PPI3, &sum3_prj_SD1, &sum3_prj_SD2, &mean3SD1, &mean3SD2);
            sum_count++;
        }
        else{
            PFeat_Estimation(&num_PPI4, &sum4_prj_SD1, &sum4_prj_SD2, &mean4SD1, &mean4SD2);
            sum_count = 0;
        }
    }
    else{

        PFeat_PreEstimation(PPI, &num_PPI1, &sum1_prj_SD1, &sum1_prj_SD2, &mean1SD1, &mean1SD2);

        if(sum_flg >= 1){
            PFeat_PreEstimation(PPI, &num_PPI2, &sum2_prj_SD1, &sum2_prj_SD2, &mean2SD1, &mean2SD2);
        }

        if(sum_flg >= 2){
            PFeat_PreEstimation(PPI, &num_PPI3, &sum3_prj_SD1, &sum3_prj_SD2, &mean3SD1, &mean3SD2);
        }

        if(sum_flg >= 3){
            PFeat_PreEstimation(PPI, &num_PPI4, &sum4_prj_SD1, &sum4_prj_SD2, &mean4SD1, &mean4SD2);
        }
    }
}
