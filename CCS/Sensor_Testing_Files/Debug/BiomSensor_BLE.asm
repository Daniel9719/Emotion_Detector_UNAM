;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v18.12.4.LTS *
;* Date/Time created: Fri Apr 16 15:06:09 2021                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../BiomSensor_BLE.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v18.12.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\danie\Documents\Tesis\Emotion_Detector_UNAM\CCS\Sensor_Testing_Files\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_SCI_RxAvail+0,32
	.bits		0x1,16
			; _SCI_RxAvail @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_SCI_TxAvail+0,32
	.bits		0x1,16
			; _SCI_TxAvail @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_SCI_Mode+0,32
	.bits		0,16
			; _SCI_Mode @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_i$1+0,32
	.bits		0,16
			; _i$1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_j$2+0,32
	.bits		0,16
			; _j$2 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_k$3+0,32
	.bits		0x4,16
			; _k$3 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Conmut$4+0,32
	.bits		0x1,16
			; _Conmut$4 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Clb_Windw$5+0,32
	.bits		0,16
			; _Clb_Windw$5 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Clb_Mode$6+0,32
	.bits		0x1,16
			; _Clb_Mode$6 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Offset$7+0,32
	.bits		0x7,16
			; _Offset$7 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_Current$8+0,32
	.bits		0,16
			; _Current$8 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_RxType$14+0,32
	.bits		0x1,16
			; _RxType$14 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Clb_Max$9+0,32
	.bits		0,32
			; _Clb_Max$9 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Clb_Min$10+0,32
	.bits		0x3fff,32
			; _Clb_Min$10 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_Clb_Ampl$11+0,32
	.bits		0,32
			; _Clb_Ampl$11 @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_SCI_RxPt$13+0,32
	.bits	_SCI_RxData$12,32		; _SCI_RxPt$13 @ 0

	.sect	".cinit:_coef_FIR_EDA"
	.clink
	.align	1
	.field  	-$C$IR_1,16
	.field  	_coef_FIR_EDA+0,32
	.bits		0xfff0,16
			; _coef_FIR_EDA[0] @ 0
	.bits		0xfff0,16
			; _coef_FIR_EDA[1] @ 16
	.bits		0xfff2,16
			; _coef_FIR_EDA[2] @ 32
	.bits		0xfff5,16
			; _coef_FIR_EDA[3] @ 48
	.bits		0xfff8,16
			; _coef_FIR_EDA[4] @ 64
	.bits		0xfffc,16
			; _coef_FIR_EDA[5] @ 80
	.bits		0xfffe,16
			; _coef_FIR_EDA[6] @ 96
	.bits		0,16
			; _coef_FIR_EDA[7] @ 112
	.bits		0,16
			; _coef_FIR_EDA[8] @ 128
	.bits		0xfffe,16
			; _coef_FIR_EDA[9] @ 144
	.bits		0xfffa,16
			; _coef_FIR_EDA[10] @ 160
	.bits		0xfff4,16
			; _coef_FIR_EDA[11] @ 176
	.bits		0xffee,16
			; _coef_FIR_EDA[12] @ 192
	.bits		0xffe8,16
			; _coef_FIR_EDA[13] @ 208
	.bits		0xffe3,16
			; _coef_FIR_EDA[14] @ 224
	.bits		0xffe0,16
			; _coef_FIR_EDA[15] @ 240
	.bits		0xffe0,16
			; _coef_FIR_EDA[16] @ 256
	.bits		0xffe3,16
			; _coef_FIR_EDA[17] @ 272
	.bits		0xffe9,16
			; _coef_FIR_EDA[18] @ 288
	.bits		0xfff0,16
			; _coef_FIR_EDA[19] @ 304
	.bits		0xfff7,16
			; _coef_FIR_EDA[20] @ 320
	.bits		0xfffd,16
			; _coef_FIR_EDA[21] @ 336
	.bits		0,16
			; _coef_FIR_EDA[22] @ 352
	.bits		0xffff,16
			; _coef_FIR_EDA[23] @ 368
	.bits		0xfff9,16
			; _coef_FIR_EDA[24] @ 384
	.bits		0xffee,16
			; _coef_FIR_EDA[25] @ 400
	.bits		0xffe0,16
			; _coef_FIR_EDA[26] @ 416
	.bits		0xffd0,16
			; _coef_FIR_EDA[27] @ 432
	.bits		0xffc2,16
			; _coef_FIR_EDA[28] @ 448
	.bits		0xffb7,16
			; _coef_FIR_EDA[29] @ 464
	.bits		0xffb2,16
			; _coef_FIR_EDA[30] @ 480
	.bits		0xffb4,16
			; _coef_FIR_EDA[31] @ 496
	.bits		0xffbd,16
			; _coef_FIR_EDA[32] @ 512
	.bits		0xffcc,16
			; _coef_FIR_EDA[33] @ 528
	.bits		0xffdf,16
			; _coef_FIR_EDA[34] @ 544
	.bits		0xfff1,16
			; _coef_FIR_EDA[35] @ 560
	.bits		0xffff,16
			; _coef_FIR_EDA[36] @ 576
	.bits		0x5,16
			; _coef_FIR_EDA[37] @ 592
	.bits		0,16
			; _coef_FIR_EDA[38] @ 608
	.bits		0xfff1,16
			; _coef_FIR_EDA[39] @ 624
	.bits		0xffd7,16
			; _coef_FIR_EDA[40] @ 640
	.bits		0xffb7,16
			; _coef_FIR_EDA[41] @ 656
	.bits		0xff96,16
			; _coef_FIR_EDA[42] @ 672
	.bits		0xff78,16
			; _coef_FIR_EDA[43] @ 688
	.bits		0xff64,16
			; _coef_FIR_EDA[44] @ 704
	.bits		0xff5e,16
			; _coef_FIR_EDA[45] @ 720
	.bits		0xff68,16
			; _coef_FIR_EDA[46] @ 736
	.bits		0xff81,16
			; _coef_FIR_EDA[47] @ 752
	.bits		0xffa5,16
			; _coef_FIR_EDA[48] @ 768
	.bits		0xffcf,16
			; _coef_FIR_EDA[49] @ 784
	.bits		0xfff5,16
			; _coef_FIR_EDA[50] @ 800
	.bits		0x11,16
			; _coef_FIR_EDA[51] @ 816
	.bits		0x1b,16
			; _coef_FIR_EDA[52] @ 832
	.bits		0xf,16
			; _coef_FIR_EDA[53] @ 848
	.bits		0xffed,16
			; _coef_FIR_EDA[54] @ 864
	.bits		0xffb8,16
			; _coef_FIR_EDA[55] @ 880
	.bits		0xff78,16
			; _coef_FIR_EDA[56] @ 896
	.bits		0xff37,16
			; _coef_FIR_EDA[57] @ 912
	.bits		0xff02,16
			; _coef_FIR_EDA[58] @ 928
	.bits		0xfee1,16
			; _coef_FIR_EDA[59] @ 944
	.bits		0xfede,16
			; _coef_FIR_EDA[60] @ 960
	.bits		0xfefb,16
			; _coef_FIR_EDA[61] @ 976
	.bits		0xff34,16
			; _coef_FIR_EDA[62] @ 992
	.bits		0xff82,16
			; _coef_FIR_EDA[63] @ 1008
	.bits		0xffd6,16
			; _coef_FIR_EDA[64] @ 1024
	.bits		0x22,16
			; _coef_FIR_EDA[65] @ 1040
	.bits		0x56,16
			; _coef_FIR_EDA[66] @ 1056
	.bits		0x65,16
			; _coef_FIR_EDA[67] @ 1072
	.bits		0x48,16
			; _coef_FIR_EDA[68] @ 1088
	.bits		0x1,16
			; _coef_FIR_EDA[69] @ 1104
	.bits		0xff97,16
			; _coef_FIR_EDA[70] @ 1120
	.bits		0xff1a,16
			; _coef_FIR_EDA[71] @ 1136
	.bits		0xfea0,16
			; _coef_FIR_EDA[72] @ 1152
	.bits		0xfe3e,16
			; _coef_FIR_EDA[73] @ 1168
	.bits		0xfe0a,16
			; _coef_FIR_EDA[74] @ 1184
	.bits		0xfe10,16
			; _coef_FIR_EDA[75] @ 1200
	.bits		0xfe57,16
			; _coef_FIR_EDA[76] @ 1216
	.bits		0xfed7,16
			; _coef_FIR_EDA[77] @ 1232
	.bits		0xff7f,16
			; _coef_FIR_EDA[78] @ 1248
	.bits		0x33,16
			; _coef_FIR_EDA[79] @ 1264
	.bits		0xd3,16
			; _coef_FIR_EDA[80] @ 1280
	.bits		0x13f,16
			; _coef_FIR_EDA[81] @ 1296
	.bits		0x15c,16
			; _coef_FIR_EDA[82] @ 1312
	.bits		0x118,16
			; _coef_FIR_EDA[83] @ 1328
	.bits		0x73,16
			; _coef_FIR_EDA[84] @ 1344
	.bits		0xff7d,16
			; _coef_FIR_EDA[85] @ 1360
	.bits		0xfe57,16
			; _coef_FIR_EDA[86] @ 1376
	.bits		0xfd2e,16
			; _coef_FIR_EDA[87] @ 1392
	.bits		0xfc38,16
			; _coef_FIR_EDA[88] @ 1408
	.bits		0xfbab,16
			; _coef_FIR_EDA[89] @ 1424
	.bits		0xfbb7,16
			; _coef_FIR_EDA[90] @ 1440
	.bits		0xfc7b,16
			; _coef_FIR_EDA[91] @ 1456
	.bits		0xfe02,16
			; _coef_FIR_EDA[92] @ 1472
	.bits		0x3d,16
			; _coef_FIR_EDA[93] @ 1488
	.bits		0x308,16
			; _coef_FIR_EDA[94] @ 1504
	.bits		0x627,16
			; _coef_FIR_EDA[95] @ 1520
	.bits		0x94f,16
			; _coef_FIR_EDA[96] @ 1536
	.bits		0xc31,16
			; _coef_FIR_EDA[97] @ 1552
	.bits		0xe80,16
			; _coef_FIR_EDA[98] @ 1568
	.bits		0xfff,16
			; _coef_FIR_EDA[99] @ 1584
	.bits		0x1083,16
			; _coef_FIR_EDA[100] @ 1600
