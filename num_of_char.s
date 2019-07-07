.text
.global NUM_OF_CHAR
.type NUM_OF_CHAR,"function"

// int NUM_OF_CHAR(char a[], char c);

NUM_OF_CHAR:
		MOV x9, #0
		LDURB w8, [x1]

Ciclo:
		LDR w7, [x0], #1 //vai incrementando a pos
		CBZ w7, Fim ////string acabam em '\0' == 0
		CMP w7, w8 //compara cada elemento da string com char(w8)
		B.EQ NUM
		B Ciclo

NUM:
		ADD x9, x9, #1
		B Ciclo

Fim:
		MOV x0, x9
		ret

