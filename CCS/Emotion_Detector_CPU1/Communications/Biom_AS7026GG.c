/*
 * Biom_AS7026GG.h
 *
 *  Created on: 07/12/2020
 *      Author: Daniel Ortiz Torres
 */

#include <Communications/Biom_AS7026GG.h>

//******************************************
//--------LED Configuration (LED)-----------
//******************************************
void Config_LEDs(int ADD){
    //--------------------------Current Config LED 1 (Green)-----------------------//
    I2C_Write_Byte(AS7026GG_LED1_CURRL);
    I2C_Write_Byte(0x40);                       //Current in LED4 set to 7.5 mA (69=0x45)
    I2C_Write_Byte(0x19);                       //Write to AS7026GG_LED1_CURR
    I2C_StartWR(ADD, 3, WRITE);
    //------Current Config LED 4 (IR)-------//
    I2C_Write_Byte(AS7026GG_LED4_CURRL);
    I2C_Write_Byte(0xC0);                       //Current in LED4 set to 50 mA (103=0x67)
    I2C_Write_Byte(0x7E);                       //Write to AS7026GG_LED1_CURRH
    I2C_StartWR(ADD, 3, WRITE);
    //------Mode Config of LED 1 & 2-------//
    I2C_Write_Byte(AS7026GG_LED12_MODE);
    I2C_Write_Byte(0x2);                        //LED1_MODE: (010) Controled by sequencer GREEN
//    I2C_Write_Byte(0x6);                      //LED1_MODE: (110) Controled by sequencer: Second LED timing GREEN
    I2C_StartWR(ADD, 2, WRITE);
    //------Mode Config of LED 3 & 4-------//
    I2C_Write_Byte(AS7026GG_LED34_MODE);
    I2C_Write_Byte(0x60);                       //LED4_MODE: (110) Controled by sequencer: Second LED timing IR
//    I2C_Write_Byte(0x20);                     //LED4_MODE: (010) Controled by sequencer IR
    I2C_StartWR(ADD, 2, WRITE);

    //------Manual Config of Sequencer-------//
    I2C_Write_Byte(AS7026GG_MAN_SEQ_CFG);
    I2C_Write_Byte(0x7);                        //DIODE_CTL: (3) PD1,PD2=LED1 y PD3,PD4=LED4
                                                //Enable Sequencer
    I2C_StartWR(ADD, 2, WRITE);

    //------LEDs Config-------//
    I2C_Write_Byte(AS7026GG_LED_CFG);
    I2C_Write_Byte(0x49);                       //SIGREF_EN for analog sistems
                                                //LED1_EN y LED4_EN Enable
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//--------Photodiode Selection (PD)---------
//******************************************
void Config_PD(int ADD){
    //------Photodetectors Config-------//
    I2C_Write_Byte(AS7026GG_PD_CFG);
    I2C_Write_Byte(0xC);                       //PD2 & PD1 connected to photoamplifier TIA
    I2C_StartWR(ADD, 2, WRITE);
    //------Current Offset ON-------//
    I2C_Write_Byte(AS7026GG_PDOFFX_LEDON);
    I2C_Write_Byte(10);                         //Set to 10 due to initial testing
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//-Photodiode Transimpedance Amplifier (TIA)
//******************************************
void Config_TIA(int ADD){
    //------Capacitor & Rsistor Config of TIA-------//
    I2C_Write_Byte(AS7026GG_PD_AMPRCCFG);
    I2C_Write_Byte(0xFF);                       //PD_AMPRES (5) 7MOhms & PD_AMPCAP (31) LOW BW MODE  7V/uA
    I2C_StartWR(ADD, 2, WRITE);
    //------Amplifier Config-------//
    I2C_Write_Byte(AS7026GG_PD_AMPCFG);
    I2C_Write_Byte(0xFF);                       //PD_AMP_EN (1) y PD_AMP_AUTO (1)    LOW BW MODE
                                                //PD_AMPVO (15) y PD_AMPCOMP (3) Gain 7V/uA
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//-------------Sequencer (SEQ)--------------
//******************************************
void Config_SEQ(int ADD){
    //------Value of Main clock divider-------//
    I2C_Write_Byte(AS7026GG_SEQ_DIV);
    I2C_Write_Byte(17);                         //SEQ_DIV=17     SEQ_T=SEQ_PER*(SEQ_DIV+1)*1[us]
    I2C_StartWR(ADD, 2, WRITE);
    //------Value of sequencer period-------//
    I2C_Write_Byte(AS7026GG_SEQ_PER);
    I2C_Write_Byte(217);                        //SEQ_PER=217   SEQ_Freq (2 chADC) = 128.008 [Hz]
                                                //El periodo de 1 Secuencia es 3.906 [ms]
    I2C_StartWR(ADD, 2, WRITE);
    //------Start time of first LED-------//
    I2C_Write_Byte(AS7026GG_SEQ_LED_STA);
    I2C_Write_Byte(158);                        //SEQ_LED_START=158
    I2C_StartWR(ADD, 2, WRITE);
    //------Stop time of first LED-------//
    I2C_Write_Byte(AS7026GG_SEQ_LED_STO);
    I2C_Write_Byte(167);                        //SEQ_LED_STOP=167
    I2C_StartWR(ADD, 2, WRITE);
    //------Integrator start time-------//
    I2C_Write_Byte(AS7026GG_SEQ_ITG_STA);
    I2C_Write_Byte(1);                          //SEQ_ITG_START=1     ITG_STOP=0 means that it's always ON
    I2C_StartWR(ADD, 2, WRITE);
    //------Start time of positive synchronous demodulator-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDP1_STA);
    I2C_Write_Byte(50);                        //SEQ_SDP1_START=50
    I2C_StartWR(ADD, 2, WRITE);
    //------Stop time of positive synchronous demodulator-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDP1_STO);
    I2C_Write_Byte(58);                        //SEQ_SDP1_STOP=58
    I2C_StartWR(ADD, 2, WRITE);
    //------Start time of negative synchronous demodulator-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDM1_STA);
    I2C_Write_Byte(159);                          //SEQ_SDM1_START=159
    I2C_StartWR(ADD, 2, WRITE);
    //------Stop time of negative synchronous demodulatoro-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDM1_STO);
    I2C_Write_Byte(167);                         //SEQ_SDM1_STOP=167
    I2C_StartWR(ADD, 2, WRITE);
    //------ADC Start time-------//
    I2C_Write_Byte(AS7026GG_SEQ_ADC);
    I2C_Write_Byte(159);                        //SEQ_SDM1_STOP=159
    I2C_StartWR(ADD, 2, WRITE);
//    //------Sequencer Start-------//
//    I2C_Write_Byte(AS7026GG_SEQ_START);
//    I2C_Write_Byte(2);                          //SEQ_START=1 Starts the sequencer
//    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//----Optical Signal Conditioning (OFE)-----
//******************************************
void Config_OFE(int ADD){
    //------Config A of OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGA);
    I2C_Write_Byte(0x61);                       //OFE1_EN, EN_BIAS_OFE: Enable bias for OFE & TIA
                                                //AA_FREQ (3): 10 kHz
                                                //GAIN_SD: (1) x2
    I2C_StartWR(ADD, 2, WRITE);
    //------Config C of OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGC);
    I2C_Write_Byte(0x07);                       //PREFILTER_AA_BYP (0): Use aa_freq filter
                                                //PREFILTER_HP_BYP (0): Use HP 200 Hz filter
                                                //PREFILTER_GAIN_BYP (0): Use gain_sd stage
                                                //PREFILTER_BYPASS_EN (0): Bypass all the prefilter
                                                //PREFILTER_AA_EN (1): Enable anti-aliasing filter of prefilter
                                                //PREFILTER_HP_EN (1): Enable high pass filter of prefilter
                                                //PREFILTER_GAIN_EN (1): Enable gain stage
    I2C_StartWR(ADD, 2, WRITE);
    //------Config D of OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGD);
    I2C_Write_Byte(0x3);                        //OFE_GS_AA (3):826 Hz antialiasing filter HP
//    I2C_Write_Byte(0x1);                      //OFE_GS_AA (1):100 kHz antialiasing filter HP
    I2C_StartWR(ADD, 2, WRITE);
    //------Config A of OFE 1-------//
    I2C_Write_Byte(AS7026GG_OFE1_CFGA);
    I2C_Write_Byte(0xF1);                       //OFE1_SD_POL_INIT (1): Seq_sdp is first within a sequence
                                                //OFE1_SD_EN (1): Enable synchronous demodulator OFE1
                                                //OFE1_HP_EN (1): Enable HP filter OFE1
                                                //OFE1_GAIN_EN (1): Enable gain stage OFE1
                                                //OFE1_SD_BYP (0): Demodulador used
                                                //OFE1_SD_HLD (1): Ouput of demodulator is tristated if not selected to +1 or -1
    I2C_StartWR(ADD, 2, WRITE);
    //------Config B of OFE 1-------//
    I2C_Write_Byte(AS7026GG_OFE1_CFGB);
    I2C_Write_Byte(0x30);                       //OFE1_GAIN_G (3): x8
                                                //OFE1_SD_BW (0): 10 Hz LP filter
                                                //OFE1_HP_FREQ (0): 1.32 Hz
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------Light-to-Frequency Mode (LTF)-------
//******************************************
void Config_LTF(int ADD){
    asm(" NOP");
}

//******************************************
//-----Electrical Analog Frontend (EAF)-----
//******************************************
void Config_EAF(int ADD){
    //------Config del edo Ganancia-------//
    I2C_Write_Byte(AS7026GG_EAF_GST);
    I2C_Write_Byte(0x20);                       //GPIO_GST_IN: (1) GPIO0
                                                //GST_REF: (0) AGND
                                                //GST_GAIN (0) x1   **REVISAR
    I2C_StartWR(ADD, 2, WRITE);
    //------Config DAC-------//
    I2C_Write_Byte(AS7026GG_EAF_DAC);
    I2C_Write_Byte(0x2);                        //GPIO_DAC (2) DAC al GPIO1
    I2C_StartWR(ADD, 2, WRITE);
    //------DAC 1 Valor-------//
    I2C_Write_Byte(AS7026GG_EAF_DAC1_L);
    I2C_Write_Byte(0xC0);                       //DAC1_VALUE 0x3FF (1.9[V])
    I2C_Write_Byte(0xFF);
    I2C_StartWR(ADD, 3, WRITE);
    //------Config del EAF-------//
    I2C_Write_Byte(AS7026GG_EAF_CFG);
    I2C_Write_Byte(0xF);                        //AFE_ENAB: Hab EAF bias
                                                //AFE_ENAB_DAC: Hab DAC
                                                //AFE_ENAB_DAC_BUF: Hab DAC Buffer
                                                //AFE_ENAB_GAINSTAGE: Hab Gain Stage
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//-----------Electrocardiogram (ECG)-------
//******************************************
void Config_ECG(int ADD){
    //------Config ECG A-------//
    I2C_Write_Byte(AS7026GG_ECG_CFGA);
    I2C_Write_Byte(0xB8);                       //ECG_EN, LP_EN, HP_EN, GAIN_EN
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ECG B-------//
    I2C_Write_Byte(AS7026GG_ECG_CFGB);
    I2C_Write_Byte(0x26);                       //LP_Freq 80[Hz]
                                                //HP_Freq 0.33[Hz]
                                                //GAIN (6) x64
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ECG C-------//
    I2C_Write_Byte(AS7026GG_ECG_CFGC);
    I2C_Write_Byte(0x2);                        //REF_EN ECG Reference Feedback Amplifier Hab
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------Analog-Digital Converter (ADC)------
//******************************************
void Config_ADC(int ADD){
    //------Config ADC B-------//
    I2C_Write_Byte(AS7026GG_ADC_CFGB);
    I2C_Write_Byte(0x11);                       //ADC_EN y ADC_CLOCK (2)=333[kHz]=3[us]
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ADC C-------//
    I2C_Write_Byte(AS7026GG_ADC_CFGC);
    I2C_Write_Byte(0x1C);                       //ADC_SELFPD Se apaga cada que no convierte el ADC
                                                //ADC_DISCHARGE Descarga Cap antes de tracking
                                                //ADC_SETTLING_TIME (4)= 32 Periodos = 3us*32 = 96us
    I2C_StartWR(ADD, 2, WRITE);
    //------Canales al ADC-------//
    I2C_Write_Byte(AS7026GG_ADC_CHANNEL_MASK_L);
    I2C_Write_Byte(0x82);                       // OFE1 After Gain & Pregain
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------------------FIFO--------------------
//******************************************
void Config_FIFO(int ADD){
    //------Configuración de FIFO-------//
    I2C_Write_Byte(AS7026GG_FIFO_CFG);
    I2C_Write_Byte(0);                          //Define la profundidad para interrupción de la FIFO a +1 datos 16b
    I2C_StartWR(ADD, 2, WRITE);
    //------Controlador del FIFO-------//
    I2C_Write_Byte(AS7026GG_FIFO_CNTRL);
    I2C_Write_Byte(0x1);                        //Limpia FIFO del sensor
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------------Digital Interface-------------
//******************************************
void Config_GPIOs(int ADD){
    //------Config de Controlador-------//
    I2C_Write_Byte(AS7026GG_CONTROL);
    I2C_Write_Byte(0x3);                        //OSC_EN y LDO_EN
    I2C_StartWR(ADD, 2, WRITE);
    //------Config GPIOs-------//
    I2C_Write_Byte(AS7026GG_GPIO_A);
    I2C_Write_Byte(0x3);                        //GPIO0_A, GPIO1_A Hab modo analógico para GPIO0, GPIO1
    I2C_StartWR(ADD, 2, WRITE);
    //------Desactiva interrupción -------//
    I2C_Write_Byte(AS7026GG_STATUS);
    I2C_Write_Byte(0x10);                       //(4) Desactiva interrupción por umbral FIFO
    I2C_StartWR(ADD, 2, WRITE);
    //------Config de Controlador-------//
    I2C_Write_Byte(AS7026GG_INTENAB);
    I2C_Write_Byte(0x10);                       //(4) Interrupción por umbral FIFO
    I2C_StartWR(ADD, 2, WRITE);
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%    BIOMETRIC SENSOR CONFIGURATION    %%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Biom_Config(void){
    AS7026GG_Stop();
    while(I2CA_STR_R&0x1000){};                 //Mientras el controlador esté ocupado BB
    Config_GPIOs(AS7026GG_ADD);
    Config_TIA(AS7026GG_ADD);
    Config_OFE(AS7026GG_ADD);
    Config_PD(AS7026GG_ADD);
    Config_EAF(AS7026GG_ADD);
    Config_ADC(AS7026GG_ADD);
    Config_FIFO(AS7026GG_ADD);
    Config_LEDs(AS7026GG_ADD);
    Config_SEQ(AS7026GG_ADD);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%    START SENSOR    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void AS7026GG_Start(void){
    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
    //------Apagado del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_SEQ_START);
    I2C_Write_Byte(1);                      //SEQ_START=1 Arranca el secuenciador
    I2C_StartWR(AS7026GG_ADD, 2, WRITE);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%%    STOP SENSOR    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void AS7026GG_Stop(void){
    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
    //------Apagado del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_SEQ_START);
    I2C_Write_Byte(0);                      //SEQ_START=0 Detiene el secuenciador
    I2C_StartWR(AS7026GG_ADD, 2, WRITE);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%    ADC CHANNEL SELECT    %%%%%%%%%%%%%%%%%%%%%
// uint16 Channel: Channels to sample (0) OFE1 After Gain & Pregain
//                                    (1) OFE1 After Gain & Electrical Front End
//--------------------------------------------------------------------
void AS7026GG_ADC_Channel(uint16_t Channel){
    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
    //------Canales al ADC-------//
    I2C_Write_Byte(AS7026GG_ADC_CHANNEL_MASK_L);
    if(Channel){
        I2C_Write_Byte(0x42);                       // OFE1 After Gain & Electrical Front End
    }
    else{
        I2C_Write_Byte(0x82);                       // OFE1 After Gain & Pregain
    }
    I2C_StartWR(AS7026GG_ADD, 2, WRITE);
    I2C_Stop();
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%%%%%%%%%%%%    CALIBRATION    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Biom_Calibration(uint16_t Mode, uint16_t Offset_Curr){
    uint32_t Curr;
    if(Mode==1){
        while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
        //------Apagado del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(0);                      //SEQ_START=0 Detiene el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Corriente Offset ON-------//
        I2C_Write_Byte(AS7026GG_PDOFFX_LEDON);
        I2C_Write_Byte(Offset_Curr);
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Inicio del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(1);                      //SEQ_START=1 Arranca el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        I2C_Stop();
    }
    else{
        while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
        //------Apagado del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(0);                      //SEQ_START=0 Detiene el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Config de los LEDs-------//
        I2C_Write_Byte(AS7026GG_LED_CFG);
        I2C_Write_Byte(0x40);                   //SIGREF_EN para bloques analógicos
                                                //LED1_EN y LED4_EN Disable
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Config Corriente LED 1 (Verde)-------//
        I2C_Write_Byte(AS7026GG_LED1_CURRL);
        Curr=69+26*Offset_Curr;                 //7.5 [mA] + 2.5 [mA]*Offset
        I2C_Write_Byte((Curr<<6)&0xFF);         //Corriente al LED1
        I2C_Write_Byte((Curr>>2)&0xFF);         //Escritura a AS7026GG_LED1_CURRH
        I2C_StartWR(AS7026GG_ADD, 3, WRITE);
        //------Config de los LEDs-------//
        I2C_Write_Byte(AS7026GG_LED_CFG);
        I2C_Write_Byte(0x49);                   //SIGREF_EN para bloques analógicos
                                                //LED1_EN y LED4_EN Enable
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Inicio del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(1);                      //SEQ_START=1 Arranca el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        I2C_Stop();
    }
}