$C$IR_1:	.set	101

	.sect	".cinit:_coef_FIR_PPG"
	.clink
	.align	1
	.field  	-$C$IR_2,16
	.field  	_coef_FIR_PPG+0,32
	.bits		0xfff0,16
			; _coef_FIR_PPG[0] @ 0
	.bits		0xfff0,16
			; _coef_FIR_PPG[1] @ 16
	.bits		0xffef,16
			; _coef_FIR_PPG[2] @ 32
	.bits		0xffef,16
			; _coef_FIR_PPG[3] @ 48
	.bits		0xffef,16
			; _coef_FIR_PPG[4] @ 64
	.bits		0xffef,16
			; _coef_FIR_PPG[5] @ 80
	.bits		0xfff0,16
			; _coef_FIR_PPG[6] @ 96
	.bits		0xfff0,16
			; _coef_FIR_PPG[7] @ 112
	.bits		0xfff1,16
			; _coef_FIR_PPG[8] @ 128
	.bits		0xfff2,16
			; _coef_FIR_PPG[9] @ 144
	.bits		0xfff3,16
			; _coef_FIR_PPG[10] @ 160
	.bits		0xfff5,16
			; _coef_FIR_PPG[11] @ 176
	.bits		0xfff6,16
			; _coef_FIR_PPG[12] @ 192
	.bits		0xfff8,16
			; _coef_FIR_PPG[13] @ 208
	.bits		0xfffa,16
			; _coef_FIR_PPG[14] @ 224
	.bits		0xfffb,16
			; _coef_FIR_PPG[15] @ 240
	.bits		0xfffd,16
			; _coef_FIR_PPG[16] @ 256
	.bits		0xfffe,16
			; _coef_FIR_PPG[17] @ 272
	.bits		0xffff,16
			; _coef_FIR_PPG[18] @ 288
	.bits		0,16
			; _coef_FIR_PPG[19] @ 304
	.bits		0,16
			; _coef_FIR_PPG[20] @ 320
	.bits		0xffff,16
			; _coef_FIR_PPG[21] @ 336
	.bits		0xfffe,16
			; _coef_FIR_PPG[22] @ 352
	.bits		0xfffb,16
			; _coef_FIR_PPG[23] @ 368
	.bits		0xfff8,16
			; _coef_FIR_PPG[24] @ 384
	.bits		0xfff4,16
			; _coef_FIR_PPG[25] @ 400
	.bits		0xffee,16
			; _coef_FIR_PPG[26] @ 416
	.bits		0xffe7,16
			; _coef_FIR_PPG[27] @ 432
	.bits		0xffe0,16
			; _coef_FIR_PPG[28] @ 448
	.bits		0xffd7,16
			; _coef_FIR_PPG[29] @ 464
	.bits		0xffce,16
			; _coef_FIR_PPG[30] @ 480
	.bits		0xffc4,16
			; _coef_FIR_PPG[31] @ 496
	.bits		0xffba,16
			; _coef_FIR_PPG[32] @ 512
	.bits		0xffb0,16
			; _coef_FIR_PPG[33] @ 528
	.bits		0xffa6,16
			; _coef_FIR_PPG[34] @ 544
	.bits		0xff9d,16
			; _coef_FIR_PPG[35] @ 560
	.bits		0xff95,16
			; _coef_FIR_PPG[36] @ 576
	.bits		0xff8e,16
			; _coef_FIR_PPG[37] @ 592
	.bits		0xff88,16
			; _coef_FIR_PPG[38] @ 608
	.bits		0xff84,16
			; _coef_FIR_PPG[39] @ 624
	.bits		0xff82,16
			; _coef_FIR_PPG[40] @ 640
	.bits		0xff83,16
			; _coef_FIR_PPG[41] @ 656
	.bits		0xff86,16
			; _coef_FIR_PPG[42] @ 672
	.bits		0xff8b,16
			; _coef_FIR_PPG[43] @ 688
	.bits		0xff93,16
			; _coef_FIR_PPG[44] @ 704
	.bits		0xff9d,16
			; _coef_FIR_PPG[45] @ 720
	.bits		0xffa9,16
			; _coef_FIR_PPG[46] @ 736
	.bits		0xffb7,16
			; _coef_FIR_PPG[47] @ 752
	.bits		0xffc6,16
			; _coef_FIR_PPG[48] @ 768
	.bits		0xffd6,16
			; _coef_FIR_PPG[49] @ 784
	.bits		0xffe6,16
			; _coef_FIR_PPG[50] @ 800
	.bits		0xfff5,16
			; _coef_FIR_PPG[51] @ 816
	.bits		0x3,16
			; _coef_FIR_PPG[52] @ 832
	.bits		0x10,16
			; _coef_FIR_PPG[53] @ 848
	.bits		0x19,16
			; _coef_FIR_PPG[54] @ 864
	.bits		0x20,16
			; _coef_FIR_PPG[55] @ 880
	.bits		0x22,16
			; _coef_FIR_PPG[56] @ 896
	.bits		0x20,16
			; _coef_FIR_PPG[57] @ 912
	.bits		0x19,16
			; _coef_FIR_PPG[58] @ 928
	.bits		0xd,16
			; _coef_FIR_PPG[59] @ 944
	.bits		0xfffb,16
			; _coef_FIR_PPG[60] @ 960
	.bits		0xffe4,16
			; _coef_FIR_PPG[61] @ 976
	.bits		0xffc7,16
			; _coef_FIR_PPG[62] @ 992
	.bits		0xffa5,16
			; _coef_FIR_PPG[63] @ 1008
	.bits		0xff7f,16
			; _coef_FIR_PPG[64] @ 1024
	.bits		0xff56,16
			; _coef_FIR_PPG[65] @ 1040
	.bits		0xff29,16
			; _coef_FIR_PPG[66] @ 1056
	.bits		0xfefb,16
			; _coef_FIR_PPG[67] @ 1072
	.bits		0xfecd,16
			; _coef_FIR_PPG[68] @ 1088
	.bits		0xfea0,16
			; _coef_FIR_PPG[69] @ 1104
	.bits		0xfe76,16
			; _coef_FIR_PPG[70] @ 1120
	.bits		0xfe50,16
			; _coef_FIR_PPG[71] @ 1136
	.bits		0xfe30,16
			; _coef_FIR_PPG[72] @ 1152
	.bits		0xfe17,16
			; _coef_FIR_PPG[73] @ 1168
	.bits		0xfe07,16
			; _coef_FIR_PPG[74] @ 1184
	.bits		0xfe01,16
			; _coef_FIR_PPG[75] @ 1200
	.bits		0xfe06,16
			; _coef_FIR_PPG[76] @ 1216
	.bits		0xfe18,16
			; _coef_FIR_PPG[77] @ 1232
	.bits		0xfe37,16
			; _coef_FIR_PPG[78] @ 1248
	.bits		0xfe63,16
			; _coef_FIR_PPG[79] @ 1264
	.bits		0xfe9e,16
			; _coef_FIR_PPG[80] @ 1280
	.bits		0xfee6,16
			; _coef_FIR_PPG[81] @ 1296
	.bits		0xff3b,16
			; _coef_FIR_PPG[82] @ 1312
	.bits		0xff9c,16
			; _coef_FIR_PPG[83] @ 1328
	.bits		0x9,16
			; _coef_FIR_PPG[84] @ 1344
	.bits		0x80,16
			; _coef_FIR_PPG[85] @ 1360
	.bits		0xfe,16
			; _coef_FIR_PPG[86] @ 1376
	.bits		0x183,16
			; _coef_FIR_PPG[87] @ 1392
	.bits		0x20c,16
			; _coef_FIR_PPG[88] @ 1408
	.bits		0x297,16
			; _coef_FIR_PPG[89] @ 1424
	.bits		0x320,16
			; _coef_FIR_PPG[90] @ 1440
	.bits		0x3a7,16
			; _coef_FIR_PPG[91] @ 1456
	.bits		0x427,16
			; _coef_FIR_PPG[92] @ 1472
	.bits		0x49f,16
			; _coef_FIR_PPG[93] @ 1488
	.bits		0x50c,16
			; _coef_FIR_PPG[94] @ 1504
	.bits		0x56d,16
			; _coef_FIR_PPG[95] @ 1520
	.bits		0x5bf,16
			; _coef_FIR_PPG[96] @ 1536
	.bits		0x600,16
			; _coef_FIR_PPG[97] @ 1552
	.bits		0x630,16
			; _coef_FIR_PPG[98] @ 1568
	.bits		0x64d,16
			; _coef_FIR_PPG[99] @ 1584
	.bits		0x657,16
			; _coef_FIR_PPG[100] @ 1600
$C$IR_2:	.set	101


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("I2C_Write_Byte")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_I2C_Write_Byte")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("I2C_StartWR")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_I2C_StartWR")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$10)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$31)

	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("I2C_Stop")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_I2C_Stop")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Biom_Calibration")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_Biom_Calibration")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$28)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$28)

	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SCIB_WData")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_SCIB_WData")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("SCIB_Read")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_SCIB_Read")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$37)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("Clean_Reg")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_Clean_Reg")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$37)

	.dwendtag $C$DW$14


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("HM10_Config")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_HM10_Config")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwendtag $C$DW$16


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("Biom_Config")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Biom_Config")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwendtag $C$DW$17

	.global	_SCI_State
_SCI_State:	.usect	".ebss",1,1,0
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("SCI_State")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_SCI_State")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _SCI_State]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$18, DW_AT_external

	.global	_SCI_RxAvail
_SCI_RxAvail:	.usect	".ebss",1,1,0
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("SCI_RxAvail")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_SCI_RxAvail")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _SCI_RxAvail]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$19, DW_AT_external

	.global	_SCI_TxAvail
_SCI_TxAvail:	.usect	".ebss",1,1,0
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("SCI_TxAvail")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_SCI_TxAvail")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _SCI_TxAvail]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$20, DW_AT_external

	.global	_SCI_Data
_SCI_Data:	.usect	".ebss",1,1,0
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("SCI_Data")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_SCI_Data")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _SCI_Data]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$21, DW_AT_external

	.global	_SCI_Mode
_SCI_Mode:	.usect	".ebss",1,1,0
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("SCI_Mode")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_SCI_Mode")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _SCI_Mode]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$22, DW_AT_external


$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("firFilter")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_firFilter")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$42)

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$42)

	.dwendtag $C$DW$23

