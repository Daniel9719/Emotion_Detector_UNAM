#ifndef BIOM_AS7026GG_H_
#define BIOM_AS7026GG_H_

void Biom_Config(void);
void Biom_Calibration(uint16_t Mode, uint16_t Offset);

#define AS7026GG_ADD                0x30

//******************************************
//--------LED Configuration (LED)-----------
//******************************************
#define AS7026GG_LED_CFG            0x10
#define AS7026GG_LED1_CURRL         0x12
#define AS7026GG_LED1_CURRH         0x13
#define AS7026GG_LED2_CURRL         0x14
#define AS7026GG_LED2_CURRH         0x15
#define AS7026GG_LED3_CURRL         0x16
#define AS7026GG_LED3_CURRH         0x17
#define AS7026GG_LED4_CURRL         0x18
#define AS7026GG_LED4_CURRH         0x19
#define AS7026GG_LED12_MODE         0x2C
#define AS7026GG_LED34_MODE         0x2D
#define AS7026GG_MAN_SEQ_CFG        0x2E
#define AS7026GG_LEDSTATUS          0xA2

//******************************************
//--------Photodiode Selection (PD)---------
//******************************************
#define AS7026GG_PD_CFG             0x1A
#define AS7026GG_PDOFFX_LEDOFF      0x1B
#define AS7026GG_PDOFFX_LEDON       0x1C

//******************************************
//-Photodiode Transimpedance Amplifier (TIA)
//******************************************
#define AS7026GG_PD_AMPRCCFG        0x1D
#define AS7026GG_PD_AMPCFG          0x1E
#define AS7026GG_PD_THRESHCFG       0x1F

//******************************************
//-------------Sequencer (SEQ)--------------
//******************************************
#define AS7026GG_SEQ_CNT            0x30
#define AS7026GG_SEQ_DIV            0x31
#define AS7026GG_SEQ_START          0x32
#define AS7026GG_SEQ_PER            0x33
#define AS7026GG_SEQ_LED_STA        0x34
#define AS7026GG_SEQ_LED_STO        0x35
#define AS7026GG_SEQ_SECLED_STA     0x36
#define AS7026GG_SEQ_SECLED_STO     0x37
#define AS7026GG_SEQ_ITG_STA        0x38
#define AS7026GG_SEQ_ITG_STO        0x39
#define AS7026GG_SEQ_SDP1_STA       0x3A
#define AS7026GG_SEQ_SDP1_STO       0x3B
#define AS7026GG_SEQ_SDP2_STA       0x3C
#define AS7026GG_SEQ_SDP2_STO       0x3D
#define AS7026GG_SEQ_SDM1_STA       0x3E
#define AS7026GG_SEQ_SDM1_STO       0x3F
#define AS7026GG_SEQ_SDM2_STA       0x40
#define AS7026GG_SEQ_SDM2_STO       0x41
#define AS7026GG_SEQ_ADC            0x42
#define AS7026GG_SEQ_ADC2TIA        0x43
#define AS7026GG_SEQ_ADC3TIA        0x44
#define AS7026GG_SD_SUBS            0x45
#define AS7026GG_SEQ_CFG            0x46
#define AS7026GG_SEQ_ERR            0x47
#define AS7026GG_CYC_COUNTER        0x60
#define AS7026GG_SEQ_COUNTER        0x61
#define AS7026GG_SUBS_COUNTER       0x62

//******************************************
//----Optical Signal Conditioning (OFE)-----
//******************************************
#define AS7026GG_OFE_CFGA           0x50
#define AS7026GG_OFE_CFGB           0x51
#define AS7026GG_OFE_CFGC           0x52
#define AS7026GG_OFE_CFGD           0x53
#define AS7026GG_OFE1_CFGA          0x54
#define AS7026GG_OFE1_CFGB          0x55
#define AS7026GG_OFE2_CFGA          0x58
#define AS7026GG_OFE2_CFGB          0x59

//******************************************
//------Light-to-Frequency Mode (LTF)-------
//******************************************
#define AS7026GG_LTFDATA0_L         0x20
#define AS7026GG_LTFDATA0_H         0x21
#define AS7026GG_LTFDATA1_L         0x22
#define AS7026GG_LTFDATA1_H         0x23
#define AS7026GG_ITIME              0x24
#define AS7026GG_LTF_CONFIG         0x25
#define AS7026GG_LTF_SEL            0x26
#define AS7026GG_LTF_GAIN           0x27
#define AS7026GG_LTF_CONTROL        0x28
#define AS7026GG_AZ_CONTROL         0x29
#define AS7026GG_OFFSET0            0x2A
#define AS7026GG_OFFSET1            0x2B
#define AS7026GG_AFE_CFG            0x70

//******************************************
//-----Electrical Analog Frontend (EAF)-----
//******************************************
#define AS7026GG_EAF_CFG            0x70
#define AS7026GG_EAF_GST            0x80
#define AS7026GG_EAF_BIAS           0x81
#define AS7026GG_EAF_DAC            0x82
#define AS7026GG_EAF_DAC1_L         0x83
#define AS7026GG_EAF_DAC1_H         0x84
#define AS7026GG_EAF_DAC2_L         0x85
#define AS7026GG_EAF_DAC2_H         0x86
#define AS7026GG_EAF_DAC_CFG        0x87

//******************************************
//-----------Electrocardiogram (ECG)-------
//******************************************
#define AS7026GG_ECG_CFGA         0x5C
#define AS7026GG_ECG_CFGB         0x5D
#define AS7026GG_ECG_CFGC         0x5E
#define AS7026GG_ECG_CFGD         0x5F

//******************************************
//------Analog-Digital Converter (ADC)------
//******************************************
#define AS7026GG_ADC_THRESHOLD    0x68
#define AS7026GG_ADC_THRESHOLD_CFG    0x69
#define AS7026GG_ADC_CFGA         0x88
#define AS7026GG_ADC_CFGB         0x89
#define AS7026GG_ADC_CFGC         0x8A
#define AS7026GG_ADC_CHANNEL_MASK_L   0x8B
#define AS7026GG_ADC_CHANNEL_MASK_H   0x8C
#define AS7026GG_ADC_DATA_L       0x8E
#define AS7026GG_ADC_DATA_H       0x8F

//******************************************
//------------------FIFO--------------------
//******************************************
#define AS7026GG_FIFO_CFG         0x78
#define AS7026GG_FIFO_CNTRL       0x79
#define AS7026GG_FIFOSTATUS       0xA3
#define AS7026GG_FIFOL            0xFE
#define AS7026GG_FIFOH            0xFF

//******************************************
//------------Digital Interface-------------
//******************************************
#define AS7026GG_CONTROL          0x00
#define AS7026GG_GPIO_A           0x08
#define AS7026GG_GPIO_E           0x09
#define AS7026GG_GPIO_O           0x0A
#define AS7026GG_GPIO_I           0x0B
#define AS7026GG_GPIO_P           0x0C
#define AS7026GG_GPIO_SR          0x0D
#define AS7026GG_SUBID            0x91
#define AS7026GG_ID               0x92
#define AS7026GG_STATUS           0xA0
#define AS7026GG_CLIPSTATUS       0xA1
#define AS7026GG_LEDSTATUS        0xA2
#define AS7026GG_INTENAB          0xA8
#define AS7026GG_INTR             0xA9

#endif /* BIOM_AS7026GG_H_ */
