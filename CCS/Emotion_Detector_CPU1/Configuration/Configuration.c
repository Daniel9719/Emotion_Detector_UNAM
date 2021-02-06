#include "Configuration/Configuration.h"
#include "Communications/Biom_AS7026GG.h"
#include "Communications/SCI_UART.h"

#define Q16 65536

//-----------------------------------//
//uint16_t AUX_Emotion;
float AUX_FLD_W[4][22];
float AUX_MeanVect[8];
float AUX_ApriVect[8];
float AUX_Cov_S[4];
//struct Features_Value2{
//    float PRV_LF_HF;
//    float PRV_VLF;
//    float PRV_LF;
//    float PRV_HF;
//    float EDA_LF;
//    float EDA_HF;
//};
//struct Features_Value2 AUX_Feat_Val2_Pt;

//volatile uint16_t* Emotion=&AUX_Emotion;
//float* MeanVect_Pt=AUX_MeanVect;
//float* Cov_S_Pt=AUX_ApriVect;
//float* Cov_S=AUX_Cov_S;
//float* FLD_W=&AUX_FLD_W[0][0];
//volatile float* Feat_Val2_Pt=&AUX_Feat_Val2_Pt.PRV_LF_HF;
//-----------------------------------//

//%%%%%%%%%%%%%%%%%%%    CONFIGURATION VARIABLES    %%%%%%%%%%%%%%%%%%
volatile uint16_t Clb_Mode=0;
uint16_t AutoTx=0;
uint16_t Measure=0;
uint16_t Modality=0;
uint16_t RGB_En=1;
uint16_t PS_Select=2;

volatile uint16_t* Emotion_Pt;
volatile float* FLD_W_Pt=&AUX_FLD_W[0][0];
volatile float* MeanVect_Pt=AUX_MeanVect;
volatile float* ApriVect_Pt=AUX_ApriVect;
volatile float* Cov_S_Pt=AUX_Cov_S;

struct Features_Asignation Feat_Asig = {
    {0xFFF, 0xFFF, 0xFFF, 0xFFF},
    {0x3FF, 0x3FF, 0x3FF, 0x3FF}
};

volatile struct Features_Value Feat_Val;

uint16_t Config_Auto=0;
uint16_t volatile Config_Addr;
uint16_t volatile Config_TxVars=0;

