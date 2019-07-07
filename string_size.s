.text
.global STRING_SIZE
.type STRING_SIZE,"function"

STRING_SIZE:
		STP 	X29, X30, [SP, -16]!
		MOV 	X29, SP
		MOV 	x9, #0

Ciclo:
		LDRB 	w7, [x0], #1 //faz load para w7 do valor de x0
		CBZ 	w7, Fim //string acabam em '\0' == 0
		ADD 	x9, x9, #1 //contador de letras
		B 		Ciclo

Fim:

		MOV 	x0, x9 //retorna o numero de letras
		LDP 	X29, X30, [SP], 16
		ret