_i$1:	.usect	".ebss",1,1,0
_j$2:	.usect	".ebss",1,1,0
_k$3:	.usect	".ebss",1,1,0
_Conmut$4:	.usect	".ebss",1,1,0
_Clb_Windw$5:	.usect	".ebss",1,1,0
_Clb_Mode$6:	.usect	".ebss",1,1,0
_Offset$7:	.usect	".ebss",1,1,0
_Current$8:	.usect	".ebss",1,1,0

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("I2C_Read_Byte")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_I2C_Read_Byte")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwendtag $C$DW$28

_RxType$14:	.usect	".ebss",1,1,0
	.global	_SCI_StartPt
_SCI_StartPt:	.usect	".ebss",2,1,1
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("SCI_StartPt")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_SCI_StartPt")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _SCI_StartPt]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$29, DW_AT_external

	.global	_SCI_EndPt
_SCI_EndPt:	.usect	".ebss",2,1,1
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("SCI_EndPt")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_SCI_EndPt")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _SCI_EndPt]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$30, DW_AT_external

	.global	_Raw
_Raw:	.usect	".ebss",2,1,0
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("Raw")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_Raw")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _Raw]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$31, DW_AT_external

_Clb_Max$9:	.usect	".ebss",2,1,1
_Clb_Min$10:	.usect	".ebss",2,1,1
_Clb_Ampl$11:	.usect	".ebss",2,1,1
_SCI_RxPt$13:	.usect	".ebss",2,1,1

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("strstr")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_strstr")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$59)

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$59)

	.dwendtag $C$DW$32

	.global	_Biom1
_Biom1:	.usect	".ebss",10,1,0
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("Biom1")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_Biom1")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr _Biom1]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$35, DW_AT_external

_SCI_RxData$12:	.usect	".ebss:_SCI_RxData$12",26,1,0
	.clink ".ebss:_SCI_RxData$12"
	.global	_coef_FIR_EDA
_coef_FIR_EDA:	.usect	".ebss:_coef_FIR_EDA",101,1,0
	.clink ".ebss:_coef_FIR_EDA"
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("coef_FIR_EDA")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_coef_FIR_EDA")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _coef_FIR_EDA]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$36, DW_AT_external

	.global	_coef_FIR_PPG
_coef_FIR_PPG:	.usect	".ebss:_coef_FIR_PPG",101,1,0
	.clink ".ebss:_coef_FIR_PPG"
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("coef_FIR_PPG")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_coef_FIR_PPG")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _coef_FIR_PPG]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$37, DW_AT_external

	.global	_xb_EDA
_xb_EDA:	.usect	".ebss:_xb_EDA",201,1,0
	.clink ".ebss:_xb_EDA"
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("xb_EDA")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_xb_EDA")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _xb_EDA]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$38, DW_AT_external

	.global	_xb_PPG
_xb_PPG:	.usect	".ebss:_xb_PPG",201,1,0
	.clink ".ebss:_xb_PPG"
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("xb_PPG")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_xb_PPG")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _xb_PPG]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$39, DW_AT_external

	.sblock	".ebss"
	.sblock	".ebss:_SCI_RxData$12"
	.sblock	".ebss:_coef_FIR_EDA"
	.sblock	".ebss:_coef_FIR_PPG"
	.sblock	".ebss:_xb_EDA"
	.sblock	".ebss:_xb_PPG"
;	C:\ti\ccs910\ccs\tools\compiler\ti-cgt-c2000_18.12.4.LTS\bin\ac2000.exe -@C:\\Users\\danie\\AppData\\Local\\Temp\\{81ECBBEA-8290-41BA-8F33-DC0E9662A0C7} 
	.sect	".text"
	.clink
	.global	_FIR_EDA

$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("FIR_EDA")
	.dwattr $C$DW$40, DW_AT_low_pc(_FIR_EDA)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_FIR_EDA")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_TI_begin_file("..\filtro.h")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x14)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\filtro.h",line 20,column 19,is_stmt,address _FIR_EDA,isa 0

	.dwfde $C$DW$CIE, _FIR_EDA
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_name("x")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _FIR_EDA                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_FIR_EDA:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("x")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg20 -1]

$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("y_int")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_y_int")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[1],AL            ; [CPU_ALU] |20| 
	.dwpsn	file "..\filtro.h",line 22,column 5,is_stmt,isa 0
        MOVL      XAR4,#_coef_FIR_EDA   ; [CPU_ARAU] |22| 
        MOVL      XAR5,#_xb_EDA         ; [CPU_ARAU] |22| 
        MOVB      AH,#101               ; [CPU_ALU] |22| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_firFilter")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #_firFilter           ; [CPU_ALU] |22| 
        ; call occurs [#_firFilter] ; [] |22| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |22| 
	.dwpsn	file "..\filtro.h",line 23,column 5,is_stmt,isa 0
	.dwpsn	file "..\filtro.h",line 24,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("..\filtro.h")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x18)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.clink
	.global	_FIR_PPG

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("FIR_PPG")
	.dwattr $C$DW$46, DW_AT_low_pc(_FIR_PPG)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_FIR_PPG")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_TI_begin_file("..\filtro.h")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "..\filtro.h",line 27,column 19,is_stmt,address _FIR_PPG,isa 0

	.dwfde $C$DW$CIE, _FIR_PPG
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("x")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _FIR_PPG                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_FIR_PPG:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("x")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -1]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("y_int")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_y_int")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -2]

        MOV       *-SP[1],AL            ; [CPU_ALU] |27| 
	.dwpsn	file "..\filtro.h",line 29,column 5,is_stmt,isa 0
        MOVL      XAR4,#_coef_FIR_PPG   ; [CPU_ARAU] |29| 
        MOVL      XAR5,#_xb_PPG         ; [CPU_ARAU] |29| 
        MOVB      AH,#101               ; [CPU_ALU] |29| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_firFilter")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #_firFilter           ; [CPU_ALU] |29| 
        ; call occurs [#_firFilter] ; [] |29| 
        MOV       *-SP[2],AL            ; [CPU_ALU] |29| 
	.dwpsn	file "..\filtro.h",line 30,column 5,is_stmt,isa 0
	.dwpsn	file "..\filtro.h",line 31,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("..\filtro.h")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x1f)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:retain"
	.retain
	.retainrefs
	.global	_Inter_GPIO22

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("Inter_GPIO22")
	.dwattr $C$DW$52, DW_AT_low_pc(_Inter_GPIO22)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_Inter_GPIO22")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x23)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$52, DW_AT_TI_interrupt
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "../BiomSensor_BLE.c",line 35,column 37,is_stmt,address _Inter_GPIO22,isa 0

	.dwfde $C$DW$CIE, _Inter_GPIO22

;***************************************************************
;* FNAME: _Inter_GPIO22                 FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

_Inter_GPIO22:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../BiomSensor_BLE.c",line 36,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |36| 
        MOVL      XAR4,#3297            ; [CPU_ARAU] |36| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |36| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |36| 
	.dwpsn	file "../BiomSensor_BLE.c",line 37,column 5,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |37| 
$C$L1:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |37| 
        B         $C$L1,TC              ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
	.dwpsn	file "../BiomSensor_BLE.c",line 38,column 5,is_stmt,isa 0
        MOVB      AL,#254               ; [CPU_ALU] |38| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |38| 
        ; call occurs [#_I2C_Write_Byte] ; [] |38| 
	.dwpsn	file "../BiomSensor_BLE.c",line 39,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |39| 
        MOVB      XAR4,#1               ; [CPU_ALU] |39| 
        MOVB      AH,#1                 ; [CPU_ALU] |39| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |39| 
        ; call occurs [#_I2C_StartWR] ; [] |39| 
	.dwpsn	file "../BiomSensor_BLE.c",line 40,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |40| 
        MOVB      XAR4,#0               ; [CPU_ALU] |40| 
        MOVB      AH,#2                 ; [CPU_ALU] |40| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |40| 
        ; call occurs [#_I2C_StartWR] ; [] |40| 
	.dwpsn	file "../BiomSensor_BLE.c",line 41,column 5,is_stmt,isa 0
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |41| 
        ; call occurs [#_I2C_Stop] ; [] |41| 
	.dwpsn	file "../BiomSensor_BLE.c",line 42,column 1,is_stmt,isa 0
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text:retain"
	.retain
	.retainrefs
	.global	_Inter_I2CA

$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("Inter_I2CA")
	.dwattr $C$DW$58, DW_AT_low_pc(_Inter_I2CA)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_Inter_I2CA")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$58, DW_AT_TI_interrupt
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "../BiomSensor_BLE.c",line 47,column 35,is_stmt,address _Inter_I2CA,isa 0

	.dwfde $C$DW$CIE, _Inter_I2CA
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("i")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_i$1")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _i$1]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("j")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_j$2")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _j$2]

$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("k")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_k$3")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _k$3]

$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("Conmut")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_Conmut$4")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _Conmut$4]

$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("Clb_Windw")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_Clb_Windw$5")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _Clb_Windw$5]

$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("Clb_Mode")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_Clb_Mode$6")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _Clb_Mode$6]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("Offset")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_Offset$7")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr _Offset$7]

$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("Current")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_Current$8")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _Current$8]

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("Clb_Max")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_Clb_Max$9")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _Clb_Max$9]

$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("Clb_Min")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_Clb_Min$10")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _Clb_Min$10]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("Clb_Ampl")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_Clb_Ampl$11")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _Clb_Ampl$11]


;***************************************************************
;* FNAME: _Inter_I2CA                   FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

