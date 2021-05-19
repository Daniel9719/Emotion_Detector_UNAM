
          .global _convol

_convol
          MOVL XAR0, XAR5  ;XAR0->buff
          MOVL XAR7, XAR5  ;XAR7->buff
          MOV *AR0, AL     ;buff=Diff
          SUB AH,#1;
          MOV AR5,AH;
          MOV AR0,AH;
          ZAPA
CONV
          MAC P, *XAR4++, *XAR7++
          BANZ CONV, AR5--

          ADDL ACC,P         ;ACC+=P
          SFR ACC, #12       ;Q14*Q0=Q14>>14
          MOVL XAR4,ACC
          MOV AL,AR0
          MOV AR5,AL;
REPT
          DMOV *--XAR7
          BANZ REPT, AR5--
          MOVL ACC,XAR4
          LRETR


