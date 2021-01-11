
				.global _Cubic_Spline	;ASM declared functions
				.global _h, _Gauss, _d, _S

;**********  Filling matrix with a,b,c & d and solving with Gauss  *********
_Cubic_Spline 	;XAR4=&X   XAR5=&Y
				MOV32  R0H, XAR4
				MOV32  R1H, XAR5
				NOP
				NOP
				NOP
				NOP


				ADDF32 RnH, RnH, RnH
				NOP
				MPYF32 RnH, RnH, #6.0
				NOP
