#include <stdint.h>

#include <Poincare.h>
#include <Time_Features.h>

#define f_s 128.0

extern volatile uint16_t CS_SHIFT;
extern volatile float CS_UpAcum, CS_UpN;

volatile uint16_t sum_flg;
uint16_t XY_indx;


bool PPI_Estimation(int x_PPG, float* Y, float* X){
    static uint16_t detected_peaks = 0, PPI_indx = 0, buff_indx = 0, subs_up_steps = 0, indx_dist = 0;
    static float temp_meanPPI = 0, missed_PPI = 0, Acum = 0;
    static bool dma_flg = 0;

    bool WR = false;
    float PPI[2];
    float Y_buff[2];
    float X_buff[2];
    uint16_t PPG[2];


    if(sum_flg > 3){
        Poincare_Graph(PPI, sum_flg);
        Time_Features(PPI, sum_flg);
        return 0;
    }

    PPG[1] = x_PPG;

    //If the backward difference is greater than or equal to zero, then it is counted as a subsequent up-step
    if((PPG[1] - PPG[0]) >= 0){
        //Subsequent up steps counter
        subs_up_steps++;
    }
    else if((PPG[1] - PPG[0]) < 0){
        //Slope threshold to detect a falling edge
        if(subs_up_steps >= 25){
            detected_peaks++;
        }
        //The count is reset if there is an up-step
        subs_up_steps=0;

        if(detected_peaks == 2){
            //Adaptative time threshold
            if((indx_dist/f_s < 1.5*temp_meanPPI) && (indx_dist/f_s > 0.75*temp_meanPPI) || PPI_indx == 0){
                if((DMA_CH1_CONTROL_R&0x2000)==0x2000){
                   if(dma_flg != 1){
                       XY_indx = XY_indx - CS_SHIFT;
                   }
                   Y_buff[buff_indx] = indx_dist/f_s;
                   X_buff[buff_indx] = Y_buff[XY_indx] + missed_PPI;
                   Acum = Acum + Y_buff[buff_indx] + missed_PPI;
                   buff_indx++;
                   dma_flg = 1;
               }
               else if((DMA_CH1_CONTROL_R&0x2000)!=0x2000 && dma_flg){
                   for(i=0; i<buff_indx; i++){
                       Y[XY_indx] = Y_buff[i];
                       X[XY_indx-1] = X_buff[i];
                       XY_indx++;
                   }
                   dma_flg = 0;
                   Y[XY_indx] = indx_dist/f_s;
                   X[XY_indx-1] = Y[XY_indx] + missed_PPI;
                   Acum = Acum + Y[XY_indx] + missed_PPI;
                   XY_indx++;
               }
               else{
                   //PPI = (Number of indexes between peaks)/(sampling frequency)
                   Y[XY_indx] = indx_dist/f_s;
                   if(XY_indx > 0){
                       X[XY_indx-1] = Y[XY_indx] + missed_PPI;
                   }
                   Acum = Acum + Y[XY_indx] + missed_PPI;
                   XY_indx++;
               }

               if(Acum >= CS_UpLim){
                   CS_UpAcum = Acum;
                   CS_UpN = XY_indx-1;
                   Acum -= 64;
                   WR = true;
               }

                PPI[PPI_indx] = indx_dist/f_s;

                //Mean of PPI
                temp_meanPPI = (temp_meanPPI*(PPI_indx) + PPI[PPI_indx])/(PPI_indx + 1);

                missed_PPI = 0;

                if(PPI_indx > 0){
                    Poincare_Graph(PPI, sum_flg);
                    Time_Features(PPI, sum_flg);
                    PPI[0] = PPI[1];
                }
                else{
                    PPI_indx = 1;
                }

            }
            else{
                missed_PPI = indx_dist/f_s;
            }

            detected_peaks = 1;
            indx_dist = 0;
        }
    }

    PPG[0] = PPG[1];

    if(detected_peaks > 0){
        //Number of indexes between peaks
        indx_dist++;
    }

    return WR;
}
