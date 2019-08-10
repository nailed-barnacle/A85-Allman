LCFIX	EQU	20H	
	DB	0
XIF:	DB	LCFIX + 'i' ; comma lables OK?
;CR after close quote no error
XIF	DB	LCFIX + 'r'	; tab error, see if duplicate label?
XGG:	DB	LCFIX + 'g'   ; spaces no error

	MVI	B,'A'	; tab error
	MVI	C,2 
; space CR no error immediately above

	MVI	A,' '   ;trim blanks error
	MVI	A,' '   
;no comment line, no error
;!testing tick operand seperator
	PUSH B ! PUSH D ! PUSH H	; support ! seperator one space
	PUSH B!PUSH D!PUSH H	; support ! with no spaces

	END


