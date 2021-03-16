          .global _firFilter
Qi         .set    15

xbf       .word   0        ;Last memory allocation of Buffer

_firFilter ; N=AH, x=AL, XAR4->fir###_EDA XAR5->xb
          MOVL XAR0, XAR5  ;XAR0->xb
          MOVL XAR7, XAR5  ;XAR7->xb
          MOV *AR0, AL     ;xb=x
          SUB AH,#1;       ;N-1
          MOV AR5,AH;     ;AR5=N-1
          MOV AR0,AH;     ;AR0=N-1
          ZAPA            ;ACC=0, P=0
CONV
          MAC P, *XAR4++, *XAR7++  ; P=P+xb*fir###_EDA [First half]
          BANZ CONV, AR5--  ;AR5=0?
          MOV T, *--XAR4    ;XAR4->fir###_EDA[k-1]
          MOV  AR5,AR0;
          SUB  AR5,#1;		;AR5=N-2
CONV2
          MAC P, *--XAR4, *XAR7++  ; P=P+xb*fir###_EDA [Last half]
          BANZ CONV2, AR5--   ;AR5=0?

          ADDL ACC,P         ;ACC+=P
          SFR ACC, #Qi        ;Q15*Q15=Q30>>15
          MOV  T, *--XAR7	 ;XAR7->&xb-1
          MOVL XAR4,ACC      ;XAR4=ACC
          MOV AL,AR0
          LSL ACC,#1;        ;AL=AR0*2
          MOV  AR5,AL;       ;AR5=AL
REPT
          DMOV *--XAR7       ;Copy the data pointed by XAR7 to the next location and decrease XAR7
          BANZ REPT, AR5--   ;AR5=0?
          MOVL ACC,XAR4      ;ACC=XAR4
          LRETR              ;Return to C program
