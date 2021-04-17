;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                             PC v18.12.4.LTS *
;* Date/Time created: Sat Apr  3 11:48:11 2021                 *
;***************************************************************
	.compiler_opts --abi=coffabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 --tmu_support=tmu0 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../HM10_BLE.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen PC v18.12.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\danie\Documents\Tesis\Emotion_Detector_UNAM\CCS\Sensor_Testing_Files\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_LSB$1+0,32
	.bits		0x1,16
			; _LSB$1 @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("SCI_State")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SCI_State")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("SCI_RxAvail")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_SCI_RxAvail")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("SCI_Data")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_SCI_Data")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

_LSB$1:	.usect	".ebss",1,1,0
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("SCI_StartPt")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SCI_StartPt")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("SCI_EndPt")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SCI_EndPt")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external

	.sblock	".ebss"
;	C:\ti\ccs910\ccs\tools\compiler\ti-cgt-c2000_18.12.4.LTS\bin\ac2000.exe -@C:\\Users\\danie\\AppData\\Local\\Temp\\{9B950B91-50E5-4D92-B0E8-06F24EAC76B9} 
	.sect	".text"
	.clink
	.global	_SCIB_WText

$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("SCIB_WText")
	.dwattr $C$DW$6, DW_AT_low_pc(_SCIB_WText)
	.dwattr $C$DW$6, DW_AT_high_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_SCIB_WText")
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$6, DW_AT_TI_begin_line(0x11)
	.dwattr $C$DW$6, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$6, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../HM10_BLE.c",line 17,column 33,is_stmt,address _SCIB_WText,isa 0

	.dwfde $C$DW$CIE, _SCIB_WText
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("TxText_Pt")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_TxText_Pt")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _SCIB_WText                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_SCIB_WText:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("TxText_Pt")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_TxText_Pt")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |17| 
	.dwpsn	file "../HM10_BLE.c",line 18,column 5,is_stmt,isa 0
        SETC      SXM                   ; [CPU_ALU] 
        MOVL      XAR5,#29209           ; [CPU_ARAU] |20| 
        B         $C$L2,UNC             ; [CPU_ALU] |18| 
        ; branch occurs ; [] |18| 
$C$L1:    
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |19| 
        AND       AL,#7936              ; [CPU_ALU] |19| 
        ANDB      AH,#0                 ; [CPU_ALU] |19| 
        TEST      ACC                   ; [CPU_ALU] |19| 
        B         $C$L1,NEQ             ; [CPU_ALU] |19| 
        ; branchcc occurs ; [] |19| 
	.dwpsn	file "../HM10_BLE.c",line 20,column 9,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |20| 
        MOV       ACC,*XAR4++           ; [CPU_ALU] |20| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |20| 
        MOVL      *+XAR5[0],ACC         ; [CPU_ALU] |20| 
$C$L2:    
	.dwpsn	file "../HM10_BLE.c",line 18,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |18| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |18| 
        B         $C$L3,EQ              ; [CPU_ALU] |18| 
        ; branchcc occurs ; [] |18| 
        MOVL      XAR4,#29210           ; [CPU_ARAU] |19| 
        B         $C$L1,UNC             ; [CPU_ALU] |18| 
        ; branch occurs ; [] |18| 
$C$L3:    
	.dwpsn	file "../HM10_BLE.c",line 22,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$6, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$6, DW_AT_TI_end_line(0x16)
	.dwattr $C$DW$6, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$6

	.sect	".text"
	.clink
	.global	_SCIB_WData

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("SCIB_WData")
	.dwattr $C$DW$10, DW_AT_low_pc(_SCIB_WData)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_SCIB_WData")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../HM10_BLE.c",line 27,column 22,is_stmt,address _SCIB_WData,isa 0

	.dwfde $C$DW$CIE, _SCIB_WData
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("LSB")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_LSB$1")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _LSB$1]


;***************************************************************
;* FNAME: _SCIB_WData                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SCIB_WData:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../HM10_BLE.c",line 30,column 5,is_stmt,isa 0
        B         $C$L7,UNC             ; [CPU_ALU] |30| 
        ; branch occurs ; [] |30| 
