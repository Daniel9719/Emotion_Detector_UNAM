;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v18.12.4.LTS *
;* Date/Time created: Thu Jan 28 10:21:42 2021                 *
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

;	C:\ti\ccs910\ccs\tools\compiler\ti-cgt-c2000_18.12.4.LTS\bin\ac2000.exe -@C:\\Users\\danie\\AppData\\Local\\Temp\\{820181F2-ECE2-4AC5-A36D-85488FE9200C} 
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
        MOVB      AL,#64                ; [CPU_ALU] |11| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |11| 
        ; call occurs [#_I2C_Write_Byte] ; [] |11| 
	.dwpsn	file "../Biom_AS7026GG.c",line 12,column 5,is_stmt,isa 0
        MOVB      AL,#25                ; [CPU_ALU] |12| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$13, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |12| 
        ; call occurs [#_I2C_Write_Byte] ; [] |12| 
	.dwpsn	file "../Biom_AS7026GG.c",line 13,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |13| 
        MOVB      AH,#3                 ; [CPU_ALU] |13| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |13| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$14, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |13| 
        ; call occurs [#_I2C_StartWR] ; [] |13| 
	.dwpsn	file "../Biom_AS7026GG.c",line 15,column 5,is_stmt,isa 0
        MOVB      AL,#24                ; [CPU_ALU] |15| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |15| 
        ; call occurs [#_I2C_Write_Byte] ; [] |15| 
	.dwpsn	file "../Biom_AS7026GG.c",line 16,column 5,is_stmt,isa 0
        MOVB      AL,#192               ; [CPU_ALU] |16| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |16| 
        ; call occurs [#_I2C_Write_Byte] ; [] |16| 
	.dwpsn	file "../Biom_AS7026GG.c",line 17,column 5,is_stmt,isa 0
        MOVB      AL,#126               ; [CPU_ALU] |17| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |17| 
        ; call occurs [#_I2C_Write_Byte] ; [] |17| 
	.dwpsn	file "../Biom_AS7026GG.c",line 18,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |18| 
        MOVB      AH,#3                 ; [CPU_ALU] |18| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |18| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |18| 
        ; call occurs [#_I2C_StartWR] ; [] |18| 
	.dwpsn	file "../Biom_AS7026GG.c",line 20,column 5,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_ALU] |20| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |20| 
        ; call occurs [#_I2C_Write_Byte] ; [] |20| 
	.dwpsn	file "../Biom_AS7026GG.c",line 21,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |21| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |21| 
        ; call occurs [#_I2C_Write_Byte] ; [] |21| 
	.dwpsn	file "../Biom_AS7026GG.c",line 23,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |23| 
        MOVB      XAR4,#1               ; [CPU_ALU] |23| 
        MOVB      AH,#2                 ; [CPU_ALU] |23| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |23| 
        ; call occurs [#_I2C_StartWR] ; [] |23| 
	.dwpsn	file "../Biom_AS7026GG.c",line 25,column 5,is_stmt,isa 0
        MOVB      AL,#45                ; [CPU_ALU] |25| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$22, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |25| 
        ; call occurs [#_I2C_Write_Byte] ; [] |25| 
	.dwpsn	file "../Biom_AS7026GG.c",line 26,column 5,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_ALU] |26| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |26| 
        ; call occurs [#_I2C_Write_Byte] ; [] |26| 
	.dwpsn	file "../Biom_AS7026GG.c",line 28,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |28| 
        MOVB      AH,#2                 ; [CPU_ALU] |28| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |28| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |28| 
        ; call occurs [#_I2C_StartWR] ; [] |28| 
	.dwpsn	file "../Biom_AS7026GG.c",line 31,column 5,is_stmt,isa 0
        MOVB      AL,#46                ; [CPU_ALU] |31| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |31| 
        ; call occurs [#_I2C_Write_Byte] ; [] |31| 
	.dwpsn	file "../Biom_AS7026GG.c",line 32,column 5,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_ALU] |32| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |32| 
        ; call occurs [#_I2C_Write_Byte] ; [] |32| 
	.dwpsn	file "../Biom_AS7026GG.c",line 34,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |34| 
        MOVB      AH,#2                 ; [CPU_ALU] |34| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |34| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |34| 
        ; call occurs [#_I2C_StartWR] ; [] |34| 
	.dwpsn	file "../Biom_AS7026GG.c",line 37,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |37| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |37| 
        ; call occurs [#_I2C_Write_Byte] ; [] |37| 
	.dwpsn	file "../Biom_AS7026GG.c",line 38,column 5,is_stmt,isa 0
        MOVB      AL,#73                ; [CPU_ALU] |38| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |38| 
        ; call occurs [#_I2C_Write_Byte] ; [] |38| 
	.dwpsn	file "../Biom_AS7026GG.c",line 40,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |40| 
        MOVB      AH,#2                 ; [CPU_ALU] |40| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |40| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |40| 
        ; call occurs [#_I2C_StartWR] ; [] |40| 
	.dwpsn	file "../Biom_AS7026GG.c",line 41,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x29)
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
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x2e)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 46,column 24,is_stmt,address _Config_PD,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |46| 
	.dwpsn	file "../Biom_AS7026GG.c",line 48,column 5,is_stmt,isa 0
        MOVB      AL,#26                ; [CPU_ALU] |48| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |48| 
        ; call occurs [#_I2C_Write_Byte] ; [] |48| 
	.dwpsn	file "../Biom_AS7026GG.c",line 49,column 5,is_stmt,isa 0
        MOVB      AL,#36                ; [CPU_ALU] |49| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |49| 
        ; call occurs [#_I2C_Write_Byte] ; [] |49| 
	.dwpsn	file "../Biom_AS7026GG.c",line 50,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |50| 
        MOVB      AH,#2                 ; [CPU_ALU] |50| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |50| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |50| 
        ; call occurs [#_I2C_StartWR] ; [] |50| 
	.dwpsn	file "../Biom_AS7026GG.c",line 52,column 5,is_stmt,isa 0
        MOVB      AL,#28                ; [CPU_ALU] |52| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |52| 
        ; call occurs [#_I2C_Write_Byte] ; [] |52| 
	.dwpsn	file "../Biom_AS7026GG.c",line 53,column 5,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_ALU] |53| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |53| 
        ; call occurs [#_I2C_Write_Byte] ; [] |53| 
	.dwpsn	file "../Biom_AS7026GG.c",line 54,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |54| 
        MOVB      AH,#2                 ; [CPU_ALU] |54| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |54| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |54| 
        ; call occurs [#_I2C_StartWR] ; [] |54| 
	.dwpsn	file "../Biom_AS7026GG.c",line 55,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x37)
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
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 60,column 25,is_stmt,address _Config_TIA,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |60| 
	.dwpsn	file "../Biom_AS7026GG.c",line 62,column 5,is_stmt,isa 0
        MOVB      AL,#29                ; [CPU_ALU] |62| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |62| 
        ; call occurs [#_I2C_Write_Byte] ; [] |62| 
	.dwpsn	file "../Biom_AS7026GG.c",line 63,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |63| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |63| 
        ; call occurs [#_I2C_Write_Byte] ; [] |63| 
	.dwpsn	file "../Biom_AS7026GG.c",line 64,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |64| 
        MOVB      AH,#2                 ; [CPU_ALU] |64| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |64| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |64| 
        ; call occurs [#_I2C_StartWR] ; [] |64| 
	.dwpsn	file "../Biom_AS7026GG.c",line 66,column 5,is_stmt,isa 0
        MOVB      AL,#30                ; [CPU_ALU] |66| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |66| 
        ; call occurs [#_I2C_Write_Byte] ; [] |66| 
	.dwpsn	file "../Biom_AS7026GG.c",line 67,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |67| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |67| 
        ; call occurs [#_I2C_Write_Byte] ; [] |67| 
	.dwpsn	file "../Biom_AS7026GG.c",line 69,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |69| 
        MOVB      AH,#2                 ; [CPU_ALU] |69| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |69| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |69| 
        ; call occurs [#_I2C_StartWR] ; [] |69| 
	.dwpsn	file "../Biom_AS7026GG.c",line 70,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x46)
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
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 75,column 25,is_stmt,address _Config_SEQ,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |75| 
	.dwpsn	file "../Biom_AS7026GG.c",line 77,column 5,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_ALU] |77| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |77| 
        ; call occurs [#_I2C_Write_Byte] ; [] |77| 
	.dwpsn	file "../Biom_AS7026GG.c",line 78,column 5,is_stmt,isa 0
        MOVB      AL,#17                ; [CPU_ALU] |78| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |78| 
        ; call occurs [#_I2C_Write_Byte] ; [] |78| 
	.dwpsn	file "../Biom_AS7026GG.c",line 79,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |79| 
        MOVB      AH,#2                 ; [CPU_ALU] |79| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |79| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |79| 
        ; call occurs [#_I2C_StartWR] ; [] |79| 
	.dwpsn	file "../Biom_AS7026GG.c",line 81,column 5,is_stmt,isa 0
        MOVB      AL,#51                ; [CPU_ALU] |81| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |81| 
        ; call occurs [#_I2C_Write_Byte] ; [] |81| 
	.dwpsn	file "../Biom_AS7026GG.c",line 82,column 5,is_stmt,isa 0
        MOVB      AL,#217               ; [CPU_ALU] |82| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |82| 
        ; call occurs [#_I2C_Write_Byte] ; [] |82| 
	.dwpsn	file "../Biom_AS7026GG.c",line 84,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |84| 
        MOVB      AH,#2                 ; [CPU_ALU] |84| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |84| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |84| 
        ; call occurs [#_I2C_StartWR] ; [] |84| 
	.dwpsn	file "../Biom_AS7026GG.c",line 86,column 5,is_stmt,isa 0
        MOVB      AL,#52                ; [CPU_ALU] |86| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |86| 
        ; call occurs [#_I2C_Write_Byte] ; [] |86| 
	.dwpsn	file "../Biom_AS7026GG.c",line 87,column 5,is_stmt,isa 0
        MOVB      AL,#109               ; [CPU_ALU] |87| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |87| 
        ; call occurs [#_I2C_Write_Byte] ; [] |87| 
	.dwpsn	file "../Biom_AS7026GG.c",line 88,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |88| 
        MOVB      AH,#2                 ; [CPU_ALU] |88| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |88| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |88| 
        ; call occurs [#_I2C_StartWR] ; [] |88| 
	.dwpsn	file "../Biom_AS7026GG.c",line 90,column 5,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_ALU] |90| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |90| 
        ; call occurs [#_I2C_Write_Byte] ; [] |90| 
	.dwpsn	file "../Biom_AS7026GG.c",line 91,column 5,is_stmt,isa 0
        MOVB      AL,#118               ; [CPU_ALU] |91| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |91| 
        ; call occurs [#_I2C_Write_Byte] ; [] |91| 
	.dwpsn	file "../Biom_AS7026GG.c",line 92,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |92| 
        MOVB      AH,#2                 ; [CPU_ALU] |92| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |92| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |92| 
        ; call occurs [#_I2C_StartWR] ; [] |92| 
	.dwpsn	file "../Biom_AS7026GG.c",line 94,column 5,is_stmt,isa 0
        MOVB      AL,#56                ; [CPU_ALU] |94| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |94| 
        ; call occurs [#_I2C_Write_Byte] ; [] |94| 
	.dwpsn	file "../Biom_AS7026GG.c",line 95,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |95| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |95| 
        ; call occurs [#_I2C_Write_Byte] ; [] |95| 
	.dwpsn	file "../Biom_AS7026GG.c",line 96,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |96| 
        MOVB      AH,#2                 ; [CPU_ALU] |96| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |96| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |96| 
        ; call occurs [#_I2C_StartWR] ; [] |96| 
	.dwpsn	file "../Biom_AS7026GG.c",line 98,column 5,is_stmt,isa 0
        MOVB      AL,#58                ; [CPU_ALU] |98| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |98| 
        ; call occurs [#_I2C_Write_Byte] ; [] |98| 
	.dwpsn	file "../Biom_AS7026GG.c",line 99,column 5,is_stmt,isa 0
        MOVB      AL,#110               ; [CPU_ALU] |99| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |99| 
        ; call occurs [#_I2C_Write_Byte] ; [] |99| 
	.dwpsn	file "../Biom_AS7026GG.c",line 100,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |100| 
        MOVB      XAR4,#1               ; [CPU_ALU] |100| 
        MOVB      AH,#2                 ; [CPU_ALU] |100| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |100| 
        ; call occurs [#_I2C_StartWR] ; [] |100| 
	.dwpsn	file "../Biom_AS7026GG.c",line 102,column 5,is_stmt,isa 0
        MOVB      AL,#59                ; [CPU_ALU] |102| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |102| 
        ; call occurs [#_I2C_Write_Byte] ; [] |102| 
	.dwpsn	file "../Biom_AS7026GG.c",line 103,column 5,is_stmt,isa 0
        MOVB      AL,#118               ; [CPU_ALU] |103| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |103| 
        ; call occurs [#_I2C_Write_Byte] ; [] |103| 
	.dwpsn	file "../Biom_AS7026GG.c",line 104,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |104| 
        MOVB      AH,#2                 ; [CPU_ALU] |104| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |104| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |104| 
        ; call occurs [#_I2C_StartWR] ; [] |104| 
	.dwpsn	file "../Biom_AS7026GG.c",line 106,column 5,is_stmt,isa 0
        MOVB      AL,#62                ; [CPU_ALU] |106| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |106| 
        ; call occurs [#_I2C_Write_Byte] ; [] |106| 
	.dwpsn	file "../Biom_AS7026GG.c",line 107,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |107| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |107| 
        ; call occurs [#_I2C_Write_Byte] ; [] |107| 
	.dwpsn	file "../Biom_AS7026GG.c",line 108,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |108| 
        MOVB      AH,#2                 ; [CPU_ALU] |108| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |108| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |108| 
        ; call occurs [#_I2C_StartWR] ; [] |108| 
	.dwpsn	file "../Biom_AS7026GG.c",line 110,column 5,is_stmt,isa 0
        MOVB      AL,#63                ; [CPU_ALU] |110| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |110| 
        ; call occurs [#_I2C_Write_Byte] ; [] |110| 
	.dwpsn	file "../Biom_AS7026GG.c",line 111,column 5,is_stmt,isa 0
        MOVB      AL,#20                ; [CPU_ALU] |111| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |111| 
        ; call occurs [#_I2C_Write_Byte] ; [] |111| 
	.dwpsn	file "../Biom_AS7026GG.c",line 112,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |112| 
        MOVB      AH,#2                 ; [CPU_ALU] |112| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |112| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |112| 
        ; call occurs [#_I2C_StartWR] ; [] |112| 
	.dwpsn	file "../Biom_AS7026GG.c",line 114,column 5,is_stmt,isa 0
        MOVB      AL,#66                ; [CPU_ALU] |114| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |114| 
        ; call occurs [#_I2C_Write_Byte] ; [] |114| 
	.dwpsn	file "../Biom_AS7026GG.c",line 115,column 5,is_stmt,isa 0
        MOVB      AL,#110               ; [CPU_ALU] |115| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |115| 
        ; call occurs [#_I2C_Write_Byte] ; [] |115| 
	.dwpsn	file "../Biom_AS7026GG.c",line 116,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |116| 
        MOVB      AH,#2                 ; [CPU_ALU] |116| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |116| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |116| 
        ; call occurs [#_I2C_StartWR] ; [] |116| 
	.dwpsn	file "../Biom_AS7026GG.c",line 118,column 5,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |118| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |118| 
        ; call occurs [#_I2C_Write_Byte] ; [] |118| 
	.dwpsn	file "../Biom_AS7026GG.c",line 119,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |119| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |119| 
        ; call occurs [#_I2C_Write_Byte] ; [] |119| 
	.dwpsn	file "../Biom_AS7026GG.c",line 120,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |120| 
        MOVB      AH,#2                 ; [CPU_ALU] |120| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |120| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |120| 
        ; call occurs [#_I2C_StartWR] ; [] |120| 
	.dwpsn	file "../Biom_AS7026GG.c",line 121,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x79)
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
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 126,column 25,is_stmt,address _Config_OFE,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |126| 
	.dwpsn	file "../Biom_AS7026GG.c",line 128,column 5,is_stmt,isa 0
        MOVB      AL,#80                ; [CPU_ALU] |128| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |128| 
        ; call occurs [#_I2C_Write_Byte] ; [] |128| 
	.dwpsn	file "../Biom_AS7026GG.c",line 129,column 5,is_stmt,isa 0
        MOVB      AL,#97                ; [CPU_ALU] |129| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |129| 
        ; call occurs [#_I2C_Write_Byte] ; [] |129| 
	.dwpsn	file "../Biom_AS7026GG.c",line 132,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |132| 
        MOVB      AH,#2                 ; [CPU_ALU] |132| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |132| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |132| 
        ; call occurs [#_I2C_StartWR] ; [] |132| 
	.dwpsn	file "../Biom_AS7026GG.c",line 134,column 5,is_stmt,isa 0
        MOVB      AL,#82                ; [CPU_ALU] |134| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |134| 
        ; call occurs [#_I2C_Write_Byte] ; [] |134| 
	.dwpsn	file "../Biom_AS7026GG.c",line 135,column 5,is_stmt,isa 0
        MOVB      AL,#47                ; [CPU_ALU] |135| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |135| 
        ; call occurs [#_I2C_Write_Byte] ; [] |135| 
	.dwpsn	file "../Biom_AS7026GG.c",line 142,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |142| 
        MOVB      AH,#2                 ; [CPU_ALU] |142| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |142| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |142| 
        ; call occurs [#_I2C_StartWR] ; [] |142| 
	.dwpsn	file "../Biom_AS7026GG.c",line 144,column 5,is_stmt,isa 0
        MOVB      AL,#83                ; [CPU_ALU] |144| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |144| 
        ; call occurs [#_I2C_Write_Byte] ; [] |144| 
	.dwpsn	file "../Biom_AS7026GG.c",line 145,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |145| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |145| 
        ; call occurs [#_I2C_Write_Byte] ; [] |145| 
	.dwpsn	file "../Biom_AS7026GG.c",line 147,column 5,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_ALU] |147| 
        MOVB      XAR4,#1               ; [CPU_ALU] |147| 
        MOVB      AH,#2                 ; [CPU_ALU] |147| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |147| 
        ; call occurs [#_I2C_StartWR] ; [] |147| 
	.dwpsn	file "../Biom_AS7026GG.c",line 149,column 5,is_stmt,isa 0
        MOVB      AL,#84                ; [CPU_ALU] |149| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |149| 
        ; call occurs [#_I2C_Write_Byte] ; [] |149| 
	.dwpsn	file "../Biom_AS7026GG.c",line 150,column 5,is_stmt,isa 0
        MOVB      AL,#113               ; [CPU_ALU] |150| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |150| 
        ; call occurs [#_I2C_Write_Byte] ; [] |150| 
	.dwpsn	file "../Biom_AS7026GG.c",line 155,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |155| 
        MOVB      AH,#2                 ; [CPU_ALU] |155| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |155| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |155| 
        ; call occurs [#_I2C_StartWR] ; [] |155| 
	.dwpsn	file "../Biom_AS7026GG.c",line 157,column 5,is_stmt,isa 0
        MOVB      AL,#85                ; [CPU_ALU] |157| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |157| 
        ; call occurs [#_I2C_Write_Byte] ; [] |157| 
	.dwpsn	file "../Biom_AS7026GG.c",line 158,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |158| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |158| 
        ; call occurs [#_I2C_Write_Byte] ; [] |158| 
	.dwpsn	file "../Biom_AS7026GG.c",line 162,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |162| 
        MOVB      AH,#2                 ; [CPU_ALU] |162| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |162| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |162| 
        ; call occurs [#_I2C_StartWR] ; [] |162| 
	.dwpsn	file "../Biom_AS7026GG.c",line 163,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xa3)
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
	.dwattr $C$DW$108, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$108, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$108, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 168,column 25,is_stmt,address _Config_LTF,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |168| 
	.dwpsn	file "../Biom_AS7026GG.c",line 169,column 5,is_stmt,isa 0
 NOP
	.dwpsn	file "../Biom_AS7026GG.c",line 170,column 1,is_stmt,isa 0
        SPM       #0                    ; [CPU_ALU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$108, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$108, DW_AT_TI_end_line(0xaa)
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
	.dwattr $C$DW$112, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$112, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 175,column 25,is_stmt,address _Config_EAF,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |175| 
	.dwpsn	file "../Biom_AS7026GG.c",line 177,column 5,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_ALU] |177| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |177| 
        ; call occurs [#_I2C_Write_Byte] ; [] |177| 
	.dwpsn	file "../Biom_AS7026GG.c",line 178,column 5,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_ALU] |178| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |178| 
        ; call occurs [#_I2C_Write_Byte] ; [] |178| 
	.dwpsn	file "../Biom_AS7026GG.c",line 181,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |181| 
        MOVB      AH,#2                 ; [CPU_ALU] |181| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |181| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |181| 
        ; call occurs [#_I2C_StartWR] ; [] |181| 
	.dwpsn	file "../Biom_AS7026GG.c",line 183,column 5,is_stmt,isa 0
        MOVB      AL,#130               ; [CPU_ALU] |183| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |183| 
        ; call occurs [#_I2C_Write_Byte] ; [] |183| 
	.dwpsn	file "../Biom_AS7026GG.c",line 184,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |184| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |184| 
        ; call occurs [#_I2C_Write_Byte] ; [] |184| 
	.dwpsn	file "../Biom_AS7026GG.c",line 185,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |185| 
        MOVB      AH,#2                 ; [CPU_ALU] |185| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |185| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |185| 
        ; call occurs [#_I2C_StartWR] ; [] |185| 
	.dwpsn	file "../Biom_AS7026GG.c",line 187,column 5,is_stmt,isa 0
        MOVB      AL,#131               ; [CPU_ALU] |187| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |187| 
        ; call occurs [#_I2C_Write_Byte] ; [] |187| 
	.dwpsn	file "../Biom_AS7026GG.c",line 188,column 5,is_stmt,isa 0
        MOVB      AL,#192               ; [CPU_ALU] |188| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |188| 
        ; call occurs [#_I2C_Write_Byte] ; [] |188| 
	.dwpsn	file "../Biom_AS7026GG.c",line 189,column 5,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_ALU] |189| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |189| 
        ; call occurs [#_I2C_Write_Byte] ; [] |189| 
	.dwpsn	file "../Biom_AS7026GG.c",line 190,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |190| 
        MOVB      AH,#3                 ; [CPU_ALU] |190| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |190| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |190| 
        ; call occurs [#_I2C_StartWR] ; [] |190| 
	.dwpsn	file "../Biom_AS7026GG.c",line 192,column 5,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_ALU] |192| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |192| 
        ; call occurs [#_I2C_Write_Byte] ; [] |192| 
	.dwpsn	file "../Biom_AS7026GG.c",line 193,column 5,is_stmt,isa 0
        MOVB      AL,#15                ; [CPU_ALU] |193| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |193| 
        ; call occurs [#_I2C_Write_Byte] ; [] |193| 
	.dwpsn	file "../Biom_AS7026GG.c",line 197,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |197| 
        MOVB      AH,#2                 ; [CPU_ALU] |197| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |197| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |197| 
        ; call occurs [#_I2C_StartWR] ; [] |197| 
	.dwpsn	file "../Biom_AS7026GG.c",line 198,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0xc6)
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
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0xcb)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 203,column 25,is_stmt,address _Config_ECG,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |203| 
	.dwpsn	file "../Biom_AS7026GG.c",line 205,column 5,is_stmt,isa 0
        MOVB      AL,#92                ; [CPU_ALU] |205| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |205| 
        ; call occurs [#_I2C_Write_Byte] ; [] |205| 
	.dwpsn	file "../Biom_AS7026GG.c",line 206,column 5,is_stmt,isa 0
        MOVB      AL,#184               ; [CPU_ALU] |206| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |206| 
        ; call occurs [#_I2C_Write_Byte] ; [] |206| 
	.dwpsn	file "../Biom_AS7026GG.c",line 207,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |207| 
        MOVB      AH,#2                 ; [CPU_ALU] |207| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |207| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |207| 
        ; call occurs [#_I2C_StartWR] ; [] |207| 
	.dwpsn	file "../Biom_AS7026GG.c",line 209,column 5,is_stmt,isa 0
        MOVB      AL,#93                ; [CPU_ALU] |209| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |209| 
        ; call occurs [#_I2C_Write_Byte] ; [] |209| 
	.dwpsn	file "../Biom_AS7026GG.c",line 210,column 5,is_stmt,isa 0
        MOVB      AL,#38                ; [CPU_ALU] |210| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |210| 
        ; call occurs [#_I2C_Write_Byte] ; [] |210| 
	.dwpsn	file "../Biom_AS7026GG.c",line 213,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |213| 
        MOVB      AH,#2                 ; [CPU_ALU] |213| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |213| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |213| 
        ; call occurs [#_I2C_StartWR] ; [] |213| 
	.dwpsn	file "../Biom_AS7026GG.c",line 215,column 5,is_stmt,isa 0
        MOVB      AL,#94                ; [CPU_ALU] |215| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |215| 
        ; call occurs [#_I2C_Write_Byte] ; [] |215| 
	.dwpsn	file "../Biom_AS7026GG.c",line 216,column 5,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |216| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |216| 
        ; call occurs [#_I2C_Write_Byte] ; [] |216| 
	.dwpsn	file "../Biom_AS7026GG.c",line 217,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |217| 
        MOVB      AH,#2                 ; [CPU_ALU] |217| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |217| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |217| 
        ; call occurs [#_I2C_StartWR] ; [] |217| 
	.dwpsn	file "../Biom_AS7026GG.c",line 218,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0xda)
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
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 223,column 25,is_stmt,address _Config_ADC,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |223| 
	.dwpsn	file "../Biom_AS7026GG.c",line 225,column 5,is_stmt,isa 0
        MOVB      AL,#137               ; [CPU_ALU] |225| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |225| 
        ; call occurs [#_I2C_Write_Byte] ; [] |225| 
	.dwpsn	file "../Biom_AS7026GG.c",line 226,column 5,is_stmt,isa 0
        MOVB      AL,#17                ; [CPU_ALU] |226| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |226| 
        ; call occurs [#_I2C_Write_Byte] ; [] |226| 
	.dwpsn	file "../Biom_AS7026GG.c",line 227,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |227| 
        MOVB      AH,#2                 ; [CPU_ALU] |227| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |227| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |227| 
        ; call occurs [#_I2C_StartWR] ; [] |227| 
	.dwpsn	file "../Biom_AS7026GG.c",line 229,column 5,is_stmt,isa 0
        MOVB      AL,#138               ; [CPU_ALU] |229| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |229| 
        ; call occurs [#_I2C_Write_Byte] ; [] |229| 
	.dwpsn	file "../Biom_AS7026GG.c",line 230,column 5,is_stmt,isa 0
        MOVB      AL,#28                ; [CPU_ALU] |230| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |230| 
        ; call occurs [#_I2C_Write_Byte] ; [] |230| 
	.dwpsn	file "../Biom_AS7026GG.c",line 233,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |233| 
        MOVB      AH,#2                 ; [CPU_ALU] |233| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |233| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |233| 
        ; call occurs [#_I2C_StartWR] ; [] |233| 
	.dwpsn	file "../Biom_AS7026GG.c",line 235,column 5,is_stmt,isa 0
        MOVB      AL,#139               ; [CPU_ALU] |235| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |235| 
        ; call occurs [#_I2C_Write_Byte] ; [] |235| 
	.dwpsn	file "../Biom_AS7026GG.c",line 241,column 5,is_stmt,isa 0
        MOVB      AL,#130               ; [CPU_ALU] |241| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |241| 
        ; call occurs [#_I2C_Write_Byte] ; [] |241| 
	.dwpsn	file "../Biom_AS7026GG.c",line 243,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |243| 
        MOVB      AH,#2                 ; [CPU_ALU] |243| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |243| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |243| 
        ; call occurs [#_I2C_StartWR] ; [] |243| 
	.dwpsn	file "../Biom_AS7026GG.c",line 244,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0xf4)
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
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0xf9)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 249,column 26,is_stmt,address _Config_FIFO,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |249| 
	.dwpsn	file "../Biom_AS7026GG.c",line 251,column 5,is_stmt,isa 0
        MOVB      AL,#120               ; [CPU_ALU] |251| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |251| 
        ; call occurs [#_I2C_Write_Byte] ; [] |251| 
	.dwpsn	file "../Biom_AS7026GG.c",line 252,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |252| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |252| 
        ; call occurs [#_I2C_Write_Byte] ; [] |252| 
	.dwpsn	file "../Biom_AS7026GG.c",line 253,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |253| 
        MOVB      AH,#2                 ; [CPU_ALU] |253| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |253| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |253| 
        ; call occurs [#_I2C_StartWR] ; [] |253| 
	.dwpsn	file "../Biom_AS7026GG.c",line 255,column 5,is_stmt,isa 0
        MOVB      AL,#121               ; [CPU_ALU] |255| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |255| 
        ; call occurs [#_I2C_Write_Byte] ; [] |255| 
	.dwpsn	file "../Biom_AS7026GG.c",line 256,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |256| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |256| 
        ; call occurs [#_I2C_Write_Byte] ; [] |256| 
	.dwpsn	file "../Biom_AS7026GG.c",line 257,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |257| 
        MOVB      AH,#2                 ; [CPU_ALU] |257| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |257| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |257| 
        ; call occurs [#_I2C_StartWR] ; [] |257| 
	.dwpsn	file "../Biom_AS7026GG.c",line 258,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$155, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x102)
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
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x107)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Biom_AS7026GG.c",line 263,column 27,is_stmt,address _Config_GPIOs,isa 0

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

        MOV       *-SP[1],AL            ; [CPU_ALU] |263| 
	.dwpsn	file "../Biom_AS7026GG.c",line 265,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |265| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |265| 
        ; call occurs [#_I2C_Write_Byte] ; [] |265| 
	.dwpsn	file "../Biom_AS7026GG.c",line 266,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |266| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |266| 
        ; call occurs [#_I2C_Write_Byte] ; [] |266| 
	.dwpsn	file "../Biom_AS7026GG.c",line 267,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |267| 
        MOVB      AH,#2                 ; [CPU_ALU] |267| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |267| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |267| 
        ; call occurs [#_I2C_StartWR] ; [] |267| 
	.dwpsn	file "../Biom_AS7026GG.c",line 269,column 5,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_ALU] |269| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |269| 
        ; call occurs [#_I2C_Write_Byte] ; [] |269| 
	.dwpsn	file "../Biom_AS7026GG.c",line 270,column 5,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |270| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |270| 
        ; call occurs [#_I2C_Write_Byte] ; [] |270| 
	.dwpsn	file "../Biom_AS7026GG.c",line 271,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |271| 
        MOVB      AH,#2                 ; [CPU_ALU] |271| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |271| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |271| 
        ; call occurs [#_I2C_StartWR] ; [] |271| 
	.dwpsn	file "../Biom_AS7026GG.c",line 273,column 5,is_stmt,isa 0
        MOVB      AL,#160               ; [CPU_ALU] |273| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |273| 
        ; call occurs [#_I2C_Write_Byte] ; [] |273| 
	.dwpsn	file "../Biom_AS7026GG.c",line 274,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |274| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |274| 
        ; call occurs [#_I2C_Write_Byte] ; [] |274| 
	.dwpsn	file "../Biom_AS7026GG.c",line 275,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |275| 
        MOVB      AH,#2                 ; [CPU_ALU] |275| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |275| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |275| 
        ; call occurs [#_I2C_StartWR] ; [] |275| 
	.dwpsn	file "../Biom_AS7026GG.c",line 277,column 5,is_stmt,isa 0
        MOVB      AL,#168               ; [CPU_ALU] |277| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |277| 
        ; call occurs [#_I2C_Write_Byte] ; [] |277| 
	.dwpsn	file "../Biom_AS7026GG.c",line 278,column 5,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |278| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |278| 
        ; call occurs [#_I2C_Write_Byte] ; [] |278| 
	.dwpsn	file "../Biom_AS7026GG.c",line 279,column 5,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |279| 
        MOVB      AH,#2                 ; [CPU_ALU] |279| 
        MOV       AL,*-SP[1]            ; [CPU_ALU] |279| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |279| 
        ; call occurs [#_I2C_StartWR] ; [] |279| 
	.dwpsn	file "../Biom_AS7026GG.c",line 280,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x118)
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
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Biom_AS7026GG.c",line 285,column 23,is_stmt,address _Biom_Config,isa 0

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
	.dwpsn	file "../Biom_AS7026GG.c",line 286,column 5,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |286| 
$C$L1:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |286| 
        B         $C$L1,TC              ; [CPU_ALU] |286| 
        ; branchcc occurs ; [] |286| 
	.dwpsn	file "../Biom_AS7026GG.c",line 288,column 5,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |288| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |288| 
        ; call occurs [#_I2C_Write_Byte] ; [] |288| 
	.dwpsn	file "../Biom_AS7026GG.c",line 289,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |289| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |289| 
        ; call occurs [#_I2C_Write_Byte] ; [] |289| 
	.dwpsn	file "../Biom_AS7026GG.c",line 290,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |290| 
        MOVB      XAR4,#1               ; [CPU_ALU] |290| 
        MOVB      AH,#2                 ; [CPU_ALU] |290| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |290| 
        ; call occurs [#_I2C_StartWR] ; [] |290| 
	.dwpsn	file "../Biom_AS7026GG.c",line 291,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |291| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_Config_GPIOs")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #_Config_GPIOs        ; [CPU_ALU] |291| 
        ; call occurs [#_Config_GPIOs] ; [] |291| 
	.dwpsn	file "../Biom_AS7026GG.c",line 292,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |292| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_Config_TIA")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_Config_TIA          ; [CPU_ALU] |292| 
        ; call occurs [#_Config_TIA] ; [] |292| 
	.dwpsn	file "../Biom_AS7026GG.c",line 293,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |293| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_Config_OFE")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_Config_OFE          ; [CPU_ALU] |293| 
        ; call occurs [#_Config_OFE] ; [] |293| 
	.dwpsn	file "../Biom_AS7026GG.c",line 294,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |294| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_Config_PD")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_Config_PD           ; [CPU_ALU] |294| 
        ; call occurs [#_Config_PD] ; [] |294| 
	.dwpsn	file "../Biom_AS7026GG.c",line 295,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |295| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_Config_EAF")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_Config_EAF          ; [CPU_ALU] |295| 
        ; call occurs [#_Config_EAF] ; [] |295| 
	.dwpsn	file "../Biom_AS7026GG.c",line 296,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |296| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_Config_ADC")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_Config_ADC          ; [CPU_ALU] |296| 
        ; call occurs [#_Config_ADC] ; [] |296| 
	.dwpsn	file "../Biom_AS7026GG.c",line 297,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |297| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_Config_FIFO")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_Config_FIFO         ; [CPU_ALU] |297| 
        ; call occurs [#_Config_FIFO] ; [] |297| 
	.dwpsn	file "../Biom_AS7026GG.c",line 298,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |298| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_Config_LEDs")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_Config_LEDs         ; [CPU_ALU] |298| 
        ; call occurs [#_Config_LEDs] ; [] |298| 
	.dwpsn	file "../Biom_AS7026GG.c",line 299,column 5,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |299| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_Config_SEQ")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #_Config_SEQ          ; [CPU_ALU] |299| 
        ; call occurs [#_Config_SEQ] ; [] |299| 
	.dwpsn	file "../Biom_AS7026GG.c",line 300,column 5,is_stmt,isa 0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |300| 
        ; call occurs [#_I2C_Stop] ; [] |300| 
	.dwpsn	file "../Biom_AS7026GG.c",line 301,column 1,is_stmt,isa 0
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x12d)
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
	.dwattr $C$DW$196, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$196, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$196, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Biom_AS7026GG.c",line 306,column 59,is_stmt,address _Biom_Calibration,isa 0

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

        MOV       *-SP[4],AH            ; [CPU_ALU] |306| 
        MOV       *-SP[3],AL            ; [CPU_ALU] |306| 
	.dwpsn	file "../Biom_AS7026GG.c",line 308,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |308| 
        B         $C$L2,EQ              ; [CPU_ALU] |308| 
        ; branchcc occurs ; [] |308| 
        MOVL      XAR4,#29442           ; [CPU_ARAU] |325| 
        B         $C$L4,UNC             ; [CPU_ALU] |308| 
        ; branch occurs ; [] |308| 
$C$L2:    
	.dwpsn	file "../Biom_AS7026GG.c",line 309,column 9,is_stmt,isa 0
        MOVL      XAR4,#29442           ; [CPU_ARAU] |309| 
$C$L3:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |309| 
        B         $C$L3,TC              ; [CPU_ALU] |309| 
        ; branchcc occurs ; [] |309| 
	.dwpsn	file "../Biom_AS7026GG.c",line 311,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |311| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |311| 
        ; call occurs [#_I2C_Write_Byte] ; [] |311| 
	.dwpsn	file "../Biom_AS7026GG.c",line 312,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |312| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |312| 
        ; call occurs [#_I2C_Write_Byte] ; [] |312| 
	.dwpsn	file "../Biom_AS7026GG.c",line 313,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |313| 
        MOVB      XAR4,#1               ; [CPU_ALU] |313| 
        MOVB      AH,#2                 ; [CPU_ALU] |313| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |313| 
        ; call occurs [#_I2C_StartWR] ; [] |313| 
	.dwpsn	file "../Biom_AS7026GG.c",line 315,column 9,is_stmt,isa 0
        MOVB      AL,#28                ; [CPU_ALU] |315| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |315| 
        ; call occurs [#_I2C_Write_Byte] ; [] |315| 
	.dwpsn	file "../Biom_AS7026GG.c",line 316,column 9,is_stmt,isa 0
        MOV       AL,*-SP[4]            ; [CPU_ALU] |316| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |316| 
        ; call occurs [#_I2C_Write_Byte] ; [] |316| 
	.dwpsn	file "../Biom_AS7026GG.c",line 317,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |317| 
        MOVB      XAR4,#1               ; [CPU_ALU] |317| 
        MOVB      AH,#2                 ; [CPU_ALU] |317| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |317| 
        ; call occurs [#_I2C_StartWR] ; [] |317| 
	.dwpsn	file "../Biom_AS7026GG.c",line 319,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |319| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |319| 
        ; call occurs [#_I2C_Write_Byte] ; [] |319| 
	.dwpsn	file "../Biom_AS7026GG.c",line 320,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |320| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |320| 
        ; call occurs [#_I2C_Write_Byte] ; [] |320| 
	.dwpsn	file "../Biom_AS7026GG.c",line 321,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |321| 
        MOVB      XAR4,#1               ; [CPU_ALU] |321| 
        MOVB      AH,#2                 ; [CPU_ALU] |321| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |321| 
        ; call occurs [#_I2C_StartWR] ; [] |321| 
	.dwpsn	file "../Biom_AS7026GG.c",line 322,column 9,is_stmt,isa 0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |322| 
        ; call occurs [#_I2C_Stop] ; [] |322| 
	.dwpsn	file "../Biom_AS7026GG.c",line 323,column 5,is_stmt,isa 0
        B         $C$L5,UNC             ; [CPU_ALU] |323| 
        ; branch occurs ; [] |323| 
$C$L4:    
        TBIT      *+XAR4[0],#12         ; [CPU_ALU] |325| 
        B         $C$L4,TC              ; [CPU_ALU] |325| 
        ; branchcc occurs ; [] |325| 
	.dwpsn	file "../Biom_AS7026GG.c",line 327,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |327| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |327| 
        ; call occurs [#_I2C_Write_Byte] ; [] |327| 
	.dwpsn	file "../Biom_AS7026GG.c",line 328,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |328| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |328| 
        ; call occurs [#_I2C_Write_Byte] ; [] |328| 
	.dwpsn	file "../Biom_AS7026GG.c",line 329,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |329| 
        MOVB      XAR4,#1               ; [CPU_ALU] |329| 
        MOVB      AH,#2                 ; [CPU_ALU] |329| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |329| 
        ; call occurs [#_I2C_StartWR] ; [] |329| 
	.dwpsn	file "../Biom_AS7026GG.c",line 331,column 9,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |331| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |331| 
        ; call occurs [#_I2C_Write_Byte] ; [] |331| 
	.dwpsn	file "../Biom_AS7026GG.c",line 332,column 9,is_stmt,isa 0
        MOVB      AL,#64                ; [CPU_ALU] |332| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |332| 
        ; call occurs [#_I2C_Write_Byte] ; [] |332| 
	.dwpsn	file "../Biom_AS7026GG.c",line 334,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |334| 
        MOVB      XAR4,#1               ; [CPU_ALU] |334| 
        MOVB      AH,#2                 ; [CPU_ALU] |334| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |334| 
        ; call occurs [#_I2C_StartWR] ; [] |334| 
	.dwpsn	file "../Biom_AS7026GG.c",line 336,column 9,is_stmt,isa 0
        MOVB      AL,#18                ; [CPU_ALU] |336| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |336| 
        ; call occurs [#_I2C_Write_Byte] ; [] |336| 
	.dwpsn	file "../Biom_AS7026GG.c",line 337,column 9,is_stmt,isa 0
        MOV       T,*-SP[4]             ; [CPU_ALU] |337| 
        MPYB      ACC,T,#26             ; [CPU_ALU] |337| 
        ADDB      AL,#69                ; [CPU_ALU] |337| 
        MOVU      ACC,AL                ; [CPU_ALU] |337| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |337| 
	.dwpsn	file "../Biom_AS7026GG.c",line 338,column 9,is_stmt,isa 0
        MOV       ACC,*-SP[2] << #6     ; [CPU_ALU] |338| 
        ANDB      AL,#0xff              ; [CPU_ALU] |338| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |338| 
        ; call occurs [#_I2C_Write_Byte] ; [] |338| 
	.dwpsn	file "../Biom_AS7026GG.c",line 339,column 9,is_stmt,isa 0
        CLRC      SXM                   ; [CPU_ALU] 
        MOVL      ACC,*-SP[2]           ; [CPU_ALU] |339| 
        SFR       ACC,2                 ; [CPU_ALU] |339| 
        ANDB      AL,#0xff              ; [CPU_ALU] |339| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |339| 
        ; call occurs [#_I2C_Write_Byte] ; [] |339| 
	.dwpsn	file "../Biom_AS7026GG.c",line 340,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |340| 
        MOVB      XAR4,#1               ; [CPU_ALU] |340| 
        MOVB      AH,#3                 ; [CPU_ALU] |340| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |340| 
        ; call occurs [#_I2C_StartWR] ; [] |340| 
	.dwpsn	file "../Biom_AS7026GG.c",line 342,column 9,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |342| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |342| 
        ; call occurs [#_I2C_Write_Byte] ; [] |342| 
	.dwpsn	file "../Biom_AS7026GG.c",line 343,column 9,is_stmt,isa 0
        MOVB      AL,#73                ; [CPU_ALU] |343| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |343| 
        ; call occurs [#_I2C_Write_Byte] ; [] |343| 
	.dwpsn	file "../Biom_AS7026GG.c",line 345,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |345| 
        MOVB      XAR4,#1               ; [CPU_ALU] |345| 
        MOVB      AH,#2                 ; [CPU_ALU] |345| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |345| 
        ; call occurs [#_I2C_StartWR] ; [] |345| 
	.dwpsn	file "../Biom_AS7026GG.c",line 347,column 9,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_ALU] |347| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |347| 
        ; call occurs [#_I2C_Write_Byte] ; [] |347| 
	.dwpsn	file "../Biom_AS7026GG.c",line 348,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |348| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_I2C_Write_Byte")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_I2C_Write_Byte      ; [CPU_ALU] |348| 
        ; call occurs [#_I2C_Write_Byte] ; [] |348| 
	.dwpsn	file "../Biom_AS7026GG.c",line 349,column 9,is_stmt,isa 0
        MOVB      AL,#48                ; [CPU_ALU] |349| 
        MOVB      XAR4,#1               ; [CPU_ALU] |349| 
        MOVB      AH,#2                 ; [CPU_ALU] |349| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_I2C_StartWR")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_I2C_StartWR         ; [CPU_ALU] |349| 
        ; call occurs [#_I2C_StartWR] ; [] |349| 
	.dwpsn	file "../Biom_AS7026GG.c",line 350,column 9,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_I2C_Stop")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_I2C_Stop            ; [CPU_ALU] |350| 
        ; call occurs [#_I2C_Stop] ; [] |350| 
	.dwpsn	file "../Biom_AS7026GG.c",line 352,column 1,is_stmt,isa 0
$C$L5:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$196, DW_AT_TI_end_file("../Biom_AS7026GG.c")
	.dwattr $C$DW$196, DW_AT_TI_end_line(0x160)
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

