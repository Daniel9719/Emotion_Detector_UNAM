#include "Time_Extraction/Bartlett_w.h"
#include "Time_Extraction/SCR_Detection.h"

#define N 20

int16_t buff[N];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    ASM FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
extern int16_t convol(int16_t sample,int16_t Num_window, int16_t* bartlett_Add, int16_t* buffer_Add);

void SCR_Extraction(int16_t x_EDA, uint16_t rdy){
    int16_t y = 0, diff_SCR = 0;
    int16_t EDA[2];

    EDA[1] = x_EDA;
    diff_SCR = EDA[1] - EDA[0];
    EDA[0] = EDA[1];

    y = convol(diff_SCR, N, w, buff);

    SCR_Detection(y, rdy);
}
