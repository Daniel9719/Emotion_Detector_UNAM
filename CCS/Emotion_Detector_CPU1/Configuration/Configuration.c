#include "Configuration/Configuration.h"
#include "Communications/Biom_AS7026GG.h"
#include "Communications/SCI_UART.h"

#define Q16 65536

#pragma DATA_SECTION(Modality, "CPU1_TO_CPU2");
//#pragma DATA_SECTION(FLD_W, "CPU1_TO_CPU2");
//#pragma DATA_SECTION(ApriVect, "CPU1_TO_CPU2");
//#pragma DATA_SECTION(MeanVect, "CPU1_TO_CPU2");
//#pragma DATA_SECTION(Cov_S, "CPU1_TO_CPU2");
#pragma DATA_SECTION(Chars_Asig, "CPU1_TO_CPU2");

//#pragma DATA_SECTION(Chars_Val2_Pt, "CPU2_TO_CPU1");
//#pragma DATA_SECTION(Emotion, "CPU2_TO_CPU1");

//-----------------------------------//
//uint16_t AUX_Emotion;
float AUX_FLD_W[4][22];
float AUX_MeanVect[8];
float AUX_ApriVect[8];
float AUX_Cov_S[4];
//struct Characteristics_Value2{
//    float PRV_LF_HF;
//    float PRV_VLF;
//    float PRV_LF;
//    float PRV_HF;
//    float EDA_LF;
//    float EDA_HF;
//};
//struct Characteristics_Value2 AUX_Chars_Val2_Pt;

//volatile uint16_t* Emotion=&AUX_Emotion;
//float* MeanVect_Pt=AUX_MeanVect;
//float* Cov_S_Pt=AUX_ApriVect;
//float* Cov_S=AUX_Cov_S;
//float* FLD_W=&AUX_FLD_W[0][0];
//volatile float* Chars_Val2_Pt=&AUX_Chars_Val2_Pt.PRV_LF_HF;
//-----------------------------------//

//%%%%%%%%%%%%%%%%%%%    CONFIGURATION VARIABLES    %%%%%%%%%%%%%%%%%%
volatile uint16_t Clb_Mode=0;
uint16_t AutoTx=0;
uint16_t Measure=0;
uint16_t Modality=0;
uint16_t RGB_En=1;
uint16_t PS_Select=2;
uint16_t No_Emotions=0;

uint16_t Emotion_Buff[128];

volatile uint16_t* Emotion_Pt;
float* FLD_W_Pt=&AUX_FLD_W[0][0];
float* MeanVect_Pt=AUX_MeanVect;
float* ApriVect_Pt=AUX_ApriVect;
float* Cov_S_Pt=AUX_Cov_S;
volatile float* Chars_Val2_Pt;

struct Characteristics_Asignation{
    uint16_t PRV[4];
    uint16_t EDA[4];
} volatile Chars_Asig = {
    {0xFFF, 0xFFF, 0xFFF, 0xFFF},
    {0x3FF, 0x3FF, 0x3FF, 0x3FF}
};

struct Characteristics_Value1{
    float pNN50;
    float NN50;
    float RRmed;
    float SDNN;
    float RMSSD;
    float SD1_SD2;
    float SD1;
    float SD2;
    float NumSCR;
    float AmpSCR;
    float mTL;
    float sdAmp;
    float ctl25;
    float ctl50;
    float ctl75;
    float ctl90;
} volatile Chars_Val1;

uint16_t Config_Auto=0;
uint16_t volatile Config_Addr;
uint16_t volatile Config_TxVars=0;
uint16_t Emot_End=0;

extern volatile bool SCI_TxAvail;
extern uint16_t* SCI_StartPt;
extern uint16_t* SCI_EndPt;
extern uint16_t SCI_Data;
extern uint16_t Sporadic_Error;