_Inter_I2CA:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../BiomSensor_BLE.c",line 54,column 5,is_stmt,isa 0
        MOVW      DP,#_Conmut$4         ; [CPU_ARAU] 
        MOV       AL,@_Conmut$4         ; [CPU_ALU] |54| 
        B         $C$L3,EQ              ; [CPU_ALU] |54| 
        ; branchcc occurs ; [] |54| 
	.dwpsn	file "../BiomSensor_BLE.c",line 56,column 9,is_stmt,isa 0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_I2C_Read_Byte")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_I2C_Read_Byte       ; [CPU_ALU] |56| 
        ; call occurs [#_I2C_Read_Byte] ; [] |56| 
        MOVW      DP,#_Raw              ; [CPU_ARAU] 
        ASR       AL,2                  ; [CPU_ALU] |56| 
        MOV       @_Raw,AL              ; [CPU_ALU] |56| 
	.dwpsn	file "../BiomSensor_BLE.c",line 57,column 9,is_stmt,isa 0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_I2C_Read_Byte")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #_I2C_Read_Byte       ; [CPU_ALU] |57| 
        ; call occurs [#_I2C_Read_Byte] ; [] |57| 
        MOVW      DP,#_Raw              ; [CPU_ARAU] 
        MOV       ACC,AL << #6          ; [CPU_ALU] |57| 
        OR        @_Raw,AL              ; [CPU_ALU] |57| 
	.dwpsn	file "../BiomSensor_BLE.c",line 58,column 9,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |58| 
        CMPB      AL,#2                 ; [CPU_ALU] |58| 
        B         $C$L2,NEQ             ; [CPU_ALU] |58| 
        ; branchcc occurs ; [] |58| 
	.dwpsn	file "../BiomSensor_BLE.c",line 59,column 13,is_stmt,isa 0
        MOV       AL,@_Raw              ; [CPU_ALU] |59| 
        SETC      SXM                   ; [CPU_ALU] 
        MAX       AL,@_Clb_Max$9        ; [CPU_ALU] |59| 
        MOV       ACC,AL                ; [CPU_ALU] |59| 
        MOVL      @_Clb_Max$9,ACC       ; [CPU_ALU] |59| 
	.dwpsn	file "../BiomSensor_BLE.c",line 60,column 13,is_stmt,isa 0
        MOV       AL,@_Raw              ; [CPU_ALU] |60| 
        MIN       AL,@_Clb_Min$10       ; [CPU_ALU] |60| 
        MOV       ACC,AL                ; [CPU_ALU] |60| 
        MOVL      @_Clb_Min$10,ACC      ; [CPU_ALU] |60| 
$C$L2:    
	.dwpsn	file "../BiomSensor_BLE.c",line 62,column 9,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |62| 
        B         $C$L5,NEQ             ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
	.dwpsn	file "../BiomSensor_BLE.c",line 64,column 13,is_stmt,isa 0
        MOVZ      AR0,@_i$1             ; [CPU_ALU] |64| 
        MOV       AL,@_Raw              ; [CPU_ALU] |64| 
        MOVL      XAR4,#_Biom1          ; [CPU_ARAU] |64| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |64| 
	.dwpsn	file "../BiomSensor_BLE.c",line 65,column 13,is_stmt,isa 0
        INC       @_i$1                 ; [CPU_ALU] |65| 
	.dwpsn	file "../BiomSensor_BLE.c",line 67,column 5,is_stmt,isa 0
        B         $C$L5,UNC             ; [CPU_ALU] |67| 
        ; branch occurs ; [] |67| 
$C$L3:    
	.dwpsn	file "../BiomSensor_BLE.c",line 70,column 9,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_I2C_Read_Byte")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_I2C_Read_Byte       ; [CPU_ALU] |70| 
        ; call occurs [#_I2C_Read_Byte] ; [] |70| 
        MOVW      DP,#_Raw+1            ; [CPU_ARAU] 
        ASR       AL,2                  ; [CPU_ALU] |70| 
        MOV       @_Raw+1,AL            ; [CPU_ALU] |70| 
	.dwpsn	file "../BiomSensor_BLE.c",line 71,column 9,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_I2C_Read_Byte")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_I2C_Read_Byte       ; [CPU_ALU] |71| 
        ; call occurs [#_I2C_Read_Byte] ; [] |71| 
        MOVW      DP,#_Raw+1            ; [CPU_ARAU] 
        MOV       ACC,AL << #6          ; [CPU_ALU] |71| 
        OR        @_Raw+1,AL            ; [CPU_ALU] |71| 
	.dwpsn	file "../BiomSensor_BLE.c",line 72,column 9,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |72| 
        CMPB      AL,#1                 ; [CPU_ALU] |72| 
        B         $C$L4,NEQ             ; [CPU_ALU] |72| 
        ; branchcc occurs ; [] |72| 
	.dwpsn	file "../BiomSensor_BLE.c",line 73,column 13,is_stmt,isa 0
        MOV       AL,@_Raw+1            ; [CPU_ALU] |73| 
        SETC      SXM                   ; [CPU_ALU] 
        MAX       AL,@_Clb_Max$9        ; [CPU_ALU] |73| 
        MOV       ACC,AL                ; [CPU_ALU] |73| 
        MOVL      @_Clb_Max$9,ACC       ; [CPU_ALU] |73| 
	.dwpsn	file "../BiomSensor_BLE.c",line 74,column 13,is_stmt,isa 0
        MOV       AL,@_Raw+1            ; [CPU_ALU] |74| 
        MIN       AL,@_Clb_Min$10       ; [CPU_ALU] |74| 
        MOV       ACC,AL                ; [CPU_ALU] |74| 
        MOVL      @_Clb_Min$10,ACC      ; [CPU_ALU] |74| 
$C$L4:    
	.dwpsn	file "../BiomSensor_BLE.c",line 76,column 9,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |76| 
        B         $C$L5,NEQ             ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "../BiomSensor_BLE.c",line 77,column 13,is_stmt,isa 0
        INC       @_k$3                 ; [CPU_ALU] |77| 
	.dwpsn	file "../BiomSensor_BLE.c",line 78,column 13,is_stmt,isa 0
        MOV       AL,@_k$3              ; [CPU_ALU] |78| 
        ANDB      AL,#0x03              ; [CPU_ALU] |78| 
        B         $C$L5,NEQ             ; [CPU_ALU] |78| 
        ; branchcc occurs ; [] |78| 
	.dwpsn	file "../BiomSensor_BLE.c",line 79,column 17,is_stmt,isa 0
        MOV       AL,@_Raw+1            ; [CPU_ALU] |79| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_FIR_EDA")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_FIR_EDA             ; [CPU_ALU] |79| 
        ; call occurs [#_FIR_EDA] ; [] |79| 
        MOVW      DP,#_j$2              ; [CPU_ARAU] 
        MOVZ      AR0,@_j$2             ; [CPU_ALU] |79| 
        MOVL      XAR4,#_Biom1+8        ; [CPU_ARAU] |79| 
        MOV       *+XAR4[AR0],AL        ; [CPU_ALU] |79| 
	.dwpsn	file "../BiomSensor_BLE.c",line 81,column 17,is_stmt,isa 0
        XOR       @_j$2,#0x0001         ; [CPU_ALU] |81| 
	.dwpsn	file "../BiomSensor_BLE.c",line 82,column 17,is_stmt,isa 0
        MOV       @_k$3,#0              ; [CPU_ALU] |82| 
$C$L5:    
	.dwpsn	file "../BiomSensor_BLE.c",line 88,column 5,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |88| 
        B         $C$L18,EQ             ; [CPU_ALU] |88| 
        ; branchcc occurs ; [] |88| 
	.dwpsn	file "../BiomSensor_BLE.c",line 89,column 9,is_stmt,isa 0
        INC       @_Clb_Windw$5         ; [CPU_ALU] |89| 
	.dwpsn	file "../BiomSensor_BLE.c",line 90,column 9,is_stmt,isa 0
        MOV       AL,#768               ; [CPU_ALU] |90| 
        CMP       AL,@_Clb_Windw$5      ; [CPU_ALU] |90| 
        B         $C$L18,NEQ            ; [CPU_ALU] |90| 
        ; branchcc occurs ; [] |90| 
	.dwpsn	file "../BiomSensor_BLE.c",line 91,column 13,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |91| 
        CMPB      AL,#1                 ; [CPU_ALU] |91| 
        B         $C$L10,NEQ            ; [CPU_ALU] |91| 
        ; branchcc occurs ; [] |91| 
	.dwpsn	file "../BiomSensor_BLE.c",line 92,column 17,is_stmt,isa 0
        MOVL      XAR4,#12288           ; [CPU_ARAU] |92| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |92| 
        CMPL      ACC,@_Clb_Max$9       ; [CPU_ALU] |92| 
        B         $C$L6,LEQ             ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        MOVL      XAR4,#5120            ; [CPU_ARAU] |92| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |92| 
        CMPL      ACC,@_Clb_Min$10      ; [CPU_ALU] |92| 
        B         $C$L6,GEQ             ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
	.dwpsn	file "../BiomSensor_BLE.c",line 93,column 21,is_stmt,isa 0
        MOVB      @_Clb_Mode$6,#2,UNC   ; [CPU_ALU] |93| 
	.dwpsn	file "../BiomSensor_BLE.c",line 94,column 17,is_stmt,isa 0
        B         $C$L17,UNC            ; [CPU_ALU] |94| 
        ; branch occurs ; [] |94| 
$C$L6:    
	.dwpsn	file "../BiomSensor_BLE.c",line 96,column 21,is_stmt,isa 0
        CMP       @_Offset$7,#256       ; [CPU_ALU] |96| 
        B         $C$L9,HIS             ; [CPU_ALU] |96| 
        ; branchcc occurs ; [] |96| 
	.dwpsn	file "../BiomSensor_BLE.c",line 97,column 25,is_stmt,isa 0
        MOVL      XAR4,#12288           ; [CPU_ARAU] |97| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |97| 
        CMPL      ACC,@_Clb_Max$9       ; [CPU_ALU] |97| 
        B         $C$L7,GEQ             ; [CPU_ALU] |97| 
        ; branchcc occurs ; [] |97| 
	.dwpsn	file "../BiomSensor_BLE.c",line 98,column 29,is_stmt,isa 0
        INC       @_Offset$7            ; [CPU_ALU] |98| 
$C$L7:    
	.dwpsn	file "../BiomSensor_BLE.c",line 100,column 25,is_stmt,isa 0
        MOVL      XAR4,#5120            ; [CPU_ARAU] |100| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |100| 
        CMPL      ACC,@_Clb_Min$10      ; [CPU_ALU] |100| 
        B         $C$L8,LEQ             ; [CPU_ALU] |100| 
        ; branchcc occurs ; [] |100| 
	.dwpsn	file "../BiomSensor_BLE.c",line 101,column 29,is_stmt,isa 0
        DEC       @_Offset$7            ; [CPU_ALU] |101| 
$C$L8:    
	.dwpsn	file "../BiomSensor_BLE.c",line 103,column 25,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |103| 
        MOV       AH,@_Offset$7         ; [CPU_ALU] |103| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_Biom_Calibration")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_Biom_Calibration    ; [CPU_ALU] |103| 
        ; call occurs [#_Biom_Calibration] ; [] |103| 
	.dwpsn	file "../BiomSensor_BLE.c",line 104,column 21,is_stmt,isa 0
        B         $C$L17,UNC            ; [CPU_ALU] |104| 
        ; branch occurs ; [] |104| 
$C$L9:    
	.dwpsn	file "../BiomSensor_BLE.c",line 106,column 25,is_stmt,isa 0
        MOV       @_Clb_Mode$6,#0       ; [CPU_ALU] |106| 
	.dwpsn	file "../BiomSensor_BLE.c",line 109,column 13,is_stmt,isa 0
        B         $C$L17,UNC            ; [CPU_ALU] |109| 
        ; branch occurs ; [] |109| 
$C$L10:    
	.dwpsn	file "../BiomSensor_BLE.c",line 111,column 17,is_stmt,isa 0
        MOVL      ACC,@_Clb_Max$9       ; [CPU_ALU] |111| 
        SUBL      ACC,@_Clb_Min$10      ; [CPU_ALU] |111| 
        MOVL      @_Clb_Ampl$11,ACC     ; [CPU_ALU] |111| 
	.dwpsn	file "../BiomSensor_BLE.c",line 112,column 17,is_stmt,isa 0
        MOVL      XAR4,#3500            ; [CPU_ARAU] |112| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |112| 
        CMPL      ACC,@_Clb_Ampl$11     ; [CPU_ALU] |112| 
        B         $C$L11,LEQ            ; [CPU_ALU] |112| 
        ; branchcc occurs ; [] |112| 
        MOVL      XAR4,#1200            ; [CPU_ARAU] |112| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |112| 
        CMPL      ACC,@_Clb_Ampl$11     ; [CPU_ALU] |112| 
        B         $C$L11,GEQ            ; [CPU_ALU] |112| 
        ; branchcc occurs ; [] |112| 
	.dwpsn	file "../BiomSensor_BLE.c",line 113,column 21,is_stmt,isa 0
        MOV       @_Clb_Mode$6,#0       ; [CPU_ALU] |113| 
	.dwpsn	file "../BiomSensor_BLE.c",line 114,column 17,is_stmt,isa 0
        B         $C$L15,UNC            ; [CPU_ALU] |114| 
        ; branch occurs ; [] |114| 
$C$L11:    
	.dwpsn	file "../BiomSensor_BLE.c",line 116,column 21,is_stmt,isa 0
        MOV       AL,@_Current$8        ; [CPU_ALU] |116| 
        CMPB      AL,#39                ; [CPU_ALU] |116| 
        B         $C$L14,HIS            ; [CPU_ALU] |116| 
        ; branchcc occurs ; [] |116| 
	.dwpsn	file "../BiomSensor_BLE.c",line 117,column 25,is_stmt,isa 0
        MOVL      XAR4,#1500            ; [CPU_ARAU] |117| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |117| 
        CMPL      ACC,@_Clb_Ampl$11     ; [CPU_ALU] |117| 
        B         $C$L12,LEQ            ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
	.dwpsn	file "../BiomSensor_BLE.c",line 118,column 29,is_stmt,isa 0
        INC       @_Current$8           ; [CPU_ALU] |118| 
$C$L12:    
	.dwpsn	file "../BiomSensor_BLE.c",line 120,column 25,is_stmt,isa 0
        MOVL      XAR4,#3500            ; [CPU_ARAU] |120| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |120| 
        CMPL      ACC,@_Clb_Ampl$11     ; [CPU_ALU] |120| 
        B         $C$L13,GEQ            ; [CPU_ALU] |120| 
        ; branchcc occurs ; [] |120| 
	.dwpsn	file "../BiomSensor_BLE.c",line 121,column 29,is_stmt,isa 0
        DEC       @_Current$8           ; [CPU_ALU] |121| 
$C$L13:    
	.dwpsn	file "../BiomSensor_BLE.c",line 123,column 25,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |123| 
        MOV       AH,@_Current$8        ; [CPU_ALU] |123| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_Biom_Calibration")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #_Biom_Calibration    ; [CPU_ALU] |123| 
        ; call occurs [#_Biom_Calibration] ; [] |123| 
	.dwpsn	file "../BiomSensor_BLE.c",line 124,column 25,is_stmt,isa 0
        MOVW      DP,#_Clb_Mode$6       ; [CPU_ARAU] 
        MOVB      @_Clb_Mode$6,#1,UNC   ; [CPU_ALU] |124| 
	.dwpsn	file "../BiomSensor_BLE.c",line 125,column 21,is_stmt,isa 0
        B         $C$L15,UNC            ; [CPU_ALU] |125| 
        ; branch occurs ; [] |125| 
$C$L14:    
	.dwpsn	file "../BiomSensor_BLE.c",line 127,column 25,is_stmt,isa 0
        MOV       @_Clb_Mode$6,#0       ; [CPU_ALU] |127| 
$C$L15:    
	.dwpsn	file "../BiomSensor_BLE.c",line 131,column 17,is_stmt,isa 0
        MOV       AL,@_Clb_Mode$6       ; [CPU_ALU] |131| 
        B         $C$L17,NEQ            ; [CPU_ALU] |131| 
        ; branchcc occurs ; [] |131| 
	.dwpsn	file "../BiomSensor_BLE.c",line 132,column 21,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |132| 
$C$L16:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |132| 
        B         $C$L16,TC             ; [CPU_ALU] |132| 
        ; branchcc occurs ; [] |132| 
	.dwpsn	file "../BiomSensor_BLE.c",line 134,column 21,is_stmt,isa 0
        MOVB      AL,#139               ; [CPU_ALU] |134| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |134| 
        ; call occurs [#_I2C_Write_Byte] ; [] |134| 
	.dwpsn	file "../BiomSensor_BLE.c",line 135,column 21,is_stmt,isa 0
        MOVB      AL,#66                ; [CPU_ALU] |135| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |135| 
        ; call occurs [#_I2C_Write_Byte] ; [] |135| 
	.dwpsn	file "../BiomSensor_BLE.c",line 136,column 21,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |136| 
        MOVB      XAR4,#1               ; [CPU_ALU] |136| 
        MOVB      AH,#2                 ; [CPU_ALU] |136| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |136| 
        ; call occurs [#_I2C_StartWR] ; [] |136| 
	.dwpsn	file "../BiomSensor_BLE.c",line 137,column 21,is_stmt,isa 0
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |137| 
        ; call occurs [#_I2C_Stop] ; [] |137| 
$C$L17:    
	.dwpsn	file "../BiomSensor_BLE.c",line 140,column 13,is_stmt,isa 0
        MOVW      DP,#_Clb_Windw$5      ; [CPU_ARAU] 
        MOV       @_Clb_Windw$5,#0      ; [CPU_ALU] |140| 
	.dwpsn	file "../BiomSensor_BLE.c",line 141,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |141| 
        MOVL      @_Clb_Max$9,ACC       ; [CPU_ALU] |141| 
	.dwpsn	file "../BiomSensor_BLE.c",line 142,column 13,is_stmt,isa 0
        MOVL      XAR4,#16383           ; [CPU_ARAU] |142| 
        MOVL      @_Clb_Min$10,XAR4     ; [CPU_ALU] |142| 
$C$L18:    
	.dwpsn	file "../BiomSensor_BLE.c",line 146,column 5,is_stmt,isa 0
        MOV       AL,@_i$1              ; [CPU_ALU] |146| 
        CMPB      AL,#8                 ; [CPU_ALU] |146| 
        B         $C$L20,NEQ            ; [CPU_ALU] |146| 
        ; branchcc occurs ; [] |146| 
	.dwpsn	file "../BiomSensor_BLE.c",line 147,column 9,is_stmt,isa 0
$C$L19:    
	.dwpsn	file "../BiomSensor_BLE.c",line 147,column 15,is_stmt,isa 0
        MOV       AL,@_SCI_TxAvail      ; [CPU_ALU] |147| 
        B         $C$L19,EQ             ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
	.dwpsn	file "../BiomSensor_BLE.c",line 148,column 9,is_stmt,isa 0
        MOV       @_SCI_TxAvail,#0      ; [CPU_ALU] |148| 
	.dwpsn	file "../BiomSensor_BLE.c",line 149,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Biom1          ; [CPU_ARAU] |149| 
        MOVL      @_SCI_StartPt,XAR4    ; [CPU_ALU] |149| 
	.dwpsn	file "../BiomSensor_BLE.c",line 150,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Biom1+10       ; [CPU_ARAU] |150| 
        MOVL      @_SCI_EndPt,XAR4      ; [CPU_ALU] |150| 
	.dwpsn	file "../BiomSensor_BLE.c",line 151,column 9,is_stmt,isa 0
        MOV       AL,@_Biom1            ; [CPU_ALU] |151| 
        MOV       @_SCI_Data,AL         ; [CPU_ALU] |151| 
	.dwpsn	file "../BiomSensor_BLE.c",line 152,column 9,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |152| 
        MOVL      XAR4,#29210           ; [CPU_ARAU] |152| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |152| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |152| 
	.dwpsn	file "../BiomSensor_BLE.c",line 153,column 9,is_stmt,isa 0
        MOV       @_i$1,#0              ; [CPU_ALU] |153| 
$C$L20:    
	.dwpsn	file "../BiomSensor_BLE.c",line 155,column 5,is_stmt,isa 0
        XOR       @_Conmut$4,#0x0001    ; [CPU_ALU] |155| 
	.dwpsn	file "../BiomSensor_BLE.c",line 156,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |156| 
        MOVL      XAR4,#29473           ; [CPU_ARAU] |156| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |156| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |156| 
	.dwpsn	file "../BiomSensor_BLE.c",line 157,column 5,is_stmt,isa 0
        MOVB      ACC,#128              ; [CPU_ALU] |157| 
        MOVL      XAR4,#3297            ; [CPU_ARAU] |157| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |157| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |157| 
	.dwpsn	file "../BiomSensor_BLE.c",line 158,column 1,is_stmt,isa 0
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x9e)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text:retain"
	.retain
	.retainrefs
	.global	_Inter_SCIBTX

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("Inter_SCIBTX")
	.dwattr $C$DW$82, DW_AT_low_pc(_Inter_SCIBTX)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_Inter_SCIBTX")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xa3)
	.dwattr $C$DW$82, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$82, DW_AT_TI_interrupt
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "../BiomSensor_BLE.c",line 163,column 37,is_stmt,address _Inter_SCIBTX,isa 0

	.dwfde $C$DW$CIE, _Inter_SCIBTX

;***************************************************************
;* FNAME: _Inter_SCIBTX                 FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

_Inter_SCIBTX:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../BiomSensor_BLE.c",line 164,column 5,is_stmt,isa 0
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_SCIB_WData")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_SCIB_WData          ; [CPU_ALU] |164| 
        ; call occurs [#_SCIB_WData] ; [] |164| 
	.dwpsn	file "../BiomSensor_BLE.c",line 165,column 5,is_stmt,isa 0
        MOVW      DP,#_SCI_EndPt        ; [CPU_ARAU] 
        MOVL      ACC,@_SCI_EndPt       ; [CPU_ALU] |165| 
        CMPL      ACC,@_SCI_StartPt     ; [CPU_ALU] |165| 
        B         $C$L21,NEQ            ; [CPU_ALU] |165| 
        ; branchcc occurs ; [] |165| 
	.dwpsn	file "../BiomSensor_BLE.c",line 166,column 9,is_stmt,isa 0
        MOVL      XAR4,#29210           ; [CPU_ARAU] |166| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |166| 
        AND       AL,#65503             ; [CPU_ALU] |166| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |166| 
	.dwpsn	file "../BiomSensor_BLE.c",line 167,column 9,is_stmt,isa 0
        MOVB      @_SCI_TxAvail,#1,UNC  ; [CPU_ALU] |167| 
$C$L21:    
	.dwpsn	file "../BiomSensor_BLE.c",line 169,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |169| 
        MOVL      XAR4,#29210           ; [CPU_ARAU] |169| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |169| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |169| 
	.dwpsn	file "../BiomSensor_BLE.c",line 170,column 5,is_stmt,isa 0
        MOVL      XAR4,#3297            ; [CPU_ARAU] |170| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |170| 
        OR        AL,#256               ; [CPU_ALU] |170| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |170| 
	.dwpsn	file "../BiomSensor_BLE.c",line 171,column 1,is_stmt,isa 0
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xab)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text:retain"
	.retain
	.retainrefs
	.global	_Inter_SCIBRX

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("Inter_SCIBRX")
	.dwattr $C$DW$85, DW_AT_low_pc(_Inter_SCIBRX)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_Inter_SCIBRX")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$85, DW_AT_TI_interrupt
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-26)
	.dwpsn	file "../BiomSensor_BLE.c",line 176,column 37,is_stmt,address _Inter_SCIBRX,isa 0

	.dwfde $C$DW$CIE, _Inter_SCIBRX
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("RxType")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_RxType$14")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr _RxType$14]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("SCI_RxPt")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_SCI_RxPt$13")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_addr _SCI_RxPt$13]

$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("SCI_RxData")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_SCI_RxData$12")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_addr _SCI_RxData$12]


;***************************************************************
;* FNAME: _Inter_SCIBRX                 FR SIZE:  24           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

_Inter_SCIBRX:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "../BiomSensor_BLE.c",line 181,column 5,is_stmt,isa 0
        MOVB      ACC,#64               ; [CPU_ALU] |181| 
        MOVL      XAR4,#29211           ; [CPU_ARAU] |181| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |181| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |181| 
	.dwpsn	file "../BiomSensor_BLE.c",line 182,column 5,is_stmt,isa 0
        B         $C$L29,UNC            ; [CPU_ALU] |182| 
        ; branch occurs ; [] |182| 
$C$L22:    
	.dwpsn	file "../BiomSensor_BLE.c",line 183,column 9,is_stmt,isa 0
        MOVW      DP,#_SCI_RxPt$13      ; [CPU_ARAU] 
        MOVL      XAR4,@_SCI_RxPt$13    ; [CPU_ALU] |183| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("_SCIB_Read")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #_SCIB_Read           ; [CPU_ALU] |183| 
        ; call occurs [#_SCIB_Read] ; [] |183| 
	.dwpsn	file "../BiomSensor_BLE.c",line 184,column 9,is_stmt,isa 0
        MOVW      DP,#_RxType$14        ; [CPU_ARAU] 
        MOV       AL,@_RxType$14        ; [CPU_ALU] |184| 
        B         $C$L29,EQ             ; [CPU_ALU] |184| 
        ; branchcc occurs ; [] |184| 
	.dwpsn	file "../BiomSensor_BLE.c",line 185,column 13,is_stmt,isa 0
        MOVL      XAR4,@_SCI_RxPt$13    ; [CPU_ALU] |185| 
        MOV       AL,*XAR4++            ; [CPU_ALU] |185| 
        CMPB      AL,#10                ; [CPU_ALU] |185| 
        MOVL      @_SCI_RxPt$13,XAR4    ; [CPU_FPU] |185| 
        B         $C$L29,NEQ            ; [CPU_ALU] |185| 
        ; branchcc occurs ; [] |185| 
	.dwpsn	file "../BiomSensor_BLE.c",line 186,column 17,is_stmt,isa 0
        B         $C$L27,UNC            ; [CPU_ALU] |186| 
        ; branch occurs ; [] |186| 
$C$L23:    
	.dwpsn	file "../BiomSensor_BLE.c",line 188,column 21,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL1         ; [CPU_ARAU] |188| 
        MOVL      XAR4,#_SCI_RxData$12  ; [CPU_ARAU] |188| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("_strstr")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #_strstr              ; [CPU_ALU] |188| 
        ; call occurs [#_strstr] ; [] |188| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |188| 
        B         $C$L28,EQ             ; [CPU_ALU] |188| 
        ; branchcc occurs ; [] |188| 
	.dwpsn	file "../BiomSensor_BLE.c",line 189,column 25,is_stmt,isa 0
        MOVW      DP,#_SCI_State        ; [CPU_ARAU] 
        INC       @_SCI_State           ; [CPU_ALU] |189| 
	.dwpsn	file "../BiomSensor_BLE.c",line 190,column 25,is_stmt,isa 0
        MOVB      @_SCI_RxAvail,#1,UNC  ; [CPU_ALU] |190| 
	.dwpsn	file "../BiomSensor_BLE.c",line 191,column 25,is_stmt,isa 0
        MOV       AL,@_SCI_State        ; [CPU_ALU] |191| 
        CMPB      AL,#5                 ; [CPU_ALU] |191| 
        B         $C$L28,NEQ            ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
	.dwpsn	file "../BiomSensor_BLE.c",line 191,column 43,is_stmt,isa 0
        MOVB      @_SCI_Mode,#1,UNC     ; [CPU_ALU] |191| 
	.dwpsn	file "../BiomSensor_BLE.c",line 193,column 21,is_stmt,isa 0
        B         $C$L28,UNC            ; [CPU_ALU] |193| 
        ; branch occurs ; [] |193| 
$C$L24:    
	.dwpsn	file "../BiomSensor_BLE.c",line 195,column 21,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL2         ; [CPU_ARAU] |195| 
        MOVL      XAR4,#_SCI_RxData$12  ; [CPU_ARAU] |195| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_strstr")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #_strstr              ; [CPU_ALU] |195| 
        ; call occurs [#_strstr] ; [] |195| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |195| 
        B         $C$L28,EQ             ; [CPU_ALU] |195| 
        ; branchcc occurs ; [] |195| 
	.dwpsn	file "../BiomSensor_BLE.c",line 195,column 61,is_stmt,isa 0
        MOVW      DP,#_SCI_Mode         ; [CPU_ARAU] 
        MOVB      @_SCI_Mode,#2,UNC     ; [CPU_ALU] |195| 
	.dwpsn	file "../BiomSensor_BLE.c",line 196,column 21,is_stmt,isa 0
        B         $C$L28,UNC            ; [CPU_ALU] |196| 
        ; branch occurs ; [] |196| 
$C$L25:    
	.dwpsn	file "../BiomSensor_BLE.c",line 198,column 21,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL3         ; [CPU_ARAU] |198| 
        MOVL      XAR4,#_SCI_RxData$12  ; [CPU_ARAU] |198| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_strstr")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_strstr              ; [CPU_ALU] |198| 
        ; call occurs [#_strstr] ; [] |198| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |198| 
        B         $C$L26,EQ             ; [CPU_ALU] |198| 
        ; branchcc occurs ; [] |198| 
	.dwpsn	file "../BiomSensor_BLE.c",line 198,column 61,is_stmt,isa 0
        MOVW      DP,#_SCI_Mode         ; [CPU_ARAU] 
        MOVB      @_SCI_Mode,#1,UNC     ; [CPU_ALU] |198| 
	.dwpsn	file "../BiomSensor_BLE.c",line 198,column 73,is_stmt,isa 0
        B         $C$L28,UNC            ; [CPU_ALU] |198| 
        ; branch occurs ; [] |198| 
$C$L26:    
	.dwpsn	file "../BiomSensor_BLE.c",line 199,column 26,is_stmt,isa 0
        MOVL      XAR5,#$C$FSL4         ; [CPU_ARAU] |199| 
        MOVL      XAR4,#_SCI_RxData$12  ; [CPU_ARAU] |199| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_strstr")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_strstr              ; [CPU_ALU] |199| 
        ; call occurs [#_strstr] ; [] |199| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |199| 
        B         $C$L28,EQ             ; [CPU_ALU] |199| 
        ; branchcc occurs ; [] |199| 
	.dwpsn	file "../BiomSensor_BLE.c",line 199,column 70,is_stmt,isa 0
        MOVW      DP,#_RxType$14        ; [CPU_ARAU] 
        MOV       @_RxType$14,#0        ; [CPU_ALU] |199| 
	.dwpsn	file "../BiomSensor_BLE.c",line 200,column 21,is_stmt,isa 0
        B         $C$L28,UNC            ; [CPU_ALU] |200| 
        ; branch occurs ; [] |200| 
$C$L27:    
	.dwpsn	file "../BiomSensor_BLE.c",line 186,column 17,is_stmt,isa 0
        MOV       AL,@_SCI_Mode         ; [CPU_ALU] |186| 
        B         $C$L23,EQ             ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
        CMPB      AL,#1                 ; [CPU_ALU] |186| 
        B         $C$L24,EQ             ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
        CMPB      AL,#2                 ; [CPU_ALU] |186| 
        B         $C$L25,EQ             ; [CPU_ALU] |186| 
        ; branchcc occurs ; [] |186| 
$C$L28:    
	.dwpsn	file "../BiomSensor_BLE.c",line 202,column 13,is_stmt,isa 0
        MOVL      XAR4,#_SCI_RxData$12  ; [CPU_ARAU] |202| 
        MOVW      DP,#_SCI_RxPt$13      ; [CPU_ARAU] 
        MOVL      @_SCI_RxPt$13,XAR4    ; [CPU_ALU] |202| 
	.dwpsn	file "../BiomSensor_BLE.c",line 203,column 13,is_stmt,isa 0
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_Clean_Reg")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_Clean_Reg           ; [CPU_ALU] |203| 
        ; call occurs [#_Clean_Reg] ; [] |203| 
$C$L29:    
	.dwpsn	file "../BiomSensor_BLE.c",line 182,column 5,is_stmt,isa 0
        MOVL      XAR4,#29211           ; [CPU_ARAU] |182| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |182| 
        AND       AL,#7936              ; [CPU_ALU] |182| 
        ANDB      AH,#0                 ; [CPU_ALU] |182| 
        TEST      ACC                   ; [CPU_ALU] |182| 
        B         $C$L22,NEQ            ; [CPU_ALU] |182| 
        ; branchcc occurs ; [] |182| 
	.dwpsn	file "../BiomSensor_BLE.c",line 207,column 5,is_stmt,isa 0
        MOVL      XAR4,#3297            ; [CPU_ARAU] |207| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |207| 
        OR        AL,#256               ; [CPU_ALU] |207| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |207| 
	.dwpsn	file "../BiomSensor_BLE.c",line 208,column 1,is_stmt,isa 0
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xd0)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text"
	.clink
	.global	_Config_puertos

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("Config_puertos")
	.dwattr $C$DW$96, DW_AT_low_pc(_Config_puertos)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_Config_puertos")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../BiomSensor_BLE.c",line 216,column 26,is_stmt,address _Config_puertos,isa 0

	.dwfde $C$DW$CIE, _Config_puertos

;***************************************************************
;* FNAME: _Config_puertos               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Config_puertos:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../BiomSensor_BLE.c",line 217,column 5,is_stmt,isa 0
        MOVL      XAR4,#31968           ; [CPU_ARAU] |217| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |217| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |217| 
	.dwpsn	file "../BiomSensor_BLE.c",line 218,column 5,is_stmt,isa 0
        MOVL      XAR4,#31942           ; [CPU_ARAU] |218| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |218| 
        OR        AH,#5                 ; [CPU_ALU] |218| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |218| 
	.dwpsn	file "../BiomSensor_BLE.c",line 219,column 5,is_stmt,isa 0
        MOVL      XAR4,#31954           ; [CPU_ARAU] |219| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |219| 
        OR        AL,#768               ; [CPU_ALU] |219| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |219| 
	.dwpsn	file "../BiomSensor_BLE.c",line 220,column 5,is_stmt,isa 0
        MOVL      XAR4,#31938           ; [CPU_ARAU] |220| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |220| 
        OR        AH,#15                ; [CPU_ALU] |220| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |220| 
	.dwpsn	file "../BiomSensor_BLE.c",line 222,column 5,is_stmt,isa 0
        MOVL      XAR4,#31776           ; [CPU_ARAU] |222| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |222| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |222| 
	.dwpsn	file "../BiomSensor_BLE.c",line 223,column 5,is_stmt,isa 0
        MOVL      XAR4,#31750           ; [CPU_ARAU] |223| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |223| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |223| 
	.dwpsn	file "../BiomSensor_BLE.c",line 224,column 5,is_stmt,isa 0
        MOVL      XAR4,#31754           ; [CPU_ARAU] |224| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |224| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |224| 
	.dwpsn	file "../BiomSensor_BLE.c",line 226,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |226| 
        OR        AL,#16384             ; [CPU_ALU] |226| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |226| 
	.dwpsn	file "../BiomSensor_BLE.c",line 227,column 5,is_stmt,isa 0
        MOVL      XAR4,#31778           ; [CPU_ARAU] |227| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |227| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |227| 
	.dwpsn	file "../BiomSensor_BLE.c",line 228,column 5,is_stmt,isa 0
        MOVB      ACC,#160              ; [CPU_ALU] |228| 
        MOVL      XAR4,#31752           ; [CPU_ARAU] |228| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |228| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |228| 
	.dwpsn	file "../BiomSensor_BLE.c",line 229,column 5,is_stmt,isa 0
        MOVB      ACC,#240              ; [CPU_ALU] |229| 
        MOVL      XAR4,#31748           ; [CPU_ARAU] |229| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |229| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |229| 
	.dwpsn	file "../BiomSensor_BLE.c",line 231,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |231| 
        MOVL      XAR4,#28785           ; [CPU_ARAU] |231| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |231| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |231| 
	.dwpsn	file "../BiomSensor_BLE.c",line 232,column 5,is_stmt,isa 0
        MOVB      ACC,#22               ; [CPU_ALU] |232| 
        MOVL      XAR4,#30980           ; [CPU_ARAU] |232| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |232| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |232| 
	.dwpsn	file "../BiomSensor_BLE.c",line 233,column 1,is_stmt,isa 0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xe9)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text"
	.clink
	.global	_Config_SCIB

$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("Config_SCIB")
	.dwattr $C$DW$98, DW_AT_low_pc(_Config_SCIB)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_Config_SCIB")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0xee)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../BiomSensor_BLE.c",line 238,column 23,is_stmt,address _Config_SCIB,isa 0

	.dwfde $C$DW$CIE, _Config_SCIB

;***************************************************************
;* FNAME: _Config_SCIB                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Config_SCIB:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../BiomSensor_BLE.c",line 239,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |239| 
        MOVL      XAR4,#381484          ; [CPU_ARAU] |239| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |239| 
	.dwpsn	file "../BiomSensor_BLE.c",line 240,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |240| 
        MOVL      XAR4,#381744          ; [CPU_ARAU] |240| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |240| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |240| 
	.dwpsn	file "../BiomSensor_BLE.c",line 242,column 5,is_stmt,isa 0
        MOVB      ACC,#7                ; [CPU_ALU] |242| 
        MOVL      XAR4,#29200           ; [CPU_ARAU] |242| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |242| 
	.dwpsn	file "../BiomSensor_BLE.c",line 243,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |243| 
        MOVL      XAR4,#29202           ; [CPU_ARAU] |243| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |243| 
	.dwpsn	file "../BiomSensor_BLE.c",line 245,column 5,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |245| 
        MOVL      XAR4,#29203           ; [CPU_ARAU] |245| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |245| 
	.dwpsn	file "../BiomSensor_BLE.c",line 247,column 5,is_stmt,isa 0
        MOVL      XAR5,#29210           ; [CPU_ARAU] |247| 
        MOVL      XAR4,#57345           ; [CPU_ARAU] |247| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |247| 
	.dwpsn	file "../BiomSensor_BLE.c",line 248,column 5,is_stmt,isa 0
        MOVL      XAR4,#8225            ; [CPU_ARAU] |248| 
        MOVL      XAR5,#29211           ; [CPU_ARAU] |248| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |248| 
	.dwpsn	file "../BiomSensor_BLE.c",line 249,column 5,is_stmt,isa 0
        MOVL      XAR4,#29201           ; [CPU_ARAU] |249| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |249| 
        AND       AL,#65503             ; [CPU_ALU] |249| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |249| 
	.dwpsn	file "../BiomSensor_BLE.c",line 250,column 5,is_stmt,isa 0
        MOVB      ACC,#35               ; [CPU_ALU] |250| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |250| 
	.dwpsn	file "../BiomSensor_BLE.c",line 252,column 1,is_stmt,isa 0
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$98, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0xfc)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text"
	.clink
	.global	_Config_I2CA

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("Config_I2CA")
	.dwattr $C$DW$100, DW_AT_low_pc(_Config_I2CA)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_Config_I2CA")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x101)
	.dwattr $C$DW$100, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../BiomSensor_BLE.c",line 257,column 23,is_stmt,address _Config_I2CA,isa 0

	.dwfde $C$DW$CIE, _Config_I2CA

;***************************************************************
;* FNAME: _Config_I2CA                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Config_I2CA:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../BiomSensor_BLE.c",line 258,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |258| 
        MOVL      XAR4,#381748          ; [CPU_ARAU] |258| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |258| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |258| 
	.dwpsn	file "../BiomSensor_BLE.c",line 259,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |259| 
        MOVL      XAR4,#29452           ; [CPU_ARAU] |259| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |259| 
	.dwpsn	file "../BiomSensor_BLE.c",line 260,column 5,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |260| 
        MOVL      XAR4,#29443           ; [CPU_ARAU] |260| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |260| 
	.dwpsn	file "../BiomSensor_BLE.c",line 261,column 5,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |261| 
        MOVL      XAR4,#29444           ; [CPU_ARAU] |261| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |261| 
	.dwpsn	file "../BiomSensor_BLE.c",line 262,column 5,is_stmt,isa 0
        MOVL      XAR5,#29472           ; [CPU_ARAU] |262| 
        MOVL      XAR4,#24576           ; [CPU_ARAU] |262| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |262| 
	.dwpsn	file "../BiomSensor_BLE.c",line 263,column 5,is_stmt,isa 0
        MOVL      XAR4,#8226            ; [CPU_ARAU] |263| 
        MOVL      XAR5,#29473           ; [CPU_ARAU] |263| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |263| 
	.dwpsn	file "../BiomSensor_BLE.c",line 267,column 5,is_stmt,isa 0
        MOVB      ACC,#32               ; [CPU_ALU] |267| 
        MOVL      XAR4,#29449           ; [CPU_ARAU] |267| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |267| 
	.dwpsn	file "../BiomSensor_BLE.c",line 268,column 5,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |268| 
$C$L30:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |268| 
        B         $C$L30,TC             ; [CPU_ALU] |268| 
        ; branchcc occurs ; [] |268| 
	.dwpsn	file "../BiomSensor_BLE.c",line 269,column 1,is_stmt,isa 0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text"
	.clink
	.global	_Config_PIE

$C$DW$102	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$102, DW_AT_name("Config_PIE")
	.dwattr $C$DW$102, DW_AT_low_pc(_Config_PIE)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_Config_PIE")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x112)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../BiomSensor_BLE.c",line 274,column 22,is_stmt,address _Config_PIE,isa 0

	.dwfde $C$DW$CIE, _Config_PIE

;***************************************************************
;* FNAME: _Config_PIE                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Config_PIE:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../BiomSensor_BLE.c",line 275,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |275| 
        MOVL      XAR4,#3296            ; [CPU_ARAU] |275| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |275| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |275| 
	.dwpsn	file "../BiomSensor_BLE.c",line 276,column 5,is_stmt,isa 0
        MOVL      XAR4,#3297            ; [CPU_ARAU] |276| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |276| 
        OR        AL,#385               ; [CPU_ALU] |276| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |276| 
	.dwpsn	file "../BiomSensor_BLE.c",line 277,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |277| 
        MOVL      XAR4,#3298            ; [CPU_ARAU] |277| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |277| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |277| 
	.dwpsn	file "../BiomSensor_BLE.c",line 278,column 5,is_stmt,isa 0
        MOVB      ACC,#2                ; [CPU_ALU] |278| 
        MOVL      XAR4,#3312            ; [CPU_ARAU] |278| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |278| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |278| 
	.dwpsn	file "../BiomSensor_BLE.c",line 279,column 5,is_stmt,isa 0
        MOVB      ACC,#12               ; [CPU_ALU] |279| 
        MOVL      XAR4,#3314            ; [CPU_ARAU] |279| 
        OR        *+XAR4[0],AL          ; [CPU_ALU] |279| 
        OR        *+XAR4[1],AH          ; [CPU_ALU] |279| 
	.dwpsn	file "../BiomSensor_BLE.c",line 280,column 5,is_stmt,isa 0
        OR        IER,#0x0181           ; [CPU_ALU] |280| 
	.dwpsn	file "../BiomSensor_BLE.c",line 281,column 1,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$102, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text"
	.clink
	.global	_main

$C$DW$104	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$104, DW_AT_name("main")
	.dwattr $C$DW$104, DW_AT_low_pc(_main)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_TI_begin_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x11e)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$104, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../BiomSensor_BLE.c",line 286,column 16,is_stmt,address _main,isa 0

	.dwfde $C$DW$CIE, _main

;***************************************************************
;* FNAME: _main                         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_main:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../BiomSensor_BLE.c",line 287,column 5,is_stmt,isa 0
 setc INTM
	.dwpsn	file "../BiomSensor_BLE.c",line 289,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |289| 
	.dwpsn	file "../BiomSensor_BLE.c",line 290,column 9,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_Config_puertos")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_Config_puertos      ; [CPU_ALU] |290| 
        ; call occurs [#_Config_puertos] ; [] |290| 
	.dwpsn	file "../BiomSensor_BLE.c",line 291,column 9,is_stmt,isa 0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_Config_SCIB")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_Config_SCIB         ; [CPU_ALU] |291| 
        ; call occurs [#_Config_SCIB] ; [] |291| 
	.dwpsn	file "../BiomSensor_BLE.c",line 292,column 9,is_stmt,isa 0
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_Config_I2CA")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_Config_I2CA         ; [CPU_ALU] |292| 
        ; call occurs [#_Config_I2CA] ; [] |292| 
	.dwpsn	file "../BiomSensor_BLE.c",line 294,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Inter_GPIO22   ; [CPU_ARAU] |294| 
        MOVL      XAR5,#3400            ; [CPU_ARAU] |294| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |294| 
	.dwpsn	file "../BiomSensor_BLE.c",line 295,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Inter_I2CA     ; [CPU_ARAU] |295| 
        MOVL      XAR5,#3506            ; [CPU_ARAU] |295| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |295| 
	.dwpsn	file "../BiomSensor_BLE.c",line 296,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Inter_SCIBRX   ; [CPU_ARAU] |296| 
        MOVL      XAR5,#3524            ; [CPU_ARAU] |296| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |296| 
	.dwpsn	file "../BiomSensor_BLE.c",line 297,column 9,is_stmt,isa 0
        MOVL      XAR4,#_Inter_SCIBTX   ; [CPU_ARAU] |297| 
        MOVL      XAR5,#3526            ; [CPU_ARAU] |297| 
        MOVL      *+XAR5[0],XAR4        ; [CPU_ALU] |297| 
	.dwpsn	file "../BiomSensor_BLE.c",line 299,column 9,is_stmt,isa 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_Config_PIE")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_Config_PIE          ; [CPU_ALU] |299| 
        ; call occurs [#_Config_PIE] ; [] |299| 
	.dwpsn	file "../BiomSensor_BLE.c",line 300,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |300| 
	.dwpsn	file "../BiomSensor_BLE.c",line 302,column 5,is_stmt,isa 0
 clrc INTM
	.dwpsn	file "../BiomSensor_BLE.c",line 303,column 5,is_stmt,isa 0
        MOVW      DP,#_SCI_TxAvail      ; [CPU_ARAU] 
        MOVB      @_SCI_TxAvail,#1,UNC  ; [CPU_ALU] |303| 
	.dwpsn	file "../BiomSensor_BLE.c",line 304,column 5,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_HM10_Config")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_HM10_Config         ; [CPU_ALU] |304| 
        ; call occurs [#_HM10_Config] ; [] |304| 
	.dwpsn	file "../BiomSensor_BLE.c",line 305,column 11,is_stmt,isa 0
        MOVW      DP,#_SCI_Mode         ; [CPU_ARAU] 
        MOV       AL,@_SCI_Mode         ; [CPU_ALU] |305| 
        CMPB      AL,#2                 ; [CPU_ALU] |305| 
        B         $C$L32,EQ             ; [CPU_ALU] |305| 
        ; branchcc occurs ; [] |305| 
$C$L31:    
        MOV       AL,@_SCI_Mode         ; [CPU_ALU] |305| 
        CMPB      AL,#2                 ; [CPU_ALU] |305| 
        B         $C$L31,NEQ            ; [CPU_ALU] |305| 
        ; branchcc occurs ; [] |305| 
$C$L32:    
	.dwpsn	file "../BiomSensor_BLE.c",line 306,column 5,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_Biom_Config")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #_Biom_Config         ; [CPU_ALU] |306| 
        ; call occurs [#_Biom_Config] ; [] |306| 
	.dwpsn	file "../BiomSensor_BLE.c",line 307,column 11,is_stmt,isa 0
$C$L33:    
        B         $C$L33,UNC            ; [CPU_ALU] |307| 
        ; branch occurs ; [] |307| 
	.dwattr $C$DW$104, DW_AT_TI_end_file("../BiomSensor_BLE.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$104

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst:.string"
	.align	2
$C$FSL1:	.string	"OK",0
	.align	2
$C$FSL2:	.string	"OK+CONN",0
	.align	2
$C$FSL3:	.string	"OK+LOST",0
	.align	2
$C$FSL4:	.string	"EM_DET_UNAM",0
;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_I2C_Write_Byte
	.global	_I2C_StartWR
	.global	_I2C_Stop
	.global	_Biom_Calibration
	.global	_SCIB_WData
	.global	_SCIB_Read
	.global	_Clean_Reg
	.global	_HM10_Config
	.global	_Biom_Config
	.global	_firFilter
	.global	_I2C_Read_Byte
	.global	_strstr

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("Raw_Data")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("GR_LED")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_GR_LED")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("int_EDA")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_int_EDA")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("Sensor_Biometrico")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0a)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$113, DW_AT_name("LED_V")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_LED_V")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$114, DW_AT_name("EDA")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_EDA")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)


$C$DW$T$47	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_byte_size(0xc9)
$C$DW$115	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$115, DW_AT_upper_bound(0xc8)

	.dwendtag $C$DW$T$47

$C$DW$116	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$10)

$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$116)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("int16_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$117	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$117, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$118	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$118, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$23


$C$DW$T$49	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x65)
$C$DW$119	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$119, DW_AT_upper_bound(0x64)

	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)

$C$DW$120	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$28)

$C$DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$120)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("int32_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

$C$DW$T$31	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$31, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$31, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)

$C$DW$121	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$31)

$C$DW$T$69	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$121)

$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)

$C$DW$122	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$5)

$C$DW$T$58	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$122)

$C$DW$T$59	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x20)


$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x1a)
$C$DW$123	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$123, DW_AT_upper_bound(0x19)

	.dwendtag $C$DW$T$62

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$124	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$124, DW_AT_name("AL")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]

