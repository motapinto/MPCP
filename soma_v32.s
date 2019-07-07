.text
.global SOMA_V32
.type SOMA_V32, %function

//Esta função recebe o apontador do vetor no primeiro elemento(X0) e o numero de elementos do vetor(X1)
//int SOMA_V32(int*, int)
//X0: endereço base do vetor
//W1: nº de elementos

SOMA_V32:
		mov X9, X0 //base
		mov W0, 0

ciclo:
		cbz W1, Lfim //while (num de elementos != 0)
		ldr W10, [X9], 4 //pós indexado (depois de fazer load em W10 de X9 atualiza X9->X9+4)
		add W0, W0, W10 // soma += ...
		sub W1, W1, 1 // nº de elementos decrementa
		b ciclo

Lfim:
	ret
