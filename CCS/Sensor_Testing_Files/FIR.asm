          .global _firFilter,_conv
Qi         .set    15

xbf       .word   0        ;Ultima localidad del buffer

_firFilter ; N=AH, x=AL, XAR4->fir###_EDA XAR5->xb
          MOVL XAR0, XAR5  ;XAR0->xb
          MOVL XAR7, XAR5  ;XAR7->xb
          MOV *AR0, AL     ;xb=x
          SUB AH,#1;       ;N-1
          MOV AR5,AH;     ;AR5=N-1
          MOV AR0,AH;     ;AR0=N-1
          ZAPA            ;ACC=0, P=0
CONV
          MAC P, *XAR4++, *XAR7++  ; P=P+xb*fir###_EDA [primera parte]
          BANZ CONV, AR5--  ;AR5=0?
          MOV T, *--XAR4    ;XAR4->fir###_EDA[k-1]
          MOV  AR5,AR0;
          SUB  AR5,#1;		;AR5=N-2
CONV2
          MAC P, *--XAR4, *XAR7++  ; P=P+xb*fir###_EDA [segunda parte]
          BANZ CONV2, AR5--   ;AR5=0?

          ADDL ACC,P         ;ACC+=P el último no se acumula con MAC
          SFR ACC, #Qi        ;Q14*Q14=Q28>>14
          MOV  T, *--XAR7	 ;XAR7->&xb-1
          MOVL XAR4,ACC      ;XAR4=ACC
          MOV AL,AR0
          LSL ACC,#1;        ;AL=AR0*2
          MOV  AR5,AL;       ;AR5=AL
REPT
          DMOV *--XAR7       ;Copia el dato al que apunta XAR4 a la siguiente localidad y decrementa
          BANZ REPT, AR5--   ;AR5=0?
          MOVL ACC,XAR4      ;ACC=XAR4
          LRETR              ;Regresa al programa en C

_conv  ;XAR4->y
	      I16TOF32 R0H, *XAR4 ;R0H=y
	      NOP
	      NOP
	      ;MOVF32 R1H, #16384.0
  	      MOVF32 R1H, #32768.0
	      DIVF32 R0H, R0H, R1H ;R0H=R0H/pow(2,Q)
	      LRETR
