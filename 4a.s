

SUB4A:
		MOV X2, XP,
		SUB SP, SP, X1,
		AND SP, SP, 0XFFFFFFFFFFFFFFF0 //pra ficar multiplo de 16
		MOV X3, 0

PARTE1:
		CMP X3, X1
		B.EQ PARTE2
		LDRB W4, [X0, X3]
		STRB W4, [SP, X3]
		ADD X3, X3, 1
		B PARTE1

PARTE2:
		SUB X3, X3, 1
		LDRB W4, [SP, X3]
		STR W4, [X0], #1
		CBNZ X3, PARTE2
		MOV SP, X2,
		RET
