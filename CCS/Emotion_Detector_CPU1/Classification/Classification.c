#include <stdint.h>
#include "Classification.h"
#include "Configuration/Configuration.h"

extern struct Features_Asignation Feat_Asig;

//%%%%%%%%%%%%%%%%%%    CLASSIFICATION VARIABLES    %%%%%%%%%%%%%%%%%%

uint16_t* Asig_car=&Feat_Asig.PRV[0];
volatile float MeanVect[8];
volatile float ApriVect[8];
volatile float Cov_S[4];
volatile float FLD_W[4][21];

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    ASM FUNCTIONS    %%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------

extern float mult(float features, float W, float y);
extern float func_LDA(float cons, float x, float ConvS, float ApriVect);
extern float sub(float a, float b);

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    FLD FUNCTION    %%%%%%%%%%%%%%%%%%%%
//float* features: Pointer to extracted features
//float* W: Reduction Matrix
//uint32_t index: Index of features selected
//--------------------------------------------------------------------

float FLD(float* features,volatile float* W, uint32_t index){
    float y=0;
    uint32_t aux=0x1;
    while(*W&&aux<=0x100000){
        if(index&aux){
            y=mult(*features, *(W++),y);
        }
        features++;
        aux=aux<<1;
    }
    return y;
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    LDA FUNCTION    %%%%%%%%%%%%%%%%%%%%
//float* MeanVect: Pointer to means vectors
//float* ApriVect: Pointer to Apriori probabilities
//float* Cov_S: Pointer to covariance
//float* entry: Reduced feature vector
//uint16_t level: EMDC level
//--------------------------------------------------------------------

uint16_t LDA(volatile float* MeanVect, volatile float* ApriVect, volatile float* Cov_S, float entry, uint16_t level){
    float y_1, y_2;
    float x_1,x_2;
    x_1=sub(entry, MeanVect[level*2]);
    x_2=sub(entry, MeanVect[level*2+1]);
    y_1=func_LDA(-0.5, x_1, Cov_S[level*2], ApriVect[level*2]);
    y_2=func_LDA(-0.5, x_2, Cov_S[level*2+1], ApriVect[level*2+1]);
    if (y_1<y_2){
        return 1;
    }
    else{
        return 0;
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%    EMDC FUNCTION    %%%%%%%%%%%%%%%%%%%%
//float* features: Pointer to extracted features
//--------------------------------------------------------------------

uint16_t EMDC(float *features){
    uint16_t prediction_1, prediction_2, prediction_3, prediction_4, i;
    uint32_t index[4]={0,0,0,0};
    uint32_t temp;

    for(i=0;i<4;i++){
        index[i]|=Asig_car[i];
        temp=Asig_car[i+4];
        temp=temp<<12;
        index[i]|=temp;
    }
    float x;
    //--------------------------------------------------------------------
    //%%%%%%%%%%%%%%%%%%%%    LEVEL 1 (Neutrality)   %%%%%%%%%%%%%%%%%%%%
    //--------------------------------------------------------------------
    x=FLD(features, FLD_W[0],index[0]);
    prediction_1=LDA(MeanVect,ApriVect,Cov_S, x, 0);
    if(prediction_1==1){ //Neutral
        return 7;
    }
    else{//Not neutral
        //--------------------------------------------------------------------
        //%%%%%%%%%%%%%%%%%%%%    LEVEL 2 (Arousal)   %%%%%%%%%%%%%%%%%%%%
        //--------------------------------------------------------------------
        x=FLD(features, FLD_W[1],index[1]);
        prediction_2=LDA(MeanVect,ApriVect,Cov_S, x, 1);
    }
    if(prediction_2==1){ //High Arousal
        //-------------------------------------------------------------------------------
        //%%%%%%%%%%%%%%%%%%%%    LEVEL 3 (Valence (High Arousal))   %%%%%%%%%%%%%%%%%%%%
        //-------------------------------------------------------------------------------
        x=FLD(features, FLD_W[2],index[2]);
        prediction_3=LDA(MeanVect,ApriVect,Cov_S, x, 2);
        if(prediction_3==1){ //Positive Valence (High Arousal)
            return 6;
        }
        else{ //Negative Valence (High Arousal)
            return 4;
        }
     }
     else{
         //------------------------------------------------------------------------------
         //%%%%%%%%%%%%%%%%%%%%    LEVEL 4 (Valence (Low Arousal))   %%%%%%%%%%%%%%%%%%%%
         //------------------------------------------------------------------------------
        x=FLD(features, FLD_W[3],index[3]);
        prediction_4=LDA(MeanVect,ApriVect,Cov_S, x, 3);
        if(prediction_4==1){ //Positive Valence (Low Arousal)
            return 2;
        }
        else{ //Negative Valence (Low Arousal)
            return 1;
        }
      }
}