//%%%%%%%%%%%%%%%%%%    SCI_UART VARIABLES    %%%%%%%%%%%%%%%%%%
extern volatile bool SCI_TxAvail;
extern uint16_t* SCI_StartPt;
extern uint16_t* SCI_EndPt;
extern uint16_t SCI_Data;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%     EMOTION RELATED ACTIONS    %%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Write_Emotion(void){
    if(RGB_En){
        GPIO_PORTA_CLEAR_R|=0x7;                //Turn off LED RGB
        if(~*Emotion_Pt){
            GPIO_PORTA_SET_R|=*Emotion_Pt;      //Turn on LED RGB to respective color according to Emotion
        }
    }
    VariablesMap(0x90,0);
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%   SENDING FEATURES   %%%%%%%%%%%%%%%%%%%%%%
// uint16_t Number: Assignation of the feature to send via UART
//  0x00: pNN50         0x08: PRV_LF        0x10: ctl25
//  0x01: NN50          0x09: PRV_HF        0x11: ctl50
//  0x02: RRmed         0x0A: SD1           0x12: ctl75
//  0x03: SDNN          0x0B: SD2           0x13: ctl90
//  0x04: RMSSD         0x0C: NumSCR        0x14: EDA_LF
//  0x05: SD1/SD2       0x0D: AmpSCR        0x15: EDA_HF
//  0x06: LF/HF         0x0E: mTL
//  0x07: VLF           0x0F: sdAmpl
//--------------------------------------------------------------------
void Send_Feature(uint16_t Number){
    if(AutoTx){
        if(Number<0x16){
            if(Modality==0){
                VariablesMap(0x11,Number);      //Selecting the Vector to transmit in Variables Map
                VariablesMap(0x92,0);           //Requesting a reading from Vector data in Variables Map
                VariablesMap(0x93,0);
                VariablesMap(0x94,0);
                VariablesMap(0x95,0);
            }
        }
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%     MAP OF VARIABLES    %%%%%%%%%%%%%%%%%%%%%%
// uint16_t Var_Addr: Variable address
// uint16_t Data: 8 bit Data
//--------------------------------------------------------------------
void VariablesMap(uint16_t Var_Addr, uint16_t Data){
    static uint16_t CC_Row=0;
    static uint16_t W_Row=0, W_Col=0;
    static uint16_t Vect_Row=0, Vect_Col=0;
    static uint16_t Feat_Row=0;
    static volatile float* Pointer1;
    static volatile float* Pointer2=&Feat_Val.pNN50;
    static int32_t DataQ16=0;

    uint16_t Buffer=0;
    uint16_t Address=Var_Addr&0x1F;

    if(Var_Addr&0x80){           //If it's a reading request
        if(Address<=0x15){
            while(!SCI_TxAvail){}
            SCIB_WData(Address);
            switch(Address){
                case 0x00:       //-------------------CONFIG--------------------//
                    Buffer=(AutoTx<<6)|(Measure<<5)|(Clb_Mode<<4)|(Modality<<3)|(RGB_En<<2)|(PS_Select);
                    SCIB_WData(Buffer);
                    break;
                case 0x01:       //----------------CC CONFIG--------------------//
                    SCIB_WData(CC_Row);
                    break;
                case 0x02:       //----------------PRV1 CHARACT-----------------//
                    SCIB_WData(Feat_Asig.PRV[CC_Row]&0xFF);
                    break;
                case 0x03:       //----------------PRV2 CHARACT-----------------//
                    SCIB_WData(Feat_Asig.PRV[CC_Row]>>8);
                    break;
                case 0x04:       //----------------EDA1 CHARACT-----------------//
                    SCIB_WData(Feat_Asig.EDA[CC_Row]&0xFF);
                    break;
                case 0x05:       //----------------EDA2 CHARACT-----------------//
                    SCIB_WData(Feat_Asig.EDA[CC_Row]>>8);
                    break;
                case 0x06:       //----------------Wn CONFIG--------------------//
                    Buffer=(W_Row<<5)|(W_Col);
                    SCIB_WData(Buffer);
                    break;
                case 0x07:       //----------------FLD MATRIX Wn 1--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x08:       //----------------FLD MATRIX Wn 2--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x09:       //----------------FLD MATRIX Wn 3--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x0A:       //----------------FLD MATRIX Wn 4--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>24);
                    break;
                case 0x0B:       //----------------VECT CONFIG------------------//
                    Buffer=(Vect_Row)|(Vect_Col);
                    SCIB_WData(Buffer);
                    break;
                case 0x0C:       //----------------mk/pik/S VECTOR 1------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x0D:       //----------------mk/pik/S VECTOR 2------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x0E:       //----------------mk/pik/S VECTOR 3------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x0F:       //----------------mk/pik/S VECTOR 4------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>24);
                    break;
                case 0x10:       //-------------------EMOTION-------------------//
                    SCIB_WData(*Emotion_Pt);
                    break;
                case 0x11:       //----------------CHARACT CONFIG---------------//
                    Buffer=Feat_Row;
                    SCIB_WData(Buffer);
                     break;
                case 0x12:       //----------------CHARACT VALUE 1--------------//
                    DataQ16=(uint16_t)(Pointer2[Feat_Row]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x13:       //----------------CHARACT VALUE 2--------------//
                    DataQ16=(uint16_t)(Pointer2[Feat_Row]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x14:       //----------------CHARACT VALUE 3--------------//
                    DataQ16=(uint16_t)(Pointer2[Feat_Row]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x15:       //----------------CHARACT VALUE 4--------------//
                    DataQ16=(uint16_t)(Pointer2[Feat_Row]*Q16);
                    SCIB_WData(DataQ16>>24);
                    Config_Auto=0;
                    break;
            }
        }
    }
    else{                               //If it's a writing request
        switch(Address){
            case 0x00:       //-------------------CONFIG--------------------//
                PS_Select=Data&0x3;
                RGB_En=(Data&0x4)>>2;
                Modality=(Data&0x8)>>3;
                Clb_Mode=(Data&0x10)>>4;
                AutoTx=(Data&0x40)>>6;
                if(Clb_Mode){
                    GPIO_PORTA_CLEAR_R|=0x7;            //Turn off Cyan LED RGB for Calibration Mode
                    GPIO_PORTA_SET_R|=0x7;              //Turn on Cyan LED RGB for Calibration Mode
                    AS7026GG_ADC_Channel(0);
                }
                Measure=(Data&0x20)>>5;
                if(Measure){
                    AS7026GG_Start();
                }
                else{
                    AS7026GG_Stop();
                }
                break;
            case 0x01:       //----------------CC CONFIG--------------------//
                CC_Row=Data&0x3;
                if(Data&0x4){
                    Config_Auto=1;
                    Config_Addr=Var_Addr+1;
                }
                break;
            case 0x02:       //----------------PRV1 CHARACT-----------------//
                Feat_Asig.PRV[CC_Row]=(Feat_Asig.PRV[CC_Row]&0xFF00)|Data;
                break;
            case 0x03:       //----------------PRV2 CHARACT-----------------//
                Feat_Asig.PRV[CC_Row]=(Feat_Asig.PRV[CC_Row]&0x00FF)|((Data&0xF)<<8);
                break;
            case 0x04:       //----------------EDA1 CHARACT-----------------//
                Feat_Asig.EDA[CC_Row]=(Feat_Asig.EDA[CC_Row]&0xFF00)|Data;
                break;
            case 0x05:       //----------------EDA2 CHARACT-----------------//
                Feat_Asig.EDA[CC_Row]=(Feat_Asig.EDA[CC_Row]&0x00FF)|((Data&0x3)<<8);
                Config_Auto=0;
                break;
            case 0x06:       //----------------Wn CONFIG--------------------//
                W_Row=(Data&0x60)>>5;
                W_Col=Data&0x1F;
                if(Data&0x80){
                    Config_Auto=1;
                    Config_Addr=Var_Addr+1;
                }
                break;
            case 0x07:       //----------------FLD MATRIX Wn 1--------------//
                DataQ16=(DataQ16 & 0xFFFFFF00)|Data;
                break;
            case 0x08:       //----------------FLD MATRIX Wn 2--------------//
                DataQ16=(DataQ16 & 0xFFFF00FF)|(Data<<8);
                break;
            case 0x09:       //----------------FLD MATRIX Wn 3--------------//
                DataQ16=(DataQ16 & 0xFF00FFFF)|((uint32_t)(Data)<<16);
                break;
            case 0x0A:       //----------------FLD MATRIX Wn 4--------------//
                DataQ16=(DataQ16 & 0x00FFFFFF)|((int32_t)(Data)<<24);
                FLD_W_Pt[W_Row*22+W_Col]=(float)(DataQ16)/Q16;
                Config_Auto=0;
                break;
            case 0x0B:       //----------------VECT CONFIG------------------//
                Vect_Col=Data&0xF;
                Vect_Row=Data&0x30;
                switch(Vect_Row){
                    case 0x00:
                        Pointer1=MeanVect_Pt;
                        break;
                    case 0x10:
                        Pointer1=ApriVect_Pt;
                        break;
                    case 0x20:
                        Pointer1=Cov_S_Pt;
                        break;
                }
                if(Data&0x40){
                    Config_Auto=1;
                    Config_Addr=Var_Addr+1;
                }
                break;
            case 0x0C:       //----------------mk/pik/S VECTOR 1------------//
                DataQ16=(DataQ16&0xFFFFFF00)|Data;
                break;
            case 0x0D:       //----------------mk/pik/S VECTOR 2------------//
                DataQ16=(DataQ16&0xFFFF00FF)|(Data<<8);
                break;
            case 0x0E:       //----------------mk/pik/S VECTOR 3------------//
                DataQ16=(DataQ16&0xFF00FFFF)|((uint32_t)(Data)<<16);
                break;
            case 0x0F:       //----------------mk/pik/S VECTOR 4------------//
                DataQ16=(DataQ16&0x00FFFFFF)|((int32_t)(Data)<<24);
                Pointer1[Vect_Col]=(float)(DataQ16)/Q16;
                Config_Auto=0;
                break;
            case 0x11:       //----------------CHARACT CONFIG---------------//
                Feat_Row=Data&0x1F;
                Pointer2=&Feat_Val.pNN50;
//                if(Data&0x20){
//                    Config_Auto=1;
//                    Config_Addr=Var_Addr+1;
//                    Config_Addr|=0x80;          //Converts Address to Reading type
//                }
                break;
        }
    }

}