//--------------------------------------------------------------------
//%%%%%%%%%%%%   INITILAIZE VALUES OF EMOTION BUFFER   %%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Init_EmotBuff(void){
    int16_t i;
    for(i=0;i<128;i++){
        Emotion_Buff[i]=0x11;
    }
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%     EMOTION RELATED ACTIONS    %%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Emotion_Write(void){
    static uint16_t Emot_End=0, Emot_Nibble=0;
    if(RGB_En){
        GPIO_PORTA_CLEAR_R|=0x7;                //Turn off LED RGB
        if(~*Emotion_Pt){
            GPIO_PORTA_SET_R|=*Emotion_Pt;      //Turn on LED RGB to respective color according to Emotion
        }
    }
    if(Emot_Nibble){
        Emotion_Buff[Emot_End]=(Emotion_Buff[Emot_End]&0x0F00)|(*Emotion_Pt)<<8;
    }
    else{
        Emotion_Buff[Emot_End]=(Emotion_Buff[Emot_End]&0xF000)|(*Emotion_Pt)<<12;
        Emot_End++;
    }
    if(Emot_End==256){
        Emot_End=0;
    }
    Emot_Nibble^=1;
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%   TRANSFER OF VARIABLES    %%%%%%%%%%%%%%%%%%%
// uint16_t Number: Assignation of the variable to send via UART
//  0x00: pNN50         0x08: NumSCR        0x10: LF/HF
//  0x01: NN50          0x09: AmpSCR        0x11: VLF
//  0x02: RRmed         0x0A: mTL           0x12: PRV_LF
//  0x03: SDNN          0x0B: sdAmpl        0x13: PRV_HF
//  0x04: RMSSD         0x0C: ctl25         0x14: EDA_LF
//  0x05: SD1/SD2       0x0D: ctl50         0x15: EDA_HF
//  0x06: SD1           0x0E: ctl75         0x16: Emotion
//  0x07: SD2           0x0F: ctl90
//--------------------------------------------------------------------
void TxVars(uint16_t Number){
    static uint16_t FirstChar=1;
    if(AutoTx){
        if(Number==0x16){
            if((Emot_End==(No_Emotions>>1)) || Sporadic_Error){
                while(!SCI_TxAvail){}
                SCI_TxAvail=false;
                SCI_StartPt=&Emotion_Buff[0];
                SCI_EndPt=&Emotion_Buff[Emot_End];
                SCI_Data=Emotion_Buff[0];
                SCIB_FFTX_R|=0x20;                          //TXFFIENA: Hab Inter Tx FIFO
                Emot_End=0;
            }
        }
        else if(FirstChar){                                 //Only enter if you start writing the first characteristic
            if(Number<0x16){
                if(Modality==0 && (GPIO_PORTC_DAT_R&0x8)==0){
                    VariablesMap(0x12,Number);      //Selecting the Vector to transmit in Variables Map
                    VariablesMap(0x93,0);           //Requesting a reading from Vector data in Variables Map
                    VariablesMap(0x94,0);
                    VariablesMap(0x95,0);
                    VariablesMap(0x96,0);
                }else if(Modality==2 && Sporadic_Error){
                    VariablesMap(0x12,Number);      //Selecting the Vector to transmit in Variables Map
                    VariablesMap(0x93,0);           //Requesting a reading from Vector data in Variables Map
                    VariablesMap(0x94,0);
                    VariablesMap(0x95,0);
                    VariablesMap(0x96,0);
                    Sporadic_Error=0;
                }
                if(Number==0x00){
                    FirstChar=0;
                }
                if(Number==0x16){
                    FirstChar=1;
                }
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
    static uint16_t Charact_Row=0;
    static volatile float* Pointer1;
    static volatile float* Pointer2=&Chars_Val1.pNN50;
    static int32_t DataQ16=0;

    uint16_t Buffer=0;
    uint16_t Address=Var_Addr&0x1F;

    if(Var_Addr&0x80){                  //If it's a reading request
        if(Address<=0x16){
            while(!SCI_TxAvail){}
            SCIB_WData(Address);
            switch(Address){
                case 0x00:       //-------------------CONFIG--------------------//
                    Buffer=(AutoTx<<7)|(Clb_Mode<<6)|(Measure<<5)|(Modality<<3)|(RGB_En<<2)|(PS_Select);
                    SCIB_WData(Buffer);
                    break;
                case 0x01:       //---------------EMOTION No.-------------------//
                    SCIB_WData(No_Emotions);
                    break;
                case 0x02:       //----------------CC CONFIG--------------------//
                    SCIB_WData(CC_Row);
                    break;
                case 0x03:       //----------------PRV1 CHARACT-----------------//
                    SCIB_WData(Chars_Asig.PRV[CC_Row]&0xFF);
                    break;
                case 0x04:       //----------------PRV2 CHARACT-----------------//
                    SCIB_WData(Chars_Asig.PRV[CC_Row]>>8);
                    break;
                case 0x05:       //----------------EDA1 CHARACT-----------------//
                    SCIB_WData(Chars_Asig.EDA[CC_Row]&0xFF);
                    break;
                case 0x06:       //----------------EDA2 CHARACT-----------------//
                    SCIB_WData(Chars_Asig.EDA[CC_Row]>>8);
                    break;
                case 0x07:       //----------------Wn CONFIG--------------------//
                    Buffer=(W_Row<<5)|(W_Col);
                    SCIB_WData(Buffer);
                    break;
                case 0x08:       //----------------FLD MATRIX Wn 1--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x09:       //----------------FLD MATRIX Wn 2--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x0A:       //----------------FLD MATRIX Wn 3--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x0B:       //----------------FLD MATRIX Wn 4--------------//
                    DataQ16=(uint16_t)(FLD_W_Pt[W_Row*22+W_Col]*Q16);
                    SCIB_WData(DataQ16>>24);
                    break;
                case 0x0C:       //----------------VECT CONFIG------------------//
                    Buffer=(Vect_Row)|(Vect_Col);
                    SCIB_WData(Buffer);
                    break;
                case 0x0D:       //----------------mk/pik/S VECTOR 1------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x0E:       //----------------mk/pik/S VECTOR 2------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x0F:       //----------------mk/pik/S VECTOR 3------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x10:       //----------------mk/pik/S VECTOR 4------------//
                    DataQ16=(uint16_t)(Pointer1[Vect_Col]*Q16);
                    SCIB_WData(DataQ16>>24);
                    break;
                case 0x11:       //-------------------EMOTION-------------------//
                    SCIB_WData(Emotion_Buff[Emot_End]);
                    break;
                case 0x12:       //----------------CHARACT CONFIG---------------//
                    Buffer=Charact_Row;
                    SCIB_WData(Buffer);
                     break;
                case 0x13:       //----------------CHARACT VALUE 1--------------//
                    DataQ16=(uint16_t)(Pointer2[Charact_Row]*Q16);
                    SCIB_WData(DataQ16);
                    break;
                case 0x14:       //----------------CHARACT VALUE 2--------------//
                    DataQ16=(uint16_t)(Pointer2[Charact_Row]*Q16);
                    SCIB_WData(DataQ16>>8);
                    break;
                case 0x15:       //----------------CHARACT VALUE 3--------------//
                    DataQ16=(uint16_t)(Pointer2[Charact_Row]*Q16);
                    SCIB_WData(DataQ16>>16);
                    break;
                case 0x16:       //----------------CHARACT VALUE 4--------------//
                    DataQ16=(uint16_t)(Pointer2[Charact_Row]*Q16);
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
                Modality=(Data&0x18)>>3;
                AutoTx=(Data&0x40)>>6;
                Clb_Mode=(Data&0x80)>>7;
                if(Clb_Mode){
                    GPIO_PORTA_CLEAR_R|=0x3;            //Turn off Cyan LED RGB for Calibration Mode
                    GPIO_PORTA_SET_R|=0x5;              //Turn on Cyan LED RGB for Calibration Mode
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
            case 0x01:       //---------------EMOTION No.-------------------//
                No_Emotions=Data;
                break;
            case 0x02:       //----------------CC CONFIG--------------------//
                CC_Row=Data&0x3;
                if(Data&0x4){
                    Config_Auto=1;
                    Config_Addr=Var_Addr+1;
                }
                break;
            case 0x03:       //----------------PRV1 CHARACT-----------------//
                Chars_Asig.PRV[CC_Row]=(Chars_Asig.PRV[CC_Row]&0xFF00)|Data;
                break;
            case 0x04:       //----------------PRV2 CHARACT-----------------//
                Chars_Asig.PRV[CC_Row]=(Chars_Asig.PRV[CC_Row]&0x00FF)|((Data&0xF)<<8);
                break;
            case 0x05:       //----------------EDA1 CHARACT-----------------//
                Chars_Asig.EDA[CC_Row]=(Chars_Asig.EDA[CC_Row]&0xFF00)|Data;
                break;
            case 0x06:       //----------------EDA2 CHARACT-----------------//
                Chars_Asig.EDA[CC_Row]=(Chars_Asig.EDA[CC_Row]&0x00FF)|((Data&0x3)<<8);
                Config_Auto=0;
                break;
            case 0x07:       //----------------Wn CONFIG--------------------//
                W_Row=(Data&0x60)>>5;
                W_Col=Data&0x1F;
                if(Data&0x80){
                    Config_Auto=1;
                    Config_Addr=Var_Addr+1;
                }
                break;
            case 0x08:       //----------------FLD MATRIX Wn 1--------------//
                DataQ16=(DataQ16 & 0xFFFFFF00)|Data;
                break;
            case 0x09:       //----------------FLD MATRIX Wn 2--------------//
                DataQ16=(DataQ16 & 0xFFFF00FF)|(Data<<8);
                break;
            case 0x0A:       //----------------FLD MATRIX Wn 3--------------//
                DataQ16=(DataQ16 & 0xFF00FFFF)|((uint32_t)(Data)<<16);
                break;
            case 0x0B:       //----------------FLD MATRIX Wn 4--------------//
                DataQ16=(DataQ16 & 0x00FFFFFF)|((int32_t)(Data)<<24);
                FLD_W_Pt[W_Row*22+W_Col]=(float)(DataQ16)/Q16;
                Config_Auto=0;
                break;
            case 0x0C:       //----------------VECT CONFIG------------------//
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
            case 0x0D:       //----------------mk/pik/S VECTOR 1------------//
                DataQ16=(DataQ16&0xFFFFFF00)|Data;
                break;
            case 0x0E:       //----------------mk/pik/S VECTOR 2------------//
                DataQ16=(DataQ16&0xFFFF00FF)|(Data<<8);
                break;
            case 0x0F:       //----------------mk/pik/S VECTOR 3------------//
                DataQ16=(DataQ16&0xFF00FFFF)|((uint32_t)(Data)<<16);
                break;
            case 0x10:       //----------------mk/pik/S VECTOR 4------------//
                DataQ16=(DataQ16&0x00FFFFFF)|((int32_t)(Data)<<24);
                Pointer1[Vect_Col]=(float)(DataQ16)/Q16;
                Config_Auto=0;
                break;
            case 0x12:       //----------------CHARACT CONFIG---------------//
                Charact_Row=Data&0x1F;
                if(Charact_Row<0x10){
                    Pointer2=&Chars_Val1.pNN50;
                }
                else{
                    Pointer2=Chars_Val2_Pt;
                    Charact_Row-=0x10;
                }
//                if(Data&0x20){
//                    Config_Auto=1;
//                    Config_Addr=Var_Addr+1;
//                    Config_Addr|=0x80;          //Converts Address to Reading type
//                }
                break;
        }
    }

}
