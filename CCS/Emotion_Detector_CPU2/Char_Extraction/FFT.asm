			.global _fft_float

			.global _FFT_R				;Vars declared in C

Marip:		.usect  "ASM_VARS", 1, 8
Groups:		.usect  "ASM_VARS", 1, 8
indA:		.usect  "ASM_VARS", 1, 8
indB:		.usect  "ASM_VARS", 1, 8
r:			.usect  "ASM_VARS", 1, 8
NFFT:		.usect  "ASM_VARS", 1, 8
NFFT_2:		.usect  "ASM_VARS", 1, 8

Stages 		.set 	11
;Stages 		.set 	3

;***** NOTE: This FFT gives the square of the magnitude of each spectrum component *****

_fft_float	;XAR4=&PDS(FFT_I)	  AL=NFFT
			MOVW	 DP, #Groups
				LC       BR_ZR
	;------- Counters Assignation ----------
			MOVL   	 XAR1, #Stages
			MOV   	 AL, @AR1
			SUB 	 AL, #1
			MOV   	 AR0, AL				;AR0 = e = #Stages-1
			MOV   	 AL, @NFFT_2
			MOV		 @Groups, AL			;Groups = #Groups = TamFFT/2
			MOV		 ACC, #1
			MOV		 @Marip, AL				;Marip = #Marip = 1
STAGES
			MOV		 AL, @Groups			;Groups = #Groups = TamFFT/2
			SUB 	 AL, #1
			MOV   	 AR1, AL				;AR1 = g = #Groups = TamFFT/2-1
			MOV 	 @indA, #0				;indA = 0
GROUPS
			MOV		 AL, @Marip				;Marip = #Marip = 1
			SUB 	 AL, #1
			MOV		 AR2, AL				;AR2 = m = #Marip = 1-1
			MOV 	 @r, #0					;r = 0
MARIP
	;---------- r Estimation -----------
			MOV 	 AL, @Marip				;AL = m
			SUB		 AL, #1
			SUB		 AL, AR2
			SB		 CondEQ1, EQ			;Si m<=0 salta CondLEQ1
			MOV		 AL, @r
			ADD		 AL, @Groups
			MOV		 @r, AL					;Si m>0 r=r+Groups
CondEQ1     MOV		 T, @indA
			MOV		 AL, @Marip
			LSL		 AL, #1
			ADD		 AL, @T
			MOV		 @indB, AL				;indB = indA+Marip
	;---------- W Estimation, A & B Assignation ----------
			I16TOF32 R0H, @NFFT				;NFFT a Flotante
			I16TOF32 R1H, @r				;r a Flotante
			MOVL	 XAR6, #_FFT_R			;XAR5 = &FFT_R
			MOVL	 ACC, XAR6
			DIVF32	 R0H, R1H, R0H			;R0H = r/TamFFT
			ADD		 ACC, @indA
			MOVL	 XAR3, ACC				;XAR3 = &FFT_R[indA]
			MOVL	 ACC, XAR4				;XAR4 = &FFT_I
			ADD		 ACC, @indA
			COSPUF32 R5H, R0H				;R1H = cos(2*pi*r/NFFT) Re
			SINPUF32 R6H, R0H				;R2H = sen(2*pi*r/NFFT) Im
			MOVL	 XAR5, ACC				;XAR5 = &FFT_I[indA]
			MOVL	 ACC, XAR6
			ADD		 ACC, @indB
			NEGF32	 R6H, R6H				;R2H = -sen(2*pi*r/NFFT) Im
			MOVL	 XAR6, ACC				;XAR6 = &FFT_R[indB]
			MOVL	 ACC, XAR4
			ADD		 ACC, @indB
			MOVL	 XAR7, ACC				;XAR7 = &FFT_I[indB]
	;-------------- Butterfly ------------
				LC BUTTFLY
			MOV		 AL, AR0
			SB		 CondEQ2, EQ			;Si e=0   Last stage?
			SB		 CondNEQ2, NEQ			;Si e!=0  Not the last stage
CondEQ2			LC ESPECTRO
CondNEQ2	MOV		 AL, @indA
			ADD		 AL, #2
			MOV		 @indA, AL 				;indA = indA+2
		BANZ MARIP, AR2 --					;AR2  = #Marip

			MOV		 T, @indA
			MOV		 AL, @Marip
			LSL		 AL, #1
			ADD		 AL, @T
			MOV		 @indA, AL				;indA = indA+Marip
		BANZ GROUPS, AR1 --					;AR1 = #Groups

			MOV 	 AL, @Groups
			ASR 	 AL, #1
			MOV 	 @Groups, AL			;Groups = Groups/2
			MOV 	 AL, @Marip
			LSL 	 AL, #1
			MOV 	 @Marip, AL				;Marip = Marip*2
		BANZ STAGES, AR0 --					;AR0 = #Stages
			MOVL	 XAR4, #_FFT_R
	LRETR

