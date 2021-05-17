		.global _mult,_func_LDA,_sub,_div

_mult ; R0H=features,R1H=W, R2H=y
		MPYF32 R0H, R0H, R1H
		NOP
		ADDF32 R0H, R0H, R2H
		NOP
		LRETR              ;Return to C program

_func_LDA ; R0H=-0.5,R1H=x, R2H=Conv_S, R3H=ApriVect
		MPYF32 R2H, R1H, R2H  ; R2H=R2H*R1H (x*Conv_S)
		NOP
		NOP
		MPYF32 R2H, R1H, R2H   ; R2H=R2H*R1H (x*x*Conv_S)
		NOP
		NOP
		MACF32 R3H, R2H, R2H, R2H, R0H ;R3H=R3H+(R2H*R0H)  (-0.5*x*x*Conv_S+Apri)
		NOP
		NOP
		MOV32 R0H,R3H
		LRETR              ;Return to C program

_sub ; R0H=entry,R1H=Mean_Vect
		SUBF32 R0H, R0H, R1H
		LRETR              ;Return to C program

_div ; R0H=entry
		MOVF32 R1H, #1.0
		DIVF32 R0H, R1H, R0H
		NOP
		NOP
		NOP
		NOP
		LRETR              ;Return to C program