$C$L4:    
	.dwpsn	file "../HM10_BLE.c",line 31,column 9,is_stmt,isa 0
        MOVW      DP,#_SCI_Data         ; [CPU_ARAU] 
        MOVL      XAR4,#29209           ; [CPU_ARAU] |31| 
        MOVU      ACC,@_SCI_Data        ; [CPU_ALU] |31| 
        MOVL      *+XAR4[0],ACC         ; [CPU_ALU] |31| 
	.dwpsn	file "../HM10_BLE.c",line 32,column 9,is_stmt,isa 0
        MOVW      DP,#_LSB$1            ; [CPU_ARAU] 
        MOV       AL,@_LSB$1            ; [CPU_ALU] |32| 
        B         $C$L5,EQ              ; [CPU_ALU] |32| 
        ; branchcc occurs ; [] |32| 
	.dwpsn	file "../HM10_BLE.c",line 33,column 13,is_stmt,isa 0
        MOVW      DP,#_SCI_StartPt      ; [CPU_ARAU] 
        MOVL      XAR4,@_SCI_StartPt    ; [CPU_ALU] |33| 
        MOVW      DP,#_SCI_Data         ; [CPU_ARAU] 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |33| 
        LSR       AL,8                  ; [CPU_ALU] |33| 
        MOV       @_SCI_Data,AL         ; [CPU_ALU] |33| 
	.dwpsn	file "../HM10_BLE.c",line 34,column 9,is_stmt,isa 0
        B         $C$L6,UNC             ; [CPU_ALU] |34| 
        ; branch occurs ; [] |34| 
$C$L5:    
	.dwpsn	file "../HM10_BLE.c",line 36,column 13,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |36| 
        MOVW      DP,#_SCI_StartPt      ; [CPU_ARAU] 
        ADDL      @_SCI_StartPt,ACC     ; [CPU_ALU] |36| 
	.dwpsn	file "../HM10_BLE.c",line 37,column 13,is_stmt,isa 0
        MOVL      XAR7,@_SCI_StartPt    ; [CPU_ALU] |37| 
        MOVW      DP,#_SCI_Data         ; [CPU_ARAU] 
        MOV       AL,*+XAR7[0]          ; [CPU_ALU] |37| 
        MOV       @_SCI_Data,AL         ; [CPU_ALU] |37| 
$C$L6:    
	.dwpsn	file "../HM10_BLE.c",line 39,column 9,is_stmt,isa 0
        MOVW      DP,#_LSB$1            ; [CPU_ARAU] 
        XOR       @_LSB$1,#0x0001       ; [CPU_ALU] |39| 
$C$L7:    
	.dwpsn	file "../HM10_BLE.c",line 30,column 11,is_stmt,isa 0
        MOVW      DP,#_SCI_EndPt        ; [CPU_ARAU] 
        MOVL      ACC,@_SCI_EndPt       ; [CPU_ALU] |30| 
        MOVW      DP,#_SCI_StartPt      ; [CPU_ARAU] 
        CMPL      ACC,@_SCI_StartPt     ; [CPU_ALU] |30| 
        B         $C$L8,EQ              ; [CPU_ALU] |30| 
        ; branchcc occurs ; [] |30| 
        MOVL      XAR4,#29210           ; [CPU_ARAU] |30| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |30| 
        AND       AL,#7936              ; [CPU_ALU] |30| 
        ANDB      AH,#0                 ; [CPU_ALU] |30| 
        MOVL      XAR4,#4096            ; [CPU_ARAU] |30| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |30| 
        B         $C$L4,NEQ             ; [CPU_ALU] |30| 
        ; branchcc occurs ; [] |30| 
	.dwpsn	file "../HM10_BLE.c",line 41,column 1,is_stmt,isa 0
$C$L8:    
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.global	_SCIB_Read

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SCIB_Read")
	.dwattr $C$DW$13, DW_AT_low_pc(_SCIB_Read)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SCIB_Read")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../HM10_BLE.c",line 47,column 32,is_stmt,address _SCIB_Read,isa 0

	.dwfde $C$DW$CIE, _SCIB_Read
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_name("RxData_Pt")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_RxData_Pt")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _SCIB_Read                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_SCIB_Read:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("RxData_Pt")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_RxData_Pt")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |47| 
	.dwpsn	file "../HM10_BLE.c",line 48,column 5,is_stmt,isa 0
        MOVL      XAR4,#29207           ; [CPU_ARAU] |48| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_ALU] |48| 
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |48| 
        ANDB      AL,#0xff              ; [CPU_ALU] |48| 
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |48| 
	.dwpsn	file "../HM10_BLE.c",line 49,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.global	_Clean_Reg

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("Clean_Reg")
	.dwattr $C$DW$17, DW_AT_low_pc(_Clean_Reg)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_Clean_Reg")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x37)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../HM10_BLE.c",line 55,column 29,is_stmt,address _Clean_Reg,isa 0

	.dwfde $C$DW$CIE, _Clean_Reg
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("Reg_Pt")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Reg_Pt")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _Clean_Reg                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************

