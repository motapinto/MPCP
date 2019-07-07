.text
.global MIN_VEC_DOUBLEWORD
.type MIN_VEC_DOUBLEWORD, %function

//Esta função recebe o apontador do vetor no primeiro elemento(X0) e o numero de elementos do vetor(X1)
//int MIN_VEC_DOUBLEWORD(int*, int)
//X0: endereço base do vetor
//W1: nº de elementos

MIN_VEC_DOUBLEWORD:
		mov X9, X0 //base
		mov X0, #10 //min value

ciclo:
		cbz W1, final //while (num de elementos != 0) goto -> ciclo
		ldr X10, [X9], #8 //pós indexado (depois de fazer load em W10 de X9 atualiza X9->X9+4)
		sub W1, W1, 1 // nº de elementos decrementa		b ciclo
		cmp X0, X10
		b.ge new_min
		b ciclo

new_min:
		mov X0, X10
	    b ciclo
final:
	    ret
