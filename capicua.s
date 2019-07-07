.text
.global CAPICUA
.type CAPICUA,"function"

CAPICUA:
			RBIT W1, W0
			CMP W0, W1
			CSET W0, EQ
			RET

//RBIT : troca os bits todos
//CSET mete W0 a 0 se for falso w0 a 1 se for verdadeiro
