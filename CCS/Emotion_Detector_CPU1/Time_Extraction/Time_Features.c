#include <stdbool.h>
#include "Configuration/Configuration.h"

extern volatile struct Features_Value Feat_Val;

//Intrinsic
float __sqrt(float scr);

void Time_Features(bool rdy, int PPI_indx, float* Y, float* X){

    static float sum_PPI = 0;

    if(rdy){
      //NN50 divided by the total number of PPI
      Feat_Val.pNN50 = Feat_Val.NN50/((float)PPI_indx-1);

      sum_PPI += Y[PPI_indx-1];

      //Mean
      Feat_Val.RRmed = sum_PPI/PPI_indx;

      //Root mean square
      Feat_Val.RMSSD= __sqrt(Feat_Val.RMSSD/(PPI_indx-1));

      Feat_Val.SDNN += Y[PPI_indx-1]*Y[PPI_indx-1];

      Feat_Val.SDNN = (Feat_Val.SDNN - ((sum_PPI*sum_PPI)/(PPI_indx)))/(PPI_indx-1);

      //Standard deviation
      Feat_Val.SDNN = __sqrt(Feat_Val.SDNN);
    }
    else{
      //Number of interval differences of successive PPI greater than 50ms
      if(Y[PPI_indx-1] - Y[PPI_indx] > 0.050 || Y[PPI_indx-1] - Y[PPI_indx]   < -0.050){
          Feat_Val.NN50++;
      }

      sum_PPI += Y[PPI_indx-1];

      Feat_Val.SDNN += Y[PPI_indx-1]*Y[PPI_indx-1];

      Feat_Val.RMSSD += (Y[PPI_indx] - Y[PPI_indx-1])*(Y[PPI_indx] - Y[PPI_indx-1]);
    }
}