$C$DW$125	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$125, DW_AT_name("AH")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg1]

$C$DW$126	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$126, DW_AT_name("PL")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg2]

$C$DW$127	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$127, DW_AT_name("PH")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg3]

$C$DW$128	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$128, DW_AT_name("SP")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg20]

$C$DW$129	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$129, DW_AT_name("XT")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg21]

$C$DW$130	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$130, DW_AT_name("T")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg22]

$C$DW$131	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$131, DW_AT_name("ST0")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg23]

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("ST1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg24]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("PC")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg25]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("RPC")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg26]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("FP")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg28]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("DP")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg29]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("SXM")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg30]

$C$DW$138	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$138, DW_AT_name("PM")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg31]

$C$DW$139	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$139, DW_AT_name("OVM")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x20]

$C$DW$140	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$140, DW_AT_name("PAGE0")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x21]

$C$DW$141	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$141, DW_AT_name("AMODE")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x22]

$C$DW$142	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$142, DW_AT_name("EALLOW")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$143	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$143, DW_AT_name("INTM")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x23]

$C$DW$144	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$144, DW_AT_name("IFR")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x24]

$C$DW$145	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$145, DW_AT_name("IER")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x25]

$C$DW$146	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$146, DW_AT_name("V")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x26]

$C$DW$147	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$147, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$148	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$148, DW_AT_name("VOL")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$149	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$149, DW_AT_name("AR0")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg4]

