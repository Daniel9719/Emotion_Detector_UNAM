#include <stdbool.h>
#include <stdint.h>

#include <tms320f28379d.h>
#include <driverlib/cpu.h>

#include "Configuration/Configuration.h"
#include "Communications/Communications.h"
#include "Classification/Classification.h"
#include "Freq_Extraction/Freq_Extraction.h"
#include "Communications/Biom_AS7026GG.h"
#include "Communications/SCI_UART.h"

extern uint16_t volatile SCI_Mode;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode
float* ptPRV_h;
float* ptPRV_y;
float* ptEDA;

extern uint16_t Emotion;
extern struct Features_Value Feat_Val;
extern volatile uint16_t Modality;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%    CONFIGURATION PIE    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_PIE(void){
    PIE_CTRL_R|=0x1;                        //ENPIE: Hab inter
    PIE_ACK_R|=0x181;                       //Clean interrupt flags from Goups 1, 8 & 9
    PIE_IER1_R|=0x10;                       //Enable Channel 5 from Group 1 for XINT2
    PIE_IER8_R|=0x2;                        //Enable Channel 2 from Group 8 for I2C FIFO
    PIE_IER9_R|=0x4;                        //Enable Channel 3 from Group 9 for SCIB RX
    IER|=0x181;                             //Enable Int1, Int8 & Int9 from IER of CPU
}

//------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%    MAIN PROGRAM   %%%%%%%%%%%%%%%%%%%%%%%%
//------------------------------------------------------------------
void main(void){
    DINT;                                   //Disable interrupt masks

    EALLOW;
        Config_Ports();
        Config_SCIB();
        Config_I2CA();
        Config_DMA();
        //Assign ISR (Interrupt Service Routine) to register with I2CA, XINT2 & SCIB RX
        INT1_5_XINT2_R=(uint32_t)(&Inter_XINT2);
        INT8_2_I2CAFIFO_R=(uint32_t)(&Inter_I2CA);
        INT9_3_SCIBRX_R=(uint32_t)(&Inter_SCIBRX);
        Config_PIE();
    EDIS;

    EINT;                                   //Enable interrupt masks

    HM10_Config();
    Biom_Config();
    while(SCI_Mode!=2);                     //While the BLE device isn't connected
    while(1){
//        Freq_Extraction(ptPRV_h,ptPRV_y,PRVSig);
//        Freq_Extraction(0,ptEDA,EDASig);
        if(Modality){
            Emotion=EMDC(&Feat_Val.pNN50);
            Write_Emotion();
        }
    }
}
