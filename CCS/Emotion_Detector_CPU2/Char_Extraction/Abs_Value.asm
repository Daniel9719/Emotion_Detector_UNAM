		.global _absf

;*** Calculates de absolute value of a number ***
_absf	;R0H=A
		ABSF32 R0H, R0H
	LRETR
