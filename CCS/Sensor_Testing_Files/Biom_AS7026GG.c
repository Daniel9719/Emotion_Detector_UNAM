#include"driverlib/inc/tms320f28379d.h"
#include"IEEE_I2C.h"
#include"Biom_AS7026GG.h"

//******************************************
//--------LED Configuration (LED)-----------
//******************************************
void Config_LEDs(int ADD){
    //------Config Corriente LED 1 (Verde)-------//
    I2C_Write_Byte(AS7026GG_LED1_CURRL);
    I2C_Write_Byte(0x40);                //Corriente al LED4 de 7.5 mA (69=0x45)
    I2C_Write_Byte(0x19);                //Escritura a AS7026GG_LED1_CURR
    I2C_StartWR(ADD, 3, WRITE);
    //------Config Corriente LED 4 (IR)-------//
    I2C_Write_Byte(AS7026GG_LED4_CURRL);
    I2C_Write_Byte(0xC0);                //Corriente al LED4 de 50 mA (103=0x67)
    I2C_Write_Byte(0x7E);                //Escritura a AS7026GG_LED1_CURRH
    I2C_StartWR(ADD, 3, WRITE);
    //------Config Modos de los LED 1 y 2-------//
    I2C_Write_Byte(AS7026GG_LED12_MODE);
    I2C_Write_Byte(0x2);                 //LED1_MODE: (010) Controlado por secuenciador GREEN
//    I2C_Write_Byte(0x6);                 //LED1_MODE: (110) Controlado por secuenciador: Second LED timing GREEN
    I2C_StartWR(ADD, 2, WRITE);
    //------Config Modos de los LED 3 y 4-------//
    I2C_Write_Byte(AS7026GG_LED34_MODE);
    I2C_Write_Byte(0x60);                //LED4_MODE: (110) Controlado por secuenciador: Second LED timing IR
//    I2C_Write_Byte(0x20);                //LED4_MODE: (010) Controlado por secuenciador IR
    I2C_StartWR(ADD, 2, WRITE);

    //------Config Manual del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_MAN_SEQ_CFG);
    I2C_Write_Byte(0x7);                 //DIODE_CTL: (3) PD1,PD2=LED1 y PD3,PD4=LED4
                                            //Hab Secuenciador
    I2C_StartWR(ADD, 2, WRITE);

    //------Config de los LEDs-------//
    I2C_Write_Byte(AS7026GG_LED_CFG);
    I2C_Write_Byte(0x49);                //SIGREF_EN para bloques analógicos
                                            //LED1_EN y LED4_EN Hab
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//--------Photodiode Selection (PD)---------
//******************************************
void Config_PD(int ADD){
    //------Config de Fotodetectores-------//
    I2C_Write_Byte(AS7026GG_PD_CFG);
    I2C_Write_Byte(0xC);                //PD4 y PD1 conectados a fotoamplificador TIA
    I2C_StartWR(ADD, 2, WRITE);
    //------Corriente Offset ON-------//
    I2C_Write_Byte(AS7026GG_PDOFFX_LEDON);
    I2C_Write_Byte(10);
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//-Photodiode Transimpedance Amplifier (TIA)
//******************************************
void Config_TIA(int ADD){
    //------Config de Capacitor y Resistencia TIA-------//
    I2C_Write_Byte(AS7026GG_PD_AMPRCCFG);
    I2C_Write_Byte(0xFF);                //PD_AMPRES (5) 7MOhms y PD_AMPCAP (31) LOW BW MODE  7V/uA
    I2C_StartWR(ADD, 2, WRITE);
    //------Config del Amplificador-------//
    I2C_Write_Byte(AS7026GG_PD_AMPCFG);
    I2C_Write_Byte(0xFF);                //PD_AMP_EN (1) y PD_AMP_AUTO (1)    LOW BW MODE
                                            //PD_AMPVO (15) y PD_AMPCOMP (3) Gain 7V/uA
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//-------------Sequencer (SEQ)--------------
//******************************************
void Config_SEQ(int ADD){
    //------Valor del Divisor del reloj principal-------//
    I2C_Write_Byte(AS7026GG_SEQ_DIV);
    I2C_Write_Byte(17);                   //SEQ_DIV=17     SEQ_T=SEQ_PER*(SEQ_DIV+1)*1[us]
    I2C_StartWR(ADD, 2, WRITE);
    //------Valor del Periodo del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_SEQ_PER);
    I2C_Write_Byte(217);                 //SEQ_PER=217   SEQ_Freq (2 chADC) = 128.008 [Hz]
                                            //El periodo de 1 Secuencia es 3.906 [ms]
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo incio LED principal-------//
    I2C_Write_Byte(AS7026GG_SEQ_LED_STA);
    I2C_Write_Byte(158);                 //SEQ_LED_START=109
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo finalización LED principal-------//
    I2C_Write_Byte(AS7026GG_SEQ_LED_STO);
    I2C_Write_Byte(167);                 //SEQ_LED_STOP=122
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo incio del integrador-------//
    I2C_Write_Byte(AS7026GG_SEQ_ITG_STA);
    I2C_Write_Byte(1);                   //SEQ_ITG_START=1     Como ITG_STOP=0 significa que siempre está ENCENDIDO
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo inicio para el Demodulador Sincrono Positivo-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDP1_STA);
    I2C_Write_Byte(50);                 //SEQ_SDP1_START=110
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo finalización para el Demodulador Sincrono Positivo-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDP1_STO);
    I2C_Write_Byte(58);                 //SEQ_SDP1_STOP=118
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo inicio para el Demodulador Sincrono Negativo-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDM1_STA);
    I2C_Write_Byte(159);                  //SEQ_SDM1_START=1
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo finalización para el Demodulador Sincrono Negativo-------//
    I2C_Write_Byte(AS7026GG_SEQ_SDM1_STO);
    I2C_Write_Byte(167);                 //SEQ_SDM1_STOP=20
    I2C_StartWR(ADD, 2, WRITE);
    //------Tiempo inicio ADC-------//
    I2C_Write_Byte(AS7026GG_SEQ_ADC);
    I2C_Write_Byte(159);                //SEQ_ADC=110
    I2C_StartWR(ADD, 2, WRITE);
    //------Inicio del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_SEQ_START);
    I2C_Write_Byte(2);                  //SEQ_START=1 Arranca el secuenciador
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//----Optical Signal Conditioning (OFE)-----
//******************************************
void Config_OFE(int ADD){
    //------Config A de OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGA);
    I2C_Write_Byte(0x61);                //OFE1_EN, EN_BIAS_OFE: Hab bias para OFE y TIA
                                            //AA_FREQ (3): 10 kHz
                                            //GAIN_SD: (1) x2
    I2C_StartWR(ADD, 2, WRITE);
    //------Config C de OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGC);
    I2C_Write_Byte(0x07);                //PREFILTER_AA_BYP (0): Usar filtro aa_freq
//    I2C_Write_Byte(0x2F);                //PREFILTER_AA_BYP (0): Usar filtro aa_freq
                                            //PREFILTER_HP_BYP (1): Bypass de filtro HP 200 Hz
                                            //PREFILTER_GAIN_BYP (1): Bypasss ganancia gain_sd
                                            //PREFILTER_BYPASS_EN (1): Bypass todo el prefiltro
                                            //PREFILTER_AA_EN (1): Hab filtro anti-aliasing prefiltro
                                            //PREFILTER_HP_EN (0): Desah filtro filtro paso altas prefiltro
                                            //PREFILTER_GAIN_EN (0): Deshab ganancia
    I2C_StartWR(ADD, 2, WRITE);
    //------Config D de OFE-------//
    I2C_Write_Byte(AS7026GG_OFE_CFGD);
    I2C_Write_Byte(0x3);                 //OFE_GS_AA (3):826 Hz Filtro antialiasing HP
//    I2C_Write_Byte(0x1);                 //OFE_GS_AA (1):100 kHz Filtro antialiasing HP
    I2C_StartWR(ADD, 2, WRITE);
    //------Config A de OFE 1-------//
    I2C_Write_Byte(AS7026GG_OFE1_CFGA);
    I2C_Write_Byte(0xF1);                //OFE1_SD_EN (1): Hab Demodulador Sincrono OFE1
                                            //OFE1_HP_EN (1): Hab Filtro HP OFE1
                                            //OFE1_GAIN_EN (1): Hab Ganancia OFE1
                                            //OFE1_SD_BYP (0): Demodulador usado
                                            //OFE1_SD_HLD (1): Salida del demodulador es triestado si no es seleccionado a +1 o -1
    I2C_StartWR(ADD, 2, WRITE);
    //------Config B de OFE 1-------//
    I2C_Write_Byte(AS7026GG_OFE1_CFGB);
    I2C_Write_Byte(0x30);                //OFE1_GAIN_G (6): x64
//    I2C_Write_Byte(0x60);                //OFE1_GAIN_G (6): x64
                                            //OFE1_SD_BW (0): 10 Hz Filtro LP
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
    I2C_Write_Byte(0x20);                //GPIO_GST_IN: (1) GPIO0
                                            //GST_REF: (0) AGND
                                            //GST_GAIN (0) x1   **REVISAR
    I2C_StartWR(ADD, 2, WRITE);
    //------Config DAC-------//
    I2C_Write_Byte(AS7026GG_EAF_DAC);
    I2C_Write_Byte(0x2);                 //GPIO_DAC (2) DAC al GPIO1
    I2C_StartWR(ADD, 2, WRITE);
    //------DAC 1 Valor-------//
    I2C_Write_Byte(AS7026GG_EAF_DAC1_L);
    I2C_Write_Byte(0xC0);                //DAC1_VALUE 0x3FF (1.9[V])
    I2C_Write_Byte(0xFF);
    I2C_StartWR(ADD, 3, WRITE);
    //------Config del EAF-------//
    I2C_Write_Byte(AS7026GG_EAF_CFG);
    I2C_Write_Byte(0xF);                 //AFE_ENAB: Hab EAF bias
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
    I2C_Write_Byte(0xB8);                //ECG_EN, LP_EN, HP_EN, GAIN_EN
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ECG B-------//
    I2C_Write_Byte(AS7026GG_ECG_CFGB);
    I2C_Write_Byte(0x26);                //LP_Freq 80[Hz]
                                            //HP_Freq 0.33[Hz]
                                            //GAIN (6) x64
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ECG C-------//
    I2C_Write_Byte(AS7026GG_ECG_CFGC);
    I2C_Write_Byte(0x2);                 //REF_EN ECG Reference Feedback Amplifier Hab
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------Analog-Digital Converter (ADC)------
//******************************************
void Config_ADC(int ADD){
    //------Config ADC B-------//
    I2C_Write_Byte(AS7026GG_ADC_CFGB);
    I2C_Write_Byte(0x11);                //ADC_EN y ADC_CLOCK (2)=333[kHz]=3[us]
    I2C_StartWR(ADD, 2, WRITE);
    //------Config ADC C-------//
    I2C_Write_Byte(AS7026GG_ADC_CFGC);
    I2C_Write_Byte(0x1C);                //ADC_SELFPD Se apaga cada que no convierte el ADC
                                            //ADC_DISCHARGE Descarga Cap antes de tracking
                                            //ADC_SETTLING_TIME (4)= 32 Periodos = 3us*32 = 96us
    I2C_StartWR(ADD, 2, WRITE);
    //------Canales al ADC-------//
    I2C_Write_Byte(AS7026GG_ADC_CHANNEL_MASK_L);
//    I2C_Write_Byte(0x1);                //TIA
//    I2C_Write_Byte(0x81);               //TIA & Pregain
//    I2C_Write_Byte(0x84);               //SD1 OFE1 Before Gain Stage & Pregain
//    I2C_Write_Byte(0x6);                // OFE1 After Gain & Stage SD1 OFE1 Before Gain Stage
//    I2C_Write_Byte(0x3);                // TIA & OFE1 After Gain
    I2C_Write_Byte(0x82);                // OFE1 After Gain & Pregain
//    I2C_Write_Byte(0x42);                // OFE1 After Gain & Electrical Front End
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------------------FIFO--------------------
//******************************************
void Config_FIFO(int ADD){
    //------Configuración de FIFO-------//
    I2C_Write_Byte(AS7026GG_FIFO_CFG);
    I2C_Write_Byte(0);                  //Define la profundidad para interrupción de la FIFO a +1 datos 16b
    I2C_StartWR(ADD, 2, WRITE);
    //------Controlador del FIFO-------//
    I2C_Write_Byte(AS7026GG_FIFO_CNTRL);
    I2C_Write_Byte(0x1);                 //Limpia FIFO del sensor
    I2C_StartWR(ADD, 2, WRITE);
}

//******************************************
//------------Digital Interface-------------
//******************************************
void Config_GPIOs(int ADD){
    //------Config de Controlador-------//
    I2C_Write_Byte(AS7026GG_CONTROL);
    I2C_Write_Byte(0x3);                 //OSC_EN y LDO_EN
    I2C_StartWR(ADD, 2, WRITE);
    //------Config GPIOs-------//
    I2C_Write_Byte(AS7026GG_GPIO_A);
    I2C_Write_Byte(0x3);                 //GPIO0_A, GPIO1_A Hab modo analógico para GPIO0, GPIO1
    I2C_StartWR(ADD, 2, WRITE);
    //------Desactiva interrupción -------//
    I2C_Write_Byte(AS7026GG_STATUS);
    I2C_Write_Byte(0x10);                //(4) Desactiva interrupción por umbral FIFO
    I2C_StartWR(ADD, 2, WRITE);
    //------Config de Controlador-------//
    I2C_Write_Byte(AS7026GG_INTENAB);
    I2C_Write_Byte(0x10);                //(4) Interrupción por umbral FIFO
    I2C_StartWR(ADD, 2, WRITE);
}

//--------------------------------------------------------------------
//%%%%%%%%%%%%%%    CONFIGURACIÓN DEL SENSOR BIOMÉTRICO    %%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Biom_Config(void){
    while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
    //------Apagado del Secuenciador-------//
    I2C_Write_Byte(AS7026GG_SEQ_START);
    I2C_Write_Byte(0);                      //SEQ_START=0 Detiene el secuenciador
    I2C_StartWR(AS7026GG_ADD, 2, WRITE);
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
//%%%%%%%%%%%%%%%%%%%%%%%%%    CALIBRACIÓN    %%%%%%%%%%%%%%%%%%%%%%%%
//--------------------------------------------------------------------
void Biom_Calibration(uint16_t Mode, uint16_t Offset_Curr){
    uint32_t Curr;
    if(Mode==1){
        while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
        //------Apagado del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(0);                  //SEQ_START=0 Detiene el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Corriente Offset ON-------//
        I2C_Write_Byte(AS7026GG_PDOFFX_LEDON);
        I2C_Write_Byte(Offset_Curr);
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Inicio del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(1);                  //SEQ_START=1 Arranca el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        I2C_Stop();
    }
    else{
        while(I2CA_STR_R&0x1000){};             //Mientras el controlador esté ocupado BB
        //------Apagado del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(0);                  //SEQ_START=0 Detiene el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Config de los LEDs-------//
        I2C_Write_Byte(AS7026GG_LED_CFG);
        I2C_Write_Byte(0x40);                //SIGREF_EN para bloques analógicos
                                                //LED1_EN y LED4_EN Disable
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Config Corriente LED 1 (Verde)-------//
        I2C_Write_Byte(AS7026GG_LED1_CURRL);
        Curr=69+26*Offset_Curr;                 //7.5 [mA] + 2.5 [mA]*Offset
        I2C_Write_Byte((Curr<<6)&0xFF);      //Corriente al LED1
        I2C_Write_Byte((Curr>>2)&0xFF);      //Escritura a AS7026GG_LED1_CURRH
        I2C_StartWR(AS7026GG_ADD, 3, WRITE);
        //------Config de los LEDs-------//
        I2C_Write_Byte(AS7026GG_LED_CFG);
        I2C_Write_Byte(0x49);                //SIGREF_EN para bloques analógicos
                                                //LED1_EN y LED4_EN Enable
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        //------Inicio del Secuenciador-------//
        I2C_Write_Byte(AS7026GG_SEQ_START);
        I2C_Write_Byte(1);                  //SEQ_START=1 Arranca el secuenciador
        I2C_StartWR(AS7026GG_ADD, 2, WRITE);
        I2C_Stop();
    }
}
