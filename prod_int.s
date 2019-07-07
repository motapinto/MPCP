.text
.global PROD_INT
.type PROD_INT,"function"

/*
	X0:endereco base de vec1
	X1:endereco base de vec2
	W3:nºo de elementos
*/

PROD_INT:
			MOV X11, #0 //indice
			MOV W10, #0 //resultado
			CMP W3, #0//alternativa->CBZ
			B.EQ Fim
			LDR W12, [X0, X11]
			LDR W13 ,[X1, X11]
			MADD W3, W12, W13, W3
			ADD X11, X11, #4
			SUB W2, W2, #1
			B PROD_INT

Fim: 		MOV W0, W3
			RET