_Clean_Reg:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("Reg_Pt")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_Reg_Pt")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg20 -2]

        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |55| 
	.dwpsn	file "../HM10_BLE.c",line 56,column 5,is_stmt,isa 0
        B         $C$L10,UNC            ; [CPU_ALU] |56| 
        ; branch occurs ; [] |56| 
$C$L9:    
	.dwpsn	file "../HM10_BLE.c",line 57,column 9,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |57| 
        ADDB      ACC,#1                ; [CPU_ALU] |57| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |57| 
        MOV       *+XAR4[0],#0          ; [CPU_ALU] |57| 
$C$L10:    
	.dwpsn	file "../HM10_BLE.c",line 56,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[2]          ; [CPU_ALU] |56| 
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |56| 
        B         $C$L9,NEQ             ; [CPU_ALU] |56| 
        ; branchcc occurs ; [] |56| 
	.dwpsn	file "../HM10_BLE.c",line 59,column 1,is_stmt,isa 0
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text"
	.clink
	.global	_ComandoAT

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("ComandoAT")
	.dwattr $C$DW$21, DW_AT_low_pc(_ComandoAT)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_ComandoAT")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x42)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../HM10_BLE.c",line 66,column 44,is_stmt,address _ComandoAT,isa 0

	.dwfde $C$DW$CIE, _ComandoAT
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("Comando")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_Comando")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg12]

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("Opcion")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_Opcion")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: _ComandoAT                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_ComandoAT:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("Comando")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_Comando")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg20 -2]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("Opcion")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_Opcion")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg20 -4]

        MOVL      *-SP[4],XAR5          ; [CPU_ALU] |66| 
        MOVL      *-SP[2],XAR4          ; [CPU_ALU] |66| 
	.dwpsn	file "../HM10_BLE.c",line 67,column 5,is_stmt,isa 0
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_SCIB_WText")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_SCIB_WText          ; [CPU_ALU] |67| 
        ; call occurs [#_SCIB_WText] ; [] |67| 
	.dwpsn	file "../HM10_BLE.c",line 68,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[4]          ; [CPU_ALU] |68| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_SCIB_WText")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_SCIB_WText          ; [CPU_ALU] |68| 
        ; call occurs [#_SCIB_WText] ; [] |68| 
	.dwpsn	file "../HM10_BLE.c",line 69,column 5,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL1         ; [CPU_ARAU] |69| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_SCIB_WText")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_SCIB_WText          ; [CPU_ALU] |69| 
        ; call occurs [#_SCIB_WText] ; [] |69| 
	.dwpsn	file "../HM10_BLE.c",line 70,column 5,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL2         ; [CPU_ARAU] |70| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_SCIB_WText")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_SCIB_WText          ; [CPU_ALU] |70| 
        ; call occurs [#_SCIB_WText] ; [] |70| 
	.dwpsn	file "../HM10_BLE.c",line 71,column 1,is_stmt,isa 0
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text"
	.clink
	.global	_HM10_Config

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("HM10_Config")
	.dwattr $C$DW$31, DW_AT_low_pc(_HM10_Config)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_HM10_Config")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../HM10_BLE.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../HM10_BLE.c",line 76,column 23,is_stmt,address _HM10_Config,isa 0

	.dwfde $C$DW$CIE, _HM10_Config

;***************************************************************
;* FNAME: _HM10_Config                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_HM10_Config:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../HM10_BLE.c",line 77,column 5,is_stmt,isa 0
        MOVW      DP,#_SCI_State        ; [CPU_ARAU] 
        MOV       @_SCI_State,#0        ; [CPU_ALU] |77| 
	.dwpsn	file "../HM10_BLE.c",line 78,column 5,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOVB      @_SCI_RxAvail,#1,UNC  ; [CPU_ALU] |78| 
	.dwpsn	file "../HM10_BLE.c",line 79,column 11,is_stmt,isa 0
        MOVW      DP,#_SCI_State        ; [CPU_ARAU] 
        MOV       AL,@_SCI_State        ; [CPU_ALU] |79| 
        CMPB      AL,#5                 ; [CPU_ALU] |79| 
        B         $C$L20,GEQ            ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
$C$L11:    
	.dwpsn	file "../HM10_BLE.c",line 80,column 9,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       AL,@_SCI_RxAvail      ; [CPU_ALU] |80| 
        B         $C$L19,EQ             ; [CPU_ALU] |80| 
        ; branchcc occurs ; [] |80| 
	.dwpsn	file "../HM10_BLE.c",line 81,column 13,is_stmt,isa 0
        B         $C$L17,UNC            ; [CPU_ALU] |81| 
        ; branch occurs ; [] |81| 
$C$L12:    
	.dwpsn	file "../HM10_BLE.c",line 83,column 17,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL3         ; [CPU_ARAU] |83| 
        MOVL      XAR5,#$C$FSL4         ; [CPU_ARAU] |83| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_ComandoAT")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #_ComandoAT           ; [CPU_ALU] |83| 
        ; call occurs [#_ComandoAT] ; [] |83| 
	.dwpsn	file "../HM10_BLE.c",line 84,column 17,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       @_SCI_RxAvail,#0      ; [CPU_ALU] |84| 
	.dwpsn	file "../HM10_BLE.c",line 85,column 17,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |85| 
        ; branch occurs ; [] |85| 
$C$L13:    
	.dwpsn	file "../HM10_BLE.c",line 87,column 17,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL5         ; [CPU_ARAU] |87| 
        MOVL      XAR5,#$C$FSL6         ; [CPU_ARAU] |87| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_ComandoAT")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #_ComandoAT           ; [CPU_ALU] |87| 
        ; call occurs [#_ComandoAT] ; [] |87| 
	.dwpsn	file "../HM10_BLE.c",line 88,column 17,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       @_SCI_RxAvail,#0      ; [CPU_ALU] |88| 
	.dwpsn	file "../HM10_BLE.c",line 89,column 17,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |89| 
        ; branch occurs ; [] |89| 
$C$L14:    
	.dwpsn	file "../HM10_BLE.c",line 91,column 17,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL7         ; [CPU_ARAU] |91| 
        MOVL      XAR5,#$C$FSL8         ; [CPU_ARAU] |91| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_ComandoAT")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_ComandoAT           ; [CPU_ALU] |91| 
        ; call occurs [#_ComandoAT] ; [] |91| 
	.dwpsn	file "../HM10_BLE.c",line 92,column 17,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       @_SCI_RxAvail,#0      ; [CPU_ALU] |92| 
	.dwpsn	file "../HM10_BLE.c",line 93,column 17,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |93| 
        ; branch occurs ; [] |93| 
$C$L15:    
	.dwpsn	file "../HM10_BLE.c",line 95,column 17,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL9         ; [CPU_ARAU] |95| 
        MOVL      XAR5,#$C$FSL10        ; [CPU_ARAU] |95| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_ComandoAT")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_ComandoAT           ; [CPU_ALU] |95| 
        ; call occurs [#_ComandoAT] ; [] |95| 
	.dwpsn	file "../HM10_BLE.c",line 96,column 17,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       @_SCI_RxAvail,#0      ; [CPU_ALU] |96| 
	.dwpsn	file "../HM10_BLE.c",line 97,column 17,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |97| 
        ; branch occurs ; [] |97| 
$C$L16:    
	.dwpsn	file "../HM10_BLE.c",line 99,column 17,is_stmt,isa 0
        MOVL      XAR4,#$C$FSL11        ; [CPU_ARAU] |99| 
        MOVL      XAR5,#$C$FSL12        ; [CPU_ARAU] |99| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_ComandoAT")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_ComandoAT           ; [CPU_ALU] |99| 
        ; call occurs [#_ComandoAT] ; [] |99| 
	.dwpsn	file "../HM10_BLE.c",line 100,column 17,is_stmt,isa 0
        MOVW      DP,#_SCI_RxAvail      ; [CPU_ARAU] 
        MOV       @_SCI_RxAvail,#0      ; [CPU_ALU] |100| 
	.dwpsn	file "../HM10_BLE.c",line 101,column 17,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_ALU] |101| 
        ; branch occurs ; [] |101| 
$C$L17:    
	.dwpsn	file "../HM10_BLE.c",line 81,column 13,is_stmt,isa 0
        MOVW      DP,#_SCI_State        ; [CPU_ARAU] 
        MOV       AL,@_SCI_State        ; [CPU_ALU] |81| 
        CMPB      AL,#2                 ; [CPU_ALU] |81| 
        B         $C$L18,GT             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#2                 ; [CPU_ALU] |81| 
        B         $C$L14,EQ             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#0                 ; [CPU_ALU] |81| 
        B         $C$L12,EQ             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#1                 ; [CPU_ALU] |81| 
        B         $C$L13,EQ             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        B         $C$L19,UNC            ; [CPU_ALU] |81| 
        ; branch occurs ; [] |81| 
$C$L18:    
        CMPB      AL,#3                 ; [CPU_ALU] |81| 
        B         $C$L15,EQ             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
        CMPB      AL,#4                 ; [CPU_ALU] |81| 
        B         $C$L16,EQ             ; [CPU_ALU] |81| 
        ; branchcc occurs ; [] |81| 
$C$L19:    
	.dwpsn	file "../HM10_BLE.c",line 79,column 11,is_stmt,isa 0
        MOVW      DP,#_SCI_State        ; [CPU_ARAU] 
        MOV       AL,@_SCI_State        ; [CPU_ALU] |79| 
        CMPB      AL,#5                 ; [CPU_ALU] |79| 
        B         $C$L11,LT             ; [CPU_ALU] |79| 
        ; branchcc occurs ; [] |79| 
	.dwpsn	file "../HM10_BLE.c",line 107,column 1,is_stmt,isa 0
$C$L20:    
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../HM10_BLE.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x6b)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst:.string"
	.align	2
$C$FSL1:	.string	13,0
	.align	2
$C$FSL2:	.string	10,0
	.align	2
$C$FSL3:	.string	"AT+NAME",0
	.align	2
$C$FSL4:	.string	"EmoDet_UNAM",0
	.align	2
$C$FSL5:	.string	"AT+NOTI",0
	.align	2
$C$FSL6:	.string	"1",0
	.align	2
$C$FSL7:	.string	"AT+BAUD",0
	.align	2
$C$FSL8:	.string	"8",0
	.align	2
$C$FSL9:	.string	"AT+POWE",0
	.align	2
$C$FSL10:	.string	"2",0
	.align	2
$C$FSL11:	.string	"AT",0
	.align	2
$C$FSL12:	.string	0
;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_SCI_State
	.global	_SCI_RxAvail
	.global	_SCI_Data
	.global	_SCI_StartPt
	.global	_SCI_EndPt

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

$C$DW$38	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$38)

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

$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)

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

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x20)

$C$DW$T$34	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$34, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$34, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)

$C$DW$39	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$34)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$39)

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

$C$DW$40	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$40, DW_AT_name("AL")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("AH")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg1]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("PL")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg2]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("PH")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg3]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("SP")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg20]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("XT")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg21]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("T")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg22]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("ST0")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg23]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("ST1")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg24]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("PC")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg25]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("RPC")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg26]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("FP")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg28]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("DP")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg29]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("SXM")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg30]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("PM")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg31]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("OVM")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_regx 0x20]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("PAGE0")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_regx 0x21]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("AMODE")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x22]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("EALLOW")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("INTM")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x23]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("IFR")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x24]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("IER")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x25]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("V")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x26]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("VOL")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("AR0")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg4]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("XAR0")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg5]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("AR1")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg6]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("XAR1")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg7]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("AR2")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg8]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("XAR2")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg9]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("AR3")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg10]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("XAR3")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg11]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("AR4")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg12]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("XAR4")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg13]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("AR5")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg14]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("XAR5")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg15]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("AR6")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg16]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("XAR6")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg17]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("AR7")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg18]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("XAR7")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg19]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("R0H")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("R1H")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("R2H")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x33]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("R3H")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x37]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("R4H")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("R5H")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("R6H")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x43]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("R7H")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x47]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("RB")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("STF")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x28]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("FPUHAZ")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg27]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("STF_HWDIV")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x4f]

	.dwendtag $C$DW$CU

