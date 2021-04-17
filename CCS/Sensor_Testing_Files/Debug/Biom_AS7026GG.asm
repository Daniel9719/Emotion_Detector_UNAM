;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v18.12.4.LTS *
;* Date/Time created: Fri Apr 16 14:40:57 2021                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Biom_AS7026GG.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v18.12.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\danie\Documents\Tesis\Emotion_Detector_UNAM\CCS\Sensor_Testing_Files\Debug")

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
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("I2C_Stop")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_I2C_Stop")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7

;	C:\ti\ccs910\ccs\tools\compiler\ti-cgt-c2000_18.12.4.LTS\bin\ac2000.exe -@C:\\Users\\danie\\AppData\\Local\\Temp\\{EAE661BE-837A-4B29-816B-0154A532185A} 
	.sect	".text"
	.clink
	.global	_Config_LEDs

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("Config_LEDs")
	.dwattr $C$DW$8, DW_AT_low_pc(_Config_LEDs)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_Config_LEDs")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0x08)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 8,column 26,is_stmt,address _Config_LEDs,isa 0

	.dwfde $C$DW$CIE, _Config_LEDs
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("ADD")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_LEDs                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_LEDs:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("ADD")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |8| 
	.dwpsn	file "../Biom_AS7026GG.c",line 10,column 5,is_stmt,isa 0
        MOVB      AL,#18                ; [CPU_ALU] |10| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$11, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |10| 
        ; call occurs [#_I2C_Write_Byte] ; [] |10| 
	.dwpsn	file "../Biom_AS7026GG.c",line 11,column 5,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_ALU] |11| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |11| 
        ; call occurs [#_I2C_Write_Byte] ; [] |11| 
	.dwpsn	file "../Biom_AS7026GG.c",line 12,column 5,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |12| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$13, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |12| 
        ; call occurs [#_I2C_Write_Byte] ; [] |12| 
	.dwpsn	file "../Biom_AS7026GG.c",line 15,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |15| 
        MOVB      AH,#3                 ; [CPU_ALU] |15| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |15| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$14, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |15| 
        ; call occurs [#_I2C_StartWR] ; [] |15| 
	.dwpsn	file "../Biom_AS7026GG.c",line 17,column 5,is_stmt,isa 0
        MOVB      AL,#24                ; [CPU_ALU] |17| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |17| 
        ; call occurs [#_I2C_Write_Byte] ; [] |17| 
	.dwpsn	file "../Biom_AS7026GG.c",line 18,column 5,is_stmt,isa 0
        MOVB      AL,#192               ; [CPU_ALU] |18| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |18| 
        ; call occurs [#_I2C_Write_Byte] ; [] |18| 
	.dwpsn	file "../Biom_AS7026GG.c",line 19,column 5,is_stmt,isa 0
        MOVB      AL,#126               ; [CPU_ALU] |19| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |19| 
        ; call occurs [#_I2C_Write_Byte] ; [] |19| 
	.dwpsn	file "../Biom_AS7026GG.c",line 20,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |20| 
        MOVB      AH,#3                 ; [CPU_ALU] |20| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |20| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |20| 
        ; call occurs [#_I2C_StartWR] ; [] |20| 
	.dwpsn	file "../Biom_AS7026GG.c",line 22,column 5,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_ALU] |22| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |22| 
        ; call occurs [#_I2C_Write_Byte] ; [] |22| 
	.dwpsn	file "../Biom_AS7026GG.c",line 23,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |23| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |23| 
        ; call occurs [#_I2C_Write_Byte] ; [] |23| 
	.dwpsn	file "../Biom_AS7026GG.c",line 25,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |25| 
        MOVB      XAR4,#1               ; [CPU_ALU] |25| 
        MOVB      AH,#2                 ; [CPU_ALU] |25| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |25| 
        ; call occurs [#_I2C_StartWR] ; [] |25| 
	.dwpsn	file "../Biom_AS7026GG.c",line 27,column 5,is_stmt,isa 0
        MOVB      AL,#45                ; [CPU_ALU] |27| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |27| 
        ; call occurs [#_I2C_Write_Byte] ; [] |27| 
	.dwpsn	file "../Biom_AS7026GG.c",line 28,column 5,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_ALU] |28| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |28| 
        ; call occurs [#_I2C_Write_Byte] ; [] |28| 
	.dwpsn	file "../Biom_AS7026GG.c",line 30,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |30| 
        MOVB      AH,#2                 ; [CPU_ALU] |30| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |30| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |30| 
        ; call occurs [#_I2C_StartWR] ; [] |30| 
	.dwpsn	file "../Biom_AS7026GG.c",line 33,column 5,is_stmt,isa 0
        MOVB      AL,#46                ; [CPU_ALU] |33| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |33| 
        ; call occurs [#_I2C_Write_Byte] ; [] |33| 
	.dwpsn	file "../Biom_AS7026GG.c",line 34,column 5,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |34| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |34| 
        ; call occurs [#_I2C_Write_Byte] ; [] |34| 
	.dwpsn	file "../Biom_AS7026GG.c",line 36,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |36| 
        MOVB      AH,#2                 ; [CPU_ALU] |36| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |36| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |36| 
        ; call occurs [#_I2C_StartWR] ; [] |36| 
	.dwpsn	file "../Biom_AS7026GG.c",line 39,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |39| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |39| 
        ; call occurs [#_I2C_Write_Byte] ; [] |39| 
	.dwpsn	file "../Biom_AS7026GG.c",line 40,column 5,is_stmt,isa 0
        MOVB      AL,#73                ; [CPU_ALU] |40| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |40| 
        ; call occurs [#_I2C_Write_Byte] ; [] |40| 
	.dwpsn	file "../Biom_AS7026GG.c",line 42,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |42| 
        MOVB      AH,#2                 ; [CPU_ALU] |42| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |42| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |42| 
        ; call occurs [#_I2C_StartWR] ; [] |42| 
	.dwpsn	file "../Biom_AS7026GG.c",line 43,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.clink
	.global	_Config_PD

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("Config_PD")
	.dwattr $C$DW$32, DW_AT_low_pc(_Config_PD)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_Config_PD")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x30)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 48,column 24,is_stmt,address _Config_PD,isa 0

	.dwfde $C$DW$CIE, _Config_PD
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("ADD")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_PD                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_PD:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("ADD")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |48| 
	.dwpsn	file "../Biom_AS7026GG.c",line 50,column 5,is_stmt,isa 0
        MOVB      AL,#26                ; [CPU_ALU] |50| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |50| 
        ; call occurs [#_I2C_Write_Byte] ; [] |50| 
	.dwpsn	file "../Biom_AS7026GG.c",line 51,column 5,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |51| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |51| 
        ; call occurs [#_I2C_Write_Byte] ; [] |51| 
	.dwpsn	file "../Biom_AS7026GG.c",line 52,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |52| 
        MOVB      AH,#2                 ; [CPU_ALU] |52| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |52| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |52| 
        ; call occurs [#_I2C_StartWR] ; [] |52| 
	.dwpsn	file "../Biom_AS7026GG.c",line 54,column 5,is_stmt,isa 0
        MOVB      AL,#28                ; [CPU_ALU] |54| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |54| 
        ; call occurs [#_I2C_Write_Byte] ; [] |54| 
	.dwpsn	file "../Biom_AS7026GG.c",line 55,column 5,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |55| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |55| 
        ; call occurs [#_I2C_Write_Byte] ; [] |55| 
	.dwpsn	file "../Biom_AS7026GG.c",line 56,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |56| 
        MOVB      AH,#2                 ; [CPU_ALU] |56| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |56| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |56| 
        ; call occurs [#_I2C_StartWR] ; [] |56| 
	.dwpsn	file "../Biom_AS7026GG.c",line 57,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_Config_TIA

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("Config_TIA")
	.dwattr $C$DW$42, DW_AT_low_pc(_Config_TIA)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_Config_TIA")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 62,column 25,is_stmt,address _Config_TIA,isa 0

	.dwfde $C$DW$CIE, _Config_TIA
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("ADD")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_TIA                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_TIA:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("ADD")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |62| 
	.dwpsn	file "../Biom_AS7026GG.c",line 64,column 5,is_stmt,isa 0
        MOVB      AL,#29                ; [CPU_ALU] |64| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |64| 
        ; call occurs [#_I2C_Write_Byte] ; [] |64| 
	.dwpsn	file "../Biom_AS7026GG.c",line 65,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |65| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |65| 
        ; call occurs [#_I2C_Write_Byte] ; [] |65| 
	.dwpsn	file "../Biom_AS7026GG.c",line 66,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |66| 
        MOVB      AH,#2                 ; [CPU_ALU] |66| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |66| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |66| 
        ; call occurs [#_I2C_StartWR] ; [] |66| 
	.dwpsn	file "../Biom_AS7026GG.c",line 68,column 5,is_stmt,isa 0
        MOVB      AL,#30                ; [CPU_ALU] |68| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |68| 
        ; call occurs [#_I2C_Write_Byte] ; [] |68| 
	.dwpsn	file "../Biom_AS7026GG.c",line 69,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |69| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |69| 
        ; call occurs [#_I2C_Write_Byte] ; [] |69| 
	.dwpsn	file "../Biom_AS7026GG.c",line 71,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |71| 
        MOVB      AH,#2                 ; [CPU_ALU] |71| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |71| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |71| 
        ; call occurs [#_I2C_StartWR] ; [] |71| 
	.dwpsn	file "../Biom_AS7026GG.c",line 72,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.clink
	.global	_Config_SEQ

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("Config_SEQ")
	.dwattr $C$DW$52, DW_AT_low_pc(_Config_SEQ)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_Config_SEQ")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x4d)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 77,column 25,is_stmt,address _Config_SEQ,isa 0

	.dwfde $C$DW$CIE, _Config_SEQ
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("ADD")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_SEQ                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_SEQ:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("ADD")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |77| 
	.dwpsn	file "../Biom_AS7026GG.c",line 79,column 5,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_ALU] |79| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |79| 
        ; call occurs [#_I2C_Write_Byte] ; [] |79| 
	.dwpsn	file "../Biom_AS7026GG.c",line 80,column 5,is_stmt,isa 0
        MOVB      AL,#17                ; [CPU_ALU] |80| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |80| 
        ; call occurs [#_I2C_Write_Byte] ; [] |80| 
	.dwpsn	file "../Biom_AS7026GG.c",line 81,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |81| 
        MOVB      AH,#2                 ; [CPU_ALU] |81| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |81| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |81| 
        ; call occurs [#_I2C_StartWR] ; [] |81| 
	.dwpsn	file "../Biom_AS7026GG.c",line 83,column 5,is_stmt,isa 0
        MOVB      AL,#51                ; [CPU_ALU] |83| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |83| 
        ; call occurs [#_I2C_Write_Byte] ; [] |83| 
	.dwpsn	file "../Biom_AS7026GG.c",line 84,column 5,is_stmt,isa 0
        MOVB      AL,#217               ; [CPU_ALU] |84| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |84| 
        ; call occurs [#_I2C_Write_Byte] ; [] |84| 
	.dwpsn	file "../Biom_AS7026GG.c",line 86,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |86| 
        MOVB      AH,#2                 ; [CPU_ALU] |86| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |86| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |86| 
        ; call occurs [#_I2C_StartWR] ; [] |86| 
	.dwpsn	file "../Biom_AS7026GG.c",line 88,column 5,is_stmt,isa 0
        MOVB      AL,#52                ; [CPU_ALU] |88| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |88| 
        ; call occurs [#_I2C_Write_Byte] ; [] |88| 
	.dwpsn	file "../Biom_AS7026GG.c",line 89,column 5,is_stmt,isa 0
        MOVB      AL,#108               ; [CPU_ALU] |89| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |89| 
        ; call occurs [#_I2C_Write_Byte] ; [] |89| 
	.dwpsn	file "../Biom_AS7026GG.c",line 90,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |90| 
        MOVB      AH,#2                 ; [CPU_ALU] |90| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |90| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |90| 
        ; call occurs [#_I2C_StartWR] ; [] |90| 
	.dwpsn	file "../Biom_AS7026GG.c",line 92,column 5,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_ALU] |92| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |92| 
        ; call occurs [#_I2C_Write_Byte] ; [] |92| 
	.dwpsn	file "../Biom_AS7026GG.c",line 93,column 5,is_stmt,isa 0
        MOVB      AL,#116               ; [CPU_ALU] |93| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |93| 
        ; call occurs [#_I2C_Write_Byte] ; [] |93| 
	.dwpsn	file "../Biom_AS7026GG.c",line 94,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |94| 
        MOVB      AH,#2                 ; [CPU_ALU] |94| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |94| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |94| 
        ; call occurs [#_I2C_StartWR] ; [] |94| 
	.dwpsn	file "../Biom_AS7026GG.c",line 96,column 5,is_stmt,isa 0
        MOVB      AL,#56                ; [CPU_ALU] |96| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |96| 
        ; call occurs [#_I2C_Write_Byte] ; [] |96| 
	.dwpsn	file "../Biom_AS7026GG.c",line 97,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |97| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |97| 
        ; call occurs [#_I2C_Write_Byte] ; [] |97| 
	.dwpsn	file "../Biom_AS7026GG.c",line 98,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |98| 
        MOVB      AH,#2                 ; [CPU_ALU] |98| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |98| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |98| 
        ; call occurs [#_I2C_StartWR] ; [] |98| 
	.dwpsn	file "../Biom_AS7026GG.c",line 100,column 5,is_stmt,isa 0
        MOVB      AL,#58                ; [CPU_ALU] |100| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |100| 
        ; call occurs [#_I2C_Write_Byte] ; [] |100| 
	.dwpsn	file "../Biom_AS7026GG.c",line 101,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |101| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |101| 
        ; call occurs [#_I2C_Write_Byte] ; [] |101| 
	.dwpsn	file "../Biom_AS7026GG.c",line 102,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |102| 
        MOVB      XAR4,#1               ; [CPU_ALU] |102| 
        MOVB      AH,#2                 ; [CPU_ALU] |102| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |102| 
        ; call occurs [#_I2C_StartWR] ; [] |102| 
	.dwpsn	file "../Biom_AS7026GG.c",line 104,column 5,is_stmt,isa 0
        MOVB      AL,#59                ; [CPU_ALU] |104| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |104| 
        ; call occurs [#_I2C_Write_Byte] ; [] |104| 
	.dwpsn	file "../Biom_AS7026GG.c",line 105,column 5,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_ALU] |105| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |105| 
        ; call occurs [#_I2C_Write_Byte] ; [] |105| 
	.dwpsn	file "../Biom_AS7026GG.c",line 106,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |106| 
        MOVB      AH,#2                 ; [CPU_ALU] |106| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |106| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |106| 
        ; call occurs [#_I2C_StartWR] ; [] |106| 
	.dwpsn	file "../Biom_AS7026GG.c",line 108,column 5,is_stmt,isa 0
        MOVB      AL,#62                ; [CPU_ALU] |108| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |108| 
        ; call occurs [#_I2C_Write_Byte] ; [] |108| 
	.dwpsn	file "../Biom_AS7026GG.c",line 109,column 5,is_stmt,isa 0
        MOVB      AL,#109               ; [CPU_ALU] |109| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |109| 
        ; call occurs [#_I2C_Write_Byte] ; [] |109| 
	.dwpsn	file "../Biom_AS7026GG.c",line 110,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |110| 
        MOVB      AH,#2                 ; [CPU_ALU] |110| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |110| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |110| 
        ; call occurs [#_I2C_StartWR] ; [] |110| 
	.dwpsn	file "../Biom_AS7026GG.c",line 112,column 5,is_stmt,isa 0
        MOVB      AL,#63                ; [CPU_ALU] |112| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |112| 
        ; call occurs [#_I2C_Write_Byte] ; [] |112| 
	.dwpsn	file "../Biom_AS7026GG.c",line 113,column 5,is_stmt,isa 0
        MOVB      AL,#116               ; [CPU_ALU] |113| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |113| 
        ; call occurs [#_I2C_Write_Byte] ; [] |113| 
	.dwpsn	file "../Biom_AS7026GG.c",line 114,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |114| 
        MOVB      AH,#2                 ; [CPU_ALU] |114| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |114| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |114| 
        ; call occurs [#_I2C_StartWR] ; [] |114| 
	.dwpsn	file "../Biom_AS7026GG.c",line 116,column 5,is_stmt,isa 0
        MOVB      AL,#66                ; [CPU_ALU] |116| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |116| 
        ; call occurs [#_I2C_Write_Byte] ; [] |116| 
	.dwpsn	file "../Biom_AS7026GG.c",line 117,column 5,is_stmt,isa 0
        MOVB      AL,#109               ; [CPU_ALU] |117| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |117| 
        ; call occurs [#_I2C_Write_Byte] ; [] |117| 
	.dwpsn	file "../Biom_AS7026GG.c",line 118,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |118| 
        MOVB      AH,#2                 ; [CPU_ALU] |118| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |118| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |118| 
        ; call occurs [#_I2C_StartWR] ; [] |118| 
	.dwpsn	file "../Biom_AS7026GG.c",line 120,column 5,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |120| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |120| 
        ; call occurs [#_I2C_Write_Byte] ; [] |120| 
	.dwpsn	file "../Biom_AS7026GG.c",line 121,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |121| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |121| 
        ; call occurs [#_I2C_Write_Byte] ; [] |121| 
	.dwpsn	file "../Biom_AS7026GG.c",line 122,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |122| 
        MOVB      AH,#2                 ; [CPU_ALU] |122| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |122| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |122| 
        ; call occurs [#_I2C_StartWR] ; [] |122| 
	.dwpsn	file "../Biom_AS7026GG.c",line 123,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text"
	.clink
	.global	_Config_OFE

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("Config_OFE")
	.dwattr $C$DW$89, DW_AT_low_pc(_Config_OFE)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_Config_OFE")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 128,column 25,is_stmt,address _Config_OFE,isa 0

	.dwfde $C$DW$CIE, _Config_OFE
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("ADD")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_OFE                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_OFE:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("ADD")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |128| 
	.dwpsn	file "../Biom_AS7026GG.c",line 130,column 5,is_stmt,isa 0
        MOVB      AL,#80                ; [CPU_ALU] |130| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |130| 
        ; call occurs [#_I2C_Write_Byte] ; [] |130| 
	.dwpsn	file "../Biom_AS7026GG.c",line 131,column 5,is_stmt,isa 0
        MOVB      AL,#97                ; [CPU_ALU] |131| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |131| 
        ; call occurs [#_I2C_Write_Byte] ; [] |131| 
	.dwpsn	file "../Biom_AS7026GG.c",line 134,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |134| 
        MOVB      AH,#2                 ; [CPU_ALU] |134| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |134| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |134| 
        ; call occurs [#_I2C_StartWR] ; [] |134| 
	.dwpsn	file "../Biom_AS7026GG.c",line 136,column 5,is_stmt,isa 0
        MOVB      AL,#82                ; [CPU_ALU] |136| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |136| 
        ; call occurs [#_I2C_Write_Byte] ; [] |136| 
	.dwpsn	file "../Biom_AS7026GG.c",line 137,column 5,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |137| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |137| 
        ; call occurs [#_I2C_Write_Byte] ; [] |137| 
	.dwpsn	file "../Biom_AS7026GG.c",line 145,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |145| 
        MOVB      AH,#2                 ; [CPU_ALU] |145| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |145| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |145| 
        ; call occurs [#_I2C_StartWR] ; [] |145| 
	.dwpsn	file "../Biom_AS7026GG.c",line 147,column 5,is_stmt,isa 0
        MOVB      AL,#83                ; [CPU_ALU] |147| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |147| 
        ; call occurs [#_I2C_Write_Byte] ; [] |147| 
	.dwpsn	file "../Biom_AS7026GG.c",line 148,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |148| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |148| 
        ; call occurs [#_I2C_Write_Byte] ; [] |148| 
	.dwpsn	file "../Biom_AS7026GG.c",line 150,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |150| 
        MOVB      XAR4,#1               ; [CPU_ALU] |150| 
        MOVB      AH,#2                 ; [CPU_ALU] |150| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |150| 
        ; call occurs [#_I2C_StartWR] ; [] |150| 
	.dwpsn	file "../Biom_AS7026GG.c",line 152,column 5,is_stmt,isa 0
        MOVB      AL,#84                ; [CPU_ALU] |152| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |152| 
        ; call occurs [#_I2C_Write_Byte] ; [] |152| 
	.dwpsn	file "../Biom_AS7026GG.c",line 153,column 5,is_stmt,isa 0
        MOVB      AL,#241               ; [CPU_ALU] |153| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |153| 
        ; call occurs [#_I2C_Write_Byte] ; [] |153| 
	.dwpsn	file "../Biom_AS7026GG.c",line 158,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |158| 
        MOVB      AH,#2                 ; [CPU_ALU] |158| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |158| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |158| 
        ; call occurs [#_I2C_StartWR] ; [] |158| 
	.dwpsn	file "../Biom_AS7026GG.c",line 160,column 5,is_stmt,isa 0
        MOVB      AL,#85                ; [CPU_ALU] |160| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |160| 
        ; call occurs [#_I2C_Write_Byte] ; [] |160| 
	.dwpsn	file "../Biom_AS7026GG.c",line 161,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |161| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |161| 
        ; call occurs [#_I2C_Write_Byte] ; [] |161| 
	.dwpsn	file "../Biom_AS7026GG.c",line 165,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |165| 
        MOVB      AH,#2                 ; [CPU_ALU] |165| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |165| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |165| 
        ; call occurs [#_I2C_StartWR] ; [] |165| 
	.dwpsn	file "../Biom_AS7026GG.c",line 166,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xa6)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.global	_Config_LTF

$C$DW$108	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$108, DW_AT_name("Config_LTF")
	.dwattr $C$DW$108, DW_AT_low_pc(_Config_LTF)
	.dwattr $C$DW$108, DW_AT_high_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_Config_LTF")
	.dwattr $C$DW$108, DW_AT_external
	.dwattr $C$DW$108, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 171,column 25,is_stmt,address _Config_LTF,isa 0

	.dwfde $C$DW$CIE, _Config_LTF
$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("ADD")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_LTF                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_LTF:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("ADD")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |171| 
	.dwpsn	file "../Biom_AS7026GG.c",line 172,column 5,is_stmt,isa 0
 NOP
	.dwpsn	file "../Biom_AS7026GG.c",line 173,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$108, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xad)
	.dwattr $C$DW$108, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$108

	.sect	".text"
	.clink
	.global	_Config_EAF

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("Config_EAF")
	.dwattr $C$DW$112, DW_AT_low_pc(_Config_EAF)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_Config_EAF")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0xb2)
	.dwattr $C$DW$112, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 178,column 25,is_stmt,address _Config_EAF,isa 0

	.dwfde $C$DW$CIE, _Config_EAF
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("ADD")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_EAF                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_EAF:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("ADD")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |178| 
	.dwpsn	file "../Biom_AS7026GG.c",line 180,column 5,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_ALU] |180| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |180| 
        ; call occurs [#_I2C_Write_Byte] ; [] |180| 
	.dwpsn	file "../Biom_AS7026GG.c",line 181,column 5,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_ALU] |181| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |181| 
        ; call occurs [#_I2C_Write_Byte] ; [] |181| 
	.dwpsn	file "../Biom_AS7026GG.c",line 184,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |184| 
        MOVB      AH,#2                 ; [CPU_ALU] |184| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |184| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |184| 
        ; call occurs [#_I2C_StartWR] ; [] |184| 
	.dwpsn	file "../Biom_AS7026GG.c",line 186,column 5,is_stmt,isa 0
        MOVB      AL,#130               ; [CPU_ALU] |186| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |186| 
        ; call occurs [#_I2C_Write_Byte] ; [] |186| 
	.dwpsn	file "../Biom_AS7026GG.c",line 187,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |187| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |187| 
        ; call occurs [#_I2C_Write_Byte] ; [] |187| 
	.dwpsn	file "../Biom_AS7026GG.c",line 188,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |188| 
        MOVB      AH,#2                 ; [CPU_ALU] |188| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |188| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |188| 
        ; call occurs [#_I2C_StartWR] ; [] |188| 
	.dwpsn	file "../Biom_AS7026GG.c",line 190,column 5,is_stmt,isa 0
        MOVB      AL,#131               ; [CPU_ALU] |190| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |190| 
        ; call occurs [#_I2C_Write_Byte] ; [] |190| 
	.dwpsn	file "../Biom_AS7026GG.c",line 191,column 5,is_stmt,isa 0
        MOVB      AL,#192               ; [CPU_ALU] |191| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |191| 
        ; call occurs [#_I2C_Write_Byte] ; [] |191| 
	.dwpsn	file "../Biom_AS7026GG.c",line 192,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |192| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |192| 
        ; call occurs [#_I2C_Write_Byte] ; [] |192| 
	.dwpsn	file "../Biom_AS7026GG.c",line 193,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |193| 
        MOVB      AH,#3                 ; [CPU_ALU] |193| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |193| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |193| 
        ; call occurs [#_I2C_StartWR] ; [] |193| 
	.dwpsn	file "../Biom_AS7026GG.c",line 195,column 5,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_ALU] |195| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |195| 
        ; call occurs [#_I2C_Write_Byte] ; [] |195| 
	.dwpsn	file "../Biom_AS7026GG.c",line 196,column 5,is_stmt,isa 0
        MOVB      AL,#15                ; [CPU_ALU] |196| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |196| 
        ; call occurs [#_I2C_Write_Byte] ; [] |196| 
	.dwpsn	file "../Biom_AS7026GG.c",line 200,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |200| 
        MOVB      AH,#2                 ; [CPU_ALU] |200| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |200| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |200| 
        ; call occurs [#_I2C_StartWR] ; [] |200| 
	.dwpsn	file "../Biom_AS7026GG.c",line 201,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0xc9)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text"
	.clink
	.global	_Config_ECG

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("Config_ECG")
	.dwattr $C$DW$129, DW_AT_low_pc(_Config_ECG)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_Config_ECG")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 206,column 25,is_stmt,address _Config_ECG,isa 0

	.dwfde $C$DW$CIE, _Config_ECG
$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("ADD")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_ECG                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_ECG:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("ADD")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |206| 
	.dwpsn	file "../Biom_AS7026GG.c",line 208,column 5,is_stmt,isa 0
        MOVB      AL,#92                ; [CPU_ALU] |208| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |208| 
        ; call occurs [#_I2C_Write_Byte] ; [] |208| 
	.dwpsn	file "../Biom_AS7026GG.c",line 209,column 5,is_stmt,isa 0
        MOVB      AL,#184               ; [CPU_ALU] |209| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |209| 
        ; call occurs [#_I2C_Write_Byte] ; [] |209| 
	.dwpsn	file "../Biom_AS7026GG.c",line 210,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |210| 
        MOVB      AH,#2                 ; [CPU_ALU] |210| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |210| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |210| 
        ; call occurs [#_I2C_StartWR] ; [] |210| 
	.dwpsn	file "../Biom_AS7026GG.c",line 212,column 5,is_stmt,isa 0
        MOVB      AL,#93                ; [CPU_ALU] |212| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |212| 
        ; call occurs [#_I2C_Write_Byte] ; [] |212| 
	.dwpsn	file "../Biom_AS7026GG.c",line 213,column 5,is_stmt,isa 0
        MOVB      AL,#38                ; [CPU_ALU] |213| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |213| 
        ; call occurs [#_I2C_Write_Byte] ; [] |213| 
	.dwpsn	file "../Biom_AS7026GG.c",line 216,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |216| 
        MOVB      AH,#2                 ; [CPU_ALU] |216| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |216| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |216| 
        ; call occurs [#_I2C_StartWR] ; [] |216| 
	.dwpsn	file "../Biom_AS7026GG.c",line 218,column 5,is_stmt,isa 0
        MOVB      AL,#94                ; [CPU_ALU] |218| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |218| 
        ; call occurs [#_I2C_Write_Byte] ; [] |218| 
	.dwpsn	file "../Biom_AS7026GG.c",line 219,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |219| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |219| 
        ; call occurs [#_I2C_Write_Byte] ; [] |219| 
	.dwpsn	file "../Biom_AS7026GG.c",line 220,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |220| 
        MOVB      AH,#2                 ; [CPU_ALU] |220| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |220| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |220| 
        ; call occurs [#_I2C_StartWR] ; [] |220| 
	.dwpsn	file "../Biom_AS7026GG.c",line 221,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text"
	.clink
	.global	_Config_ADC

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("Config_ADC")
	.dwattr $C$DW$142, DW_AT_low_pc(_Config_ADC)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_Config_ADC")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 226,column 25,is_stmt,address _Config_ADC,isa 0

	.dwfde $C$DW$CIE, _Config_ADC
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("ADD")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_ADC                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_ADC:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("ADD")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |226| 
	.dwpsn	file "../Biom_AS7026GG.c",line 228,column 5,is_stmt,isa 0
        MOVB      AL,#137               ; [CPU_ALU] |228| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |228| 
        ; call occurs [#_I2C_Write_Byte] ; [] |228| 
	.dwpsn	file "../Biom_AS7026GG.c",line 229,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |229| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |229| 
        ; call occurs [#_I2C_Write_Byte] ; [] |229| 
	.dwpsn	file "../Biom_AS7026GG.c",line 230,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |230| 
        MOVB      AH,#2                 ; [CPU_ALU] |230| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |230| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |230| 
        ; call occurs [#_I2C_StartWR] ; [] |230| 
	.dwpsn	file "../Biom_AS7026GG.c",line 232,column 5,is_stmt,isa 0
        MOVB      AL,#138               ; [CPU_ALU] |232| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |232| 
        ; call occurs [#_I2C_Write_Byte] ; [] |232| 
	.dwpsn	file "../Biom_AS7026GG.c",line 233,column 5,is_stmt,isa 0
        MOVB      AL,#29                ; [CPU_ALU] |233| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |233| 
        ; call occurs [#_I2C_Write_Byte] ; [] |233| 
	.dwpsn	file "../Biom_AS7026GG.c",line 236,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |236| 
        MOVB      AH,#2                 ; [CPU_ALU] |236| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |236| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |236| 
        ; call occurs [#_I2C_StartWR] ; [] |236| 
	.dwpsn	file "../Biom_AS7026GG.c",line 238,column 5,is_stmt,isa 0
        MOVB      AL,#139               ; [CPU_ALU] |238| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |238| 
        ; call occurs [#_I2C_Write_Byte] ; [] |238| 
	.dwpsn	file "../Biom_AS7026GG.c",line 244,column 5,is_stmt,isa 0
        MOVB      AL,#130               ; [CPU_ALU] |244| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |244| 
        ; call occurs [#_I2C_Write_Byte] ; [] |244| 
	.dwpsn	file "../Biom_AS7026GG.c",line 246,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |246| 
        MOVB      AH,#2                 ; [CPU_ALU] |246| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |246| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |246| 
        ; call occurs [#_I2C_StartWR] ; [] |246| 
	.dwpsn	file "../Biom_AS7026GG.c",line 247,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text"
	.clink
	.global	_Config_FIFO

$C$DW$155	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$155, DW_AT_name("Config_FIFO")
	.dwattr $C$DW$155, DW_AT_low_pc(_Config_FIFO)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_Config_FIFO")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 252,column 26,is_stmt,address _Config_FIFO,isa 0

	.dwfde $C$DW$CIE, _Config_FIFO
$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("ADD")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_FIFO                  FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_FIFO:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$157	.dwtag  DW_TAG_variable
	.dwattr $C$DW$157, DW_AT_name("ADD")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |252| 
	.dwpsn	file "../Biom_AS7026GG.c",line 254,column 5,is_stmt,isa 0
        MOVB      AL,#120               ; [CPU_ALU] |254| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |254| 
        ; call occurs [#_I2C_Write_Byte] ; [] |254| 
	.dwpsn	file "../Biom_AS7026GG.c",line 255,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |255| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |255| 
        ; call occurs [#_I2C_Write_Byte] ; [] |255| 
	.dwpsn	file "../Biom_AS7026GG.c",line 256,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |256| 
        MOVB      AH,#2                 ; [CPU_ALU] |256| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |256| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |256| 
        ; call occurs [#_I2C_StartWR] ; [] |256| 
	.dwpsn	file "../Biom_AS7026GG.c",line 258,column 5,is_stmt,isa 0
        MOVB      AL,#121               ; [CPU_ALU] |258| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |258| 
        ; call occurs [#_I2C_Write_Byte] ; [] |258| 
	.dwpsn	file "../Biom_AS7026GG.c",line 259,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |259| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |259| 
        ; call occurs [#_I2C_Write_Byte] ; [] |259| 
	.dwpsn	file "../Biom_AS7026GG.c",line 260,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |260| 
        MOVB      AH,#2                 ; [CPU_ALU] |260| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |260| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |260| 
        ; call occurs [#_I2C_StartWR] ; [] |260| 
	.dwpsn	file "../Biom_AS7026GG.c",line 261,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$155, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x105)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text"
	.clink
	.global	_Config_GPIOs

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("Config_GPIOs")
	.dwattr $C$DW$165, DW_AT_low_pc(_Config_GPIOs)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_Config_GPIOs")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 266,column 27,is_stmt,address _Config_GPIOs,isa 0

	.dwfde $C$DW$CIE, _Config_GPIOs
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("ADD")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _Config_GPIOs                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_Config_GPIOs:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("ADD")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_ADD")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -1]

        MOV       *-SP[1],AL            ; [CPU_ALU] |266| 
	.dwpsn	file "../Biom_AS7026GG.c",line 268,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |268| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |268| 
        ; call occurs [#_I2C_Write_Byte] ; [] |268| 
	.dwpsn	file "../Biom_AS7026GG.c",line 269,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |269| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |269| 
        ; call occurs [#_I2C_Write_Byte] ; [] |269| 
	.dwpsn	file "../Biom_AS7026GG.c",line 270,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |270| 
        MOVB      AH,#2                 ; [CPU_ALU] |270| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |270| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |270| 
        ; call occurs [#_I2C_StartWR] ; [] |270| 
	.dwpsn	file "../Biom_AS7026GG.c",line 272,column 5,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_ALU] |272| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |272| 
        ; call occurs [#_I2C_Write_Byte] ; [] |272| 
	.dwpsn	file "../Biom_AS7026GG.c",line 273,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |273| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |273| 
        ; call occurs [#_I2C_Write_Byte] ; [] |273| 
	.dwpsn	file "../Biom_AS7026GG.c",line 274,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |274| 
        MOVB      AH,#2                 ; [CPU_ALU] |274| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |274| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |274| 
        ; call occurs [#_I2C_StartWR] ; [] |274| 
	.dwpsn	file "../Biom_AS7026GG.c",line 276,column 5,is_stmt,isa 0
        MOVB      AL,#160               ; [CPU_ALU] |276| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |276| 
        ; call occurs [#_I2C_Write_Byte] ; [] |276| 
	.dwpsn	file "../Biom_AS7026GG.c",line 277,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |277| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |277| 
        ; call occurs [#_I2C_Write_Byte] ; [] |277| 
	.dwpsn	file "../Biom_AS7026GG.c",line 278,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |278| 
        MOVB      AH,#2                 ; [CPU_ALU] |278| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |278| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |278| 
        ; call occurs [#_I2C_StartWR] ; [] |278| 
	.dwpsn	file "../Biom_AS7026GG.c",line 280,column 5,is_stmt,isa 0
        MOVB      AL,#168               ; [CPU_ALU] |280| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |280| 
        ; call occurs [#_I2C_Write_Byte] ; [] |280| 
	.dwpsn	file "../Biom_AS7026GG.c",line 281,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |281| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |281| 
        ; call occurs [#_I2C_Write_Byte] ; [] |281| 
	.dwpsn	file "../Biom_AS7026GG.c",line 282,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |282| 
        MOVB      AH,#2                 ; [CPU_ALU] |282| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |282| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |282| 
        ; call occurs [#_I2C_StartWR] ; [] |282| 
	.dwpsn	file "../Biom_AS7026GG.c",line 283,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x11b)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text"
	.clink
	.global	_Biom_Config

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("Biom_Config")
	.dwattr $C$DW$181, DW_AT_low_pc(_Biom_Config)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_Biom_Config")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x120)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Biom_AS7026GG.c",line 288,column 23,is_stmt,address _Biom_Config,isa 0

	.dwfde $C$DW$CIE, _Biom_Config

;***************************************************************
;* FNAME: _Biom_Config                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_Biom_Config:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Biom_AS7026GG.c",line 289,column 5,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |289| 
$C$L1:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |289| 
        B         $C$L1,TC              ; [CPU_ALU] |289| 
        ; branchcc occurs ; [] |289| 
	.dwpsn	file "../Biom_AS7026GG.c",line 291,column 5,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |291| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |291| 
        ; call occurs [#_I2C_Write_Byte] ; [] |291| 
	.dwpsn	file "../Biom_AS7026GG.c",line 292,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |292| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |292| 
        ; call occurs [#_I2C_Write_Byte] ; [] |292| 
	.dwpsn	file "../Biom_AS7026GG.c",line 293,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |293| 
        MOVB      XAR4,#1               ; [CPU_ALU] |293| 
        MOVB      AH,#2                 ; [CPU_ALU] |293| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |293| 
        ; call occurs [#_I2C_StartWR] ; [] |293| 
	.dwpsn	file "../Biom_AS7026GG.c",line 294,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |294| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_Config_GPIOs")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #_Config_GPIOs        ; [CPU_ALU] |294| 
        ; call occurs [#_Config_GPIOs] ; [] |294| 
	.dwpsn	file "../Biom_AS7026GG.c",line 295,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |295| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_Config_TIA")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_Config_TIA          ; [CPU_ALU] |295| 
        ; call occurs [#_Config_TIA] ; [] |295| 
	.dwpsn	file "../Biom_AS7026GG.c",line 296,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |296| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_Config_OFE")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_Config_OFE          ; [CPU_ALU] |296| 
        ; call occurs [#_Config_OFE] ; [] |296| 
	.dwpsn	file "../Biom_AS7026GG.c",line 297,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |297| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_Config_PD")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_Config_PD           ; [CPU_ALU] |297| 
        ; call occurs [#_Config_PD] ; [] |297| 
	.dwpsn	file "../Biom_AS7026GG.c",line 298,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |298| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_Config_EAF")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_Config_EAF          ; [CPU_ALU] |298| 
        ; call occurs [#_Config_EAF] ; [] |298| 
	.dwpsn	file "../Biom_AS7026GG.c",line 299,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |299| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_Config_ADC")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_Config_ADC          ; [CPU_ALU] |299| 
        ; call occurs [#_Config_ADC] ; [] |299| 
	.dwpsn	file "../Biom_AS7026GG.c",line 300,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |300| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_Config_FIFO")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_Config_FIFO         ; [CPU_ALU] |300| 
        ; call occurs [#_Config_FIFO] ; [] |300| 
	.dwpsn	file "../Biom_AS7026GG.c",line 301,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |301| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_Config_LEDs")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_Config_LEDs         ; [CPU_ALU] |301| 
        ; call occurs [#_Config_LEDs] ; [] |301| 
	.dwpsn	file "../Biom_AS7026GG.c",line 302,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |302| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_Config_SEQ")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #_Config_SEQ          ; [CPU_ALU] |302| 
        ; call occurs [#_Config_SEQ] ; [] |302| 
	.dwpsn	file "../Biom_AS7026GG.c",line 303,column 5,is_stmt,isa 0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |303| 
        ; call occurs [#_I2C_Stop] ; [] |303| 
	.dwpsn	file "../Biom_AS7026GG.c",line 304,column 1,is_stmt,isa 0
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x130)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.clink
	.global	_Biom_Calibration

$C$DW$196	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$196, DW_AT_name("Biom_Calibration")
	.dwattr $C$DW$196, DW_AT_low_pc(_Biom_Calibration)
	.dwattr $C$DW$196, DW_AT_high_pc(0x00)
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_Biom_Calibration")
	.dwattr $C$DW$196, DW_AT_external
	.dwattr $C$DW$196, DW_AT_TI_begin_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x135)
	.dwattr $C$DW$196, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Biom_AS7026GG.c",line 309,column 59,is_stmt,address _Biom_Calibration,isa 0

	.dwfde $C$DW$CIE, _Biom_Calibration
$C$DW$197	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$197, DW_AT_name("Mode")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_Mode")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg0]

$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("Offset_Curr")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_Offset_Curr")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: _Biom_Calibration             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_Biom_Calibration:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("Curr")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_Curr")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_breg20 -2]

$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("Mode")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_Mode")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_breg20 -3]

$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("Offset_Curr")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_Offset_Curr")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg20 -4]

        MOV       *-SP[4],AH            ; [CPU_ALU] |309| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |309| 
	.dwpsn	file "../Biom_AS7026GG.c",line 311,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |311| 
        B         $C$L3,NEQ             ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
        CMP       *-SP[4],#256          ; [CPU_ALU] |311| 
        B         $C$L3,HIS             ; [CPU_ALU] |311| 
        ; branchcc occurs ; [] |311| 
	.dwpsn	file "../Biom_AS7026GG.c",line 312,column 9,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |312| 
$C$L2:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |312| 
        B         $C$L2,TC              ; [CPU_ALU] |312| 
        ; branchcc occurs ; [] |312| 
	.dwpsn	file "../Biom_AS7026GG.c",line 314,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |314| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |314| 
        ; call occurs [#_I2C_Write_Byte] ; [] |314| 
	.dwpsn	file "../Biom_AS7026GG.c",line 315,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |315| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |315| 
        ; call occurs [#_I2C_Write_Byte] ; [] |315| 
	.dwpsn	file "../Biom_AS7026GG.c",line 316,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |316| 
        MOVB      XAR4,#1               ; [CPU_ALU] |316| 
        MOVB      AH,#2                 ; [CPU_ALU] |316| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |316| 
        ; call occurs [#_I2C_StartWR] ; [] |316| 
	.dwpsn	file "../Biom_AS7026GG.c",line 318,column 9,is_stmt,isa 0
        MOVB      AL,#28                ; [CPU_ALU] |318| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |318| 
        ; call occurs [#_I2C_Write_Byte] ; [] |318| 
	.dwpsn	file "../Biom_AS7026GG.c",line 319,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |319| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |319| 
        ; call occurs [#_I2C_Write_Byte] ; [] |319| 
	.dwpsn	file "../Biom_AS7026GG.c",line 320,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |320| 
        MOVB      XAR4,#1               ; [CPU_ALU] |320| 
        MOVB      AH,#2                 ; [CPU_ALU] |320| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |320| 
        ; call occurs [#_I2C_StartWR] ; [] |320| 
	.dwpsn	file "../Biom_AS7026GG.c",line 322,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |322| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |322| 
        ; call occurs [#_I2C_Write_Byte] ; [] |322| 
	.dwpsn	file "../Biom_AS7026GG.c",line 323,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |323| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |323| 
        ; call occurs [#_I2C_Write_Byte] ; [] |323| 
	.dwpsn	file "../Biom_AS7026GG.c",line 324,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |324| 
        MOVB      XAR4,#1               ; [CPU_ALU] |324| 
        MOVB      AH,#2                 ; [CPU_ALU] |324| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |324| 
        ; call occurs [#_I2C_StartWR] ; [] |324| 
	.dwpsn	file "../Biom_AS7026GG.c",line 325,column 9,is_stmt,isa 0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |325| 
        ; call occurs [#_I2C_Stop] ; [] |325| 
	.dwpsn	file "../Biom_AS7026GG.c",line 326,column 5,is_stmt,isa 0
        B         $C$L5,UNC             ; [CPU_ALU] |326| 
        ; branch occurs ; [] |326| 
$C$L3:    
	.dwpsn	file "../Biom_AS7026GG.c",line 327,column 10,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |327| 
        CMPB      AL,#39                ; [CPU_ALU] |327| 
        B         $C$L5,HIS             ; [CPU_ALU] |327| 
        ; branchcc occurs ; [] |327| 
	.dwpsn	file "../Biom_AS7026GG.c",line 328,column 9,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |328| 
$C$L4:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |328| 
        B         $C$L4,TC              ; [CPU_ALU] |328| 
        ; branchcc occurs ; [] |328| 
	.dwpsn	file "../Biom_AS7026GG.c",line 330,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |330| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |330| 
        ; call occurs [#_I2C_Write_Byte] ; [] |330| 
	.dwpsn	file "../Biom_AS7026GG.c",line 331,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |331| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |331| 
        ; call occurs [#_I2C_Write_Byte] ; [] |331| 
	.dwpsn	file "../Biom_AS7026GG.c",line 332,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |332| 
        MOVB      XAR4,#1               ; [CPU_ALU] |332| 
        MOVB      AH,#2                 ; [CPU_ALU] |332| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |332| 
        ; call occurs [#_I2C_StartWR] ; [] |332| 
	.dwpsn	file "../Biom_AS7026GG.c",line 334,column 9,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |334| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |334| 
        ; call occurs [#_I2C_Write_Byte] ; [] |334| 
	.dwpsn	file "../Biom_AS7026GG.c",line 335,column 9,is_stmt,isa 0
        MOVB      AL,#64                ; [CPU_ALU] |335| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |335| 
        ; call occurs [#_I2C_Write_Byte] ; [] |335| 
	.dwpsn	file "../Biom_AS7026GG.c",line 337,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |337| 
        MOVB      XAR4,#1               ; [CPU_ALU] |337| 
        MOVB      AH,#2                 ; [CPU_ALU] |337| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |337| 
        ; call occurs [#_I2C_StartWR] ; [] |337| 
	.dwpsn	file "../Biom_AS7026GG.c",line 339,column 9,is_stmt,isa 0
        MOVB      AL,#18                ; [CPU_ALU] |339| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |339| 
        ; call occurs [#_I2C_Write_Byte] ; [] |339| 
	.dwpsn	file "../Biom_AS7026GG.c",line 340,column 9,is_stmt,isa 0
        MOV       T,*-SP[4]             ; [CPU_ALU] |340| 
        MPYB      ACC,T,#26             ; [CPU_ALU] |340| 
        ADDB      AL,#18                ; [CPU_ALU] |340| 
        MOVU      ACC,AL                ; [CPU_ALU] |340| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |340| 
	.dwpsn	file "../Biom_AS7026GG.c",line 341,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[2] << #6     ; [CPU_ALU] |341| 
        ANDB      AL,#0xff              ; [CPU_ALU] |341| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |341| 
        ; call occurs [#_I2C_Write_Byte] ; [] |341| 
	.dwpsn	file "../Biom_AS7026GG.c",line 342,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |342| 
        SFR       ACC,2                 ; [CPU_ALU] |342| 
        ANDB      AL,#0xff              ; [CPU_ALU] |342| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |342| 
        ; call occurs [#_I2C_Write_Byte] ; [] |342| 
	.dwpsn	file "../Biom_AS7026GG.c",line 343,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |343| 
        MOVB      XAR4,#1               ; [CPU_ALU] |343| 
        MOVB      AH,#3                 ; [CPU_ALU] |343| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |343| 
        ; call occurs [#_I2C_StartWR] ; [] |343| 
	.dwpsn	file "../Biom_AS7026GG.c",line 345,column 9,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |345| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |345| 
        ; call occurs [#_I2C_Write_Byte] ; [] |345| 
	.dwpsn	file "../Biom_AS7026GG.c",line 346,column 9,is_stmt,isa 0
        MOVB      AL,#73                ; [CPU_ALU] |346| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |346| 
        ; call occurs [#_I2C_Write_Byte] ; [] |346| 
	.dwpsn	file "../Biom_AS7026GG.c",line 348,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |348| 
        MOVB      XAR4,#1               ; [CPU_ALU] |348| 
        MOVB      AH,#2                 ; [CPU_ALU] |348| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |348| 
        ; call occurs [#_I2C_StartWR] ; [] |348| 
	.dwpsn	file "../Biom_AS7026GG.c",line 350,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |350| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |350| 
        ; call occurs [#_I2C_Write_Byte] ; [] |350| 
	.dwpsn	file "../Biom_AS7026GG.c",line 351,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |351| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |351| 
        ; call occurs [#_I2C_Write_Byte] ; [] |351| 
	.dwpsn	file "../Biom_AS7026GG.c",line 352,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |352| 
        MOVB      XAR4,#1               ; [CPU_ALU] |352| 
        MOVB      AH,#2                 ; [CPU_ALU] |352| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |352| 
        ; call occurs [#_I2C_StartWR] ; [] |352| 
	.dwpsn	file "../Biom_AS7026GG.c",line 353,column 9,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |353| 
        ; call occurs [#_I2C_Stop] ; [] |353| 
	.dwpsn	file "../Biom_AS7026GG.c",line 355,column 1,is_stmt,isa 0
$C$L5:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x163)
	.dwattr $C$DW$196, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$196

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_I2C_Write_Byte
	.global	_I2C_StartWR
	.global	_I2C_Stop

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
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

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

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

$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$19, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)

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

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("AL")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg0]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("AH")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg1]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("PL")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg2]

$C$DW$233	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$233, DW_AT_name("PH")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg3]

$C$DW$234	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$234, DW_AT_name("SP")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg20]

$C$DW$235	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$235, DW_AT_name("XT")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg21]

$C$DW$236	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$236, DW_AT_name("T")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg22]

$C$DW$237	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$237, DW_AT_name("ST0")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg23]

$C$DW$238	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$238, DW_AT_name("ST1")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg24]

$C$DW$239	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$239, DW_AT_name("PC")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg25]

$C$DW$240	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$240, DW_AT_name("RPC")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg26]

$C$DW$241	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$241, DW_AT_name("FP")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg28]

$C$DW$242	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$242, DW_AT_name("DP")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_reg29]

$C$DW$243	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$243, DW_AT_name("SXM")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_reg30]

$C$DW$244	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$244, DW_AT_name("PM")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg31]

$C$DW$245	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$245, DW_AT_name("OVM")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x20]

$C$DW$246	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$246, DW_AT_name("PAGE0")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x21]

$C$DW$247	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$247, DW_AT_name("AMODE")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x22]

$C$DW$248	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$248, DW_AT_name("EALLOW")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$249	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$249, DW_AT_name("INTM")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x23]

$C$DW$250	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$250, DW_AT_name("IFR")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x24]

$C$DW$251	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$251, DW_AT_name("IER")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x25]

$C$DW$252	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$252, DW_AT_name("V")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x26]

$C$DW$253	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$253, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$254	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$254, DW_AT_name("VOL")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$255	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$255, DW_AT_name("AR0")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg4]

$C$DW$256	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$256, DW_AT_name("XAR0")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg5]

$C$DW$257	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$257, DW_AT_name("AR1")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg6]

$C$DW$258	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$258, DW_AT_name("XAR1")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg7]

$C$DW$259	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$259, DW_AT_name("AR2")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg8]

$C$DW$260	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$260, DW_AT_name("XAR2")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg9]

$C$DW$261	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$261, DW_AT_name("AR3")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg10]

$C$DW$262	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$262, DW_AT_name("XAR3")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg11]

$C$DW$263	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$263, DW_AT_name("AR4")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg12]

$C$DW$264	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$264, DW_AT_name("XAR4")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg13]

$C$DW$265	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$265, DW_AT_name("AR5")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg14]

$C$DW$266	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$266, DW_AT_name("XAR5")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg15]

$C$DW$267	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$267, DW_AT_name("AR6")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg16]

$C$DW$268	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$268, DW_AT_name("XAR6")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg17]

$C$DW$269	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$269, DW_AT_name("AR7")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg18]

$C$DW$270	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$270, DW_AT_name("XAR7")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg19]

$C$DW$271	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$271, DW_AT_name("R0H")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$272	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$272, DW_AT_name("R1H")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$273	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$273, DW_AT_name("R2H")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x33]

$C$DW$274	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$274, DW_AT_name("R3H")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x37]

$C$DW$275	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$275, DW_AT_name("R4H")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$276	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$276, DW_AT_name("R5H")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$277	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$277, DW_AT_name("R6H")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x43]

$C$DW$278	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$278, DW_AT_name("R7H")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x47]

$C$DW$279	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$279, DW_AT_name("RB")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$280	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$280, DW_AT_name("STF")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x28]

$C$DW$281	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$281, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg27]

$C$DW$282	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$282, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

