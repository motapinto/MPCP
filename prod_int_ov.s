.text
.global PROD_INT_OV
.type PROD_INT_OV,"function"

/*
	X0:endereco base de vec1
	X1:endereco base de vec2
	W3:nºo de elementos
*/

PROD_INT:
			MOV X11, #0 //indice
			MOV W10, #0 //resultado
			CMP X3, #0//alternativa->CBZ
			B.EQ Fim
			LDR W12, [X0, X11]
			LDR W13,[X1, X11]
			SMADDL X3, W12, W13, X3
			//Ver se há overflow (as multiplicacoes nao verifica se ha overflow nas flags)
			SXTW X4, W3
			CMP X4, X3
			B.EQ Continuar
			MOV W3, 0x7FFFFFFF //Este valor podera nao ser acessivel
			B Fim

Continuar:
			ADD X11, X11, #4
			SUB W2, W2, #1
			B PROD_INT

Fim: 		MOV W0, W3
			RET

//