;**********  Bit Reverse, Hanning Windowing & Zero filling of FFT_I *********
BR_ZR		;XAR4=&FFT_I
			MOVL  	 XAR5, #_FFT_R			;XAR5=FFT_R
			MOV		 @NFFT, AL				;NFFT=NFFT
			MOV   	 AR0, AL				;AR0=NFFT
			LSL		 AL, #1
			MOV		 @NFFT_2, AL
			I16TOF32 R0H, @NFFT_2			;R0H = 2*NFFT
			LSR		 AL, #2
			MOV		 @NFFT_2, AL
			MOV	 	 AL, @NFFT
			LSL		 ACC, #1
			SUB 	 AL, #1
			MOVL	 XAR1, ACC
			SFR		 ACC, #1
			MOVL   	 XAR7, ACC				;AR7=NFFT-1
CICLO1		NOP	 	 *, ARP1
			MOVL   	 ACC, *BR0++			;ACC=*XAR1   XAR1=XAR1+BR(AR0)
			MOV		 AL, AR1
			LSR		 AL, #1
			MOV	 	 @indA, AL				;indA = AR2+BR(AR0)
			I16TOF32 R1H, @indA				;n to Float
			ZAPA
			MOV32 	 R3H, *+XAR4[AR1]		;R3H = FFT_I[indA]
			DIVF32	 R2H, R1H, R0H			;R2H = n/2*NFFT
			NOP
			NOP
			NOP
			NOP
			SINPUF32 R2H, R2H				;R2H = sin(2*pi*n/2*NFFT)
			NOP
			NOP
			NOP
			MPYF32   R2H, R2H, R2H			;R2H = sin^2(2*pi*n/2*NFFT)
			NOP
			NOP
			MPYF32	 R3H, R3H, R2H			;R3H = FFT_I[indA]*HannWindow
			NOP
			MOVL     *+XAR4[AR1], ACC		;FFT_I[indA]=0
			MOV32  	 *XAR5++, R3H			;FFT_R[i]=FFT_I[BR]*HannWindow
			BANZ  	 CICLO1, AR7--			;It repeats N+1 times
	LRET

;**********  Butterfly operation *********
BUTTFLY		;@A=&A		@W=&W		@B=&B
			MOV32 	R1H, *XAR3				;R1H = Ar
			MOV32	R2H, *XAR5				;R2H = Ai
			MOV32	R3H, *XAR6				;R3H = Br
			MOV32	R4H, *XAR7				;R4H = Bi
			MPYF32	R0H, R5H, R3H			;R0H = Wr*Br
			MPYF32	R7H, R6H, R4H			;R7H = Wi*Bi
			MPYF32	R6H, R6H, R3H			;R6H = Wi*Br
			MPYF32	R5H, R5H, R4H			;R5H = Wr*Bi
			||SUBF32 R0H, R0H, R7H			;WBr = Wr*Br - Wi*Bi
			NOP
			ADDF32	R7H, R6H, R5H			;WBi = Wi*Br + Wr*Bi
			ADDF32	R3H, R1H, R0H			;Ar = Ar + WBr
			ADDF32	R4H, R2H, R7H			;Ai = Ai + WBi
			SUBF32   R5H, R1H, R0H			;Br = Ar - WBr
			||MOV32 *XAR3, R3H
			SUBF32	R6H, R2H, R7H			;Bi = Ai - WBi
			||MOV32 *XAR5, R4H
			MOV32   *XAR6, R5H
			MOV32   *XAR7, R6H
	LRET

;**********  Spectrum Magnitude  ***********
ESPECTRO	;XAR3=&FFT_R[indA]	XAR5=&FFT_I[indA]
			;XAR6=&FFT_R[indB]	XAR7=&FFT_I[indB]
			MPYF32   R3H, R3H, R3H			;R3H=FFT_R[indA]*FFT_R[indA]
			MPYF32   R4H, R4H, R4H  		;R4H=FFT_I[indA]*FFT_I[indA]
			MPYF32   R5H, R5H, R5H			;R5H=FFT_R[indB]*FFT_R[indB]
			MPYF32   R6H, R6H, R6H  		;R6H=FFT_I[indB]*FFT_I[indB]
			ADDF32   R4H, R4H, R3H			;R0H=VRa_2+VIa_2
			ADDF32   R6H, R6H, R5H  		;R3H=VRb_2+VIb_2
			MOV32    *XAR3, R4H				;FFT_R[indA]=int16[sqrt(VRa_2+VIa_2)]
			MOV32    *XAR6, R6H				;FFT_R[indB]=int16[sqrt(VRb_2+VIb_2)]
	LRET
