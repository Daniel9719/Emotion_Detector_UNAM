#include <stdint.h>
#include "Classification/Classification.h"

uint16_t emotion;
uint16_t Sel_SF[8];

float Mean_Vect[8];
float ApriVect[8];
float Conv_S[4];
float FLD_W[4][22];

extern float mult(float features, float W, float y);
extern float func_LDA(float cons, float x, float ConvS, float ApriVect);
extern float sub(float a, float b);

float FLD(float* features, float* W, uint32_t index){
    float y=0;
    uint32_t aux=0x1;
    while(*W&&aux<0x400000){
        if(index&aux){
            y=mult(*features, *(W++),y);
        }
        features++;
        aux=aux<<1;
    }
    return y;
}

uint16_t LDA(float* Mean_Vect, float* ApriVect, float* Conv_S, float entry, uint16_t level){
    float y_1, y_2;
    float x_1,x_2;
    x_1=sub(entry, Mean_Vect[level*2]);
    x_2=sub(entry, Mean_Vect[level*2+1]);
    y_1=func_LDA(-0.5, x_1, Conv_S[level*2], ApriVect[level*2]);
    y_2=func_LDA(-0.5, x_2, Conv_S[level*2+1], ApriVect[level*2+1]);
    if (y_1<y_2){
        return 1;
    }
    else{
        return 0;
    }
}

uint16_t EMDC(float *features){
    //level 0: 0 NN, 1 N, level 1: 0 EB 1 EA, level 2 and 3: 0 VN 1 VP
    //N 0X80 10000000
    //VN EB 0X2 10
    //VP EB 0X4 100
    //VN EA 0X10 10000
    //VP EA 0X40 1000000
    uint16_t prediction_1, prediction_2, prediction_3, prediction_4, i;
    uint32_t index[4]={0,0,0,0};
    uint32_t temp;

    for(i=0;i<4;i++){
        index[i]|=Sel_SF[i*2];
        temp=Sel_SF[i*2+1];
        temp=temp<<12;
        index[i]|=temp;
    }

    float x;
    x=FLD(features, FLD_W[0],index[0]);
    prediction_1=LDA(Mean_Vect,ApriVect,Conv_S, x, 0);
    if(prediction_1==1){ //N
        return 0x80;
    }
    else{
        x=FLD(features, FLD_W[1],index[1]);
        prediction_2=LDA(Mean_Vect,ApriVect,Conv_S, x, 1);
    }
    if(prediction_2==1){ //EA
        x=FLD(features, FLD_W[2],index[2]);
        prediction_3=LDA(Mean_Vect,ApriVect,Conv_S, x, 2);
        if(prediction_3==1){ //VP EA
            return 0x40;
        }
        else{ //VN EA
            return 0x10;
        }
     }
     else{ //EB
        x=FLD(features, FLD_W[3],index[3]);
        prediction_4=LDA(Mean_Vect,ApriVect,Conv_S, x, 3);
        if(prediction_4==1){ //VP EB
            return 0x4;
        }
        else{ //VN EB
            return 0x2;
        }
      }
}
