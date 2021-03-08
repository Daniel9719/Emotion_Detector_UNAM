#include <Poincare.h>
#include <Time_Features.h>

#define f_s 128.0


float* PPI_Estimation(int x_PPG, float* Y, float* X, bool rdy){

    static int detected_peaks = 0, PPI_indx = 0, subs_down_steps = 0, indx_dist = 0;
    static float temp_meanPPI = 0, miss_time = 0;

    float* ptPPI;
    int PPG[2];

    if(rdy){
      Poincare_Graph(rdy, PPI_indx, Y);
      Time_Features(rdy, PPI_indx, Y, X);
      return 0;
    }

    PPG[1] = x_PPG;

    //If the backward difference is less than or equal to zero, then it is counted as a subsequent down-step
    if((PPG[1] - PPG[0]) <= 0){
       //Subsequent down steps counter
       subs_down_steps++;
    }
    else if((PPG[1] - PPG[0]) > 0){
       //Slope threshold to detect a falling edge
       if(subs_down_steps >= 25){
           detected_peaks++;
       }
       //The count is reset if there is an up-step
       subs_down_steps=0;
    }

    if(detected_peaks == 2){
       //Adaptative time threshold
       if(indx_dist/f_s < 1.5*temp_meanPPI || PPI_indx == 0){
          //PPI = (Number of indexes between peaks)/(sampling frequency)
          Y[PPI_indx] = indx_dist/f_s;
          X[PPI_indx] = X[PPI_indx-1] + Y[PPI_indx] + miss_time;

          //Mean of PPI
          temp_meanPPI = (temp_meanPPI*(PPI_indx) + Y[PPI_indx])/(PPI_indx + 1);

          if(PPI_indx > 0){
             Poincare_Graph(rdy, PPI_indx, Y);
             Time_Features(rdy, PPI_indx, Y, X);
          }

          PPI_indx++;
          miss_time = 0;
       }
       else{
           miss_time = indx_dist/f_s;
       }
       detected_peaks = 1;
       indx_dist=0;

       ptPPI = &X[PPI_indx-1];
    }
    else{
        ptPPI = 0;
    }

    PPG[0] = PPG[1];

    if(detected_peaks > 0){
      //Number of indexes between peaks
      indx_dist++;
    }

    return ptPPI;
}
