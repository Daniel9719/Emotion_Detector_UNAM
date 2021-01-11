
				.global _Cubic_Spline	;ASM declared functions
				.global _h, _Gauss, _d, _S

;**********  Filling matrix with a,b,c & d and solving with Gauss  *********
_Burg		;XAR4=&X   AH=Order  AL=lenX
			MOVL		XAR0, #0
			MOV	 		AR0, AL							;AR0=lenX
				MOV32  		R1H, @XAR0						;R1H=int(lenX)
			MOVL 		XAR7, @XAR4						;XAR7=&X
			MOVL 		XAR4, *XAR4						;XAR4=X
			MOV32  		R0H, @XAR4						;R0H=X
			SUBB		ACC,#1							;AL=lenX-1
			MOV 		AR0, AL							;AR=len-X
				I16TOF32	R1H, R1H						;R1H=float(lenX)
			ZERO R3H
			ZERO R7H
				EINVF32 	R1H, R1H						;R1H=1/lenX
			RPT @AL
			||MACF32 	R7H, R3H, *XAR7++, *XAR7++		;Sum(X^2)
			ADDF32 		R7H, R7H, R3H
				MPYF32 		R2H, R1H, #2.0					;R2H=lenX*2
			MPYF32		R1H, R1H, R7H					;Rho=Sum(X^2)/lenX
			MOV   		AR2, AH							;AR2=Order-1
			MPYF32		R1H, R1H, R2H					;Den=Rho*lenX*2
ORDER_AR
														;((N)-(k+1))
														;()
			MOV 		AR3, @AR2						;AR3=lenX-1

Km_NUM		MAC32




	  	BANZ  Km_NUM, AR3--


	  	BANZ  ORDER_AR, AR2--


			ADDF32 RnH, RnH, RnH
			NOP
			MPYF32 RnH, RnH, #6.0
			NOP

