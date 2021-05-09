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

//%%%%%%%%%%%%%%%%%%    MAIN VARIABLES    %%%%%%%%%%%%%%%%%%
volatile bool Main_Running=false;

//%%%%%%%%%%%%%%%%%%    SCI_UART VARIABLES    %%%%%%%%%%%%%%%%%%
extern float PRV_h[];
extern float PRV_y[];
extern float SCR[];

//%%%%%%%%%%%%%%%%%%    SCI_UART VARIABLES    %%%%%%%%%%%%%%%%%%
extern uint16_t volatile SCI_Mode;                             //(0) AT Mode   (1) Connection Mode  (2) Standby Mode

//%%%%%%%%%%%%%%%%%%    CONFIGURATION VARIABLES    %%%%%%%%%%%%%%%%%%
extern uint16_t Emotion;
extern struct Features_Value Feat_Val;
extern volatile uint16_t Modality;

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%    CONFIGURATION PIE    %%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Config_PIE(void){
    PIE_CTRL_R|=0x1;                        //ENPIE: Hab inter
    PIE_ACK_R|=0x1C1;                       //Clean interrupt flags from Goups 1, 7, 8 & 9
    PIE_IER1_R|=0x10;                       //Enable Channel 5 from Group 1 for XINT2
    PIE_IER7_R|=0x4;                        //Enable Channel 3 from Group 7 for DMACH3
    PIE_IER8_R|=0x2;                        //Enable Channel 2 from Group 8 for I2C FIFO
    PIE_IER9_R|=0x4;                        //Enable Channel 3 from Group 9 for SCIB RX
    IER|=0x1C1;                             //Enable Int1, Int8 & Int9 from IER of CPU
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
        INT7_3_DMACH3_R=(uint32_t)(&Inter_DMACH3);
        INT8_2_I2CAFIFO_R=(uint32_t)(&Inter_I2CA);
        INT9_3_SCIBRX_R=(uint32_t)(&Inter_SCIBRX);
        Config_PIE();
    EDIS;

    EINT;                                   //Enable interrupt masks

    HM10_Config();
    Biom_Config();
Disconnect:
    while(SCI_Mode!=2){                     //While the BLE device isn't in Standby Mode
        CPUSYS_LPMCR_R&=0xFFFFFFFC;         //IDLE MODE
        IDLE;
    }
    while(1){
        if(Main_Running==true){
            Freq_Extraction(PRV_h,PRV_y,PRVSig);
            Freq_Extraction(0,SCR,SCRSig);
            if(Modality==1){
                Emotion=EMDC(&Feat_Val.pNN50);
                Write_Emotion();
            }
            Main_Running=false;
        }
        if(SCI_Mode!=2){
            goto Disconnect;
        }
        CPUSYS_LPMCR_R&=0xFFFFFFFC;         //IDLE MODE
        IDLE;
    }
}