$C$DW$150	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$150, DW_AT_name("XAR0")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg5]

$C$DW$151	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$151, DW_AT_name("AR1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg6]

$C$DW$152	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$152, DW_AT_name("XAR1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg7]

$C$DW$153	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$153, DW_AT_name("AR2")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg8]

$C$DW$154	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$154, DW_AT_name("XAR2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg9]

$C$DW$155	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$155, DW_AT_name("AR3")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg10]

$C$DW$156	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$156, DW_AT_name("XAR3")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg11]

$C$DW$157	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$157, DW_AT_name("AR4")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg12]

$C$DW$158	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$158, DW_AT_name("XAR4")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg13]

$C$DW$159	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$159, DW_AT_name("AR5")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg14]

$C$DW$160	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$160, DW_AT_name("XAR5")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg15]

$C$DW$161	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$161, DW_AT_name("AR6")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg16]

$C$DW$162	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$162, DW_AT_name("XAR6")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg17]

$C$DW$163	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$163, DW_AT_name("AR7")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg18]

$C$DW$164	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$164, DW_AT_name("XAR7")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg19]

$C$DW$165	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$165, DW_AT_name("R0H")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$166	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$166, DW_AT_name("R1H")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$167	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$167, DW_AT_name("R2H")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x33]

$C$DW$168	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$168, DW_AT_name("R3H")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x37]

$C$DW$169	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$169, DW_AT_name("R4H")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$170	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$170, DW_AT_name("R5H")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$171	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$171, DW_AT_name("R6H")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x43]

$C$DW$172	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$172, DW_AT_name("R7H")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x47]

$C$DW$173	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$173, DW_AT_name("RB")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$174	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$174, DW_AT_name("STF")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x28]

$C$DW$175	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$175, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg27]

$C$DW$176	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$176, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

