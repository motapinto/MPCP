.text
.global MAX_VEC_WORD
.type MAX_VEC_WORD, %function

//Esta função recebe o apontador do vetor no primeiro elemento(X0) e o numero de elementos do vetor(X1)
//int MAX_VEC_WORD(int*, int)
//X0: endereço base do vetor
//W1: nº de elementos

MAX_VEC_WORD:
		mov X9, X0 //base
		mov W0, 0 //max value

ciclo:
		cbz W1, final //while (num de elementos != 0) goto -> ciclo
		ldr W10, [X9], #4 //pós indexado (depois de fazer load em W10 de X9 atualiza X9->X9+4)
		sub W1, W1, 1 // nº de elementos decrementa		b ciclo
		cmp W0, W10
		b.le new_max
		b ciclo

new_max:
		mov W0, W10
	    b ciclo
final:
	    ret
