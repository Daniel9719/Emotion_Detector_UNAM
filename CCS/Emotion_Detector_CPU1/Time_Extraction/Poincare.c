#include <stdbool.h>
#include <Configuration.h>

#define const1_sd 0.7071067812
#define const2_sd -0.7071067812
#define N 10

extern volatile struct Features_Value Feat_Val;

//Intrinsic
float __sqrt(float scr);

void Poincare_Graph(bool rdy, int PPI_indx, float* Y){

    static float sum_prj_SD1 = 0, sum_prj_SD2 = 0, meanSD1 = 0, meanSD2 = 0;
    float prj_SD2 = 0, prj_SD1 = 0, SD1 = 0, SD2 = 0;

    if(rdy){
       SD1 = (sum_prj_SD1-((meanSD1*meanSD1)/(PPI_indx-1)))/(PPI_indx-2);
       SD2 = (sum_prj_SD2-((meanSD2*meanSD2)/(PPI_indx-1)))/(PPI_indx-2);

       Feat_Val.SD1 = __sqrt(SD1);
       Feat_Val.SD2 = __sqrt(SD2);

       //SD1/SD2 ratio
       Feat_Val.SD1_SD2 = Feat_Val.SD1/Feat_Val.SD2;
    }
    else{

       prj_SD1 = Y[PPI_indx-1]*const1_sd + Y[PPI_indx]*const1_sd;
       prj_SD2 = Y[PPI_indx-1]*const2_sd + Y[PPI_indx]*const1_sd;

       //Projection
       sum_prj_SD1 += prj_SD1*prj_SD1;
       sum_prj_SD2 += prj_SD2*prj_SD2;

       meanSD1 += prj_SD1;
       meanSD2 += prj_SD2;
    }
}


