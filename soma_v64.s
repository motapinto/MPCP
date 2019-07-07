.text
.global SOMA_V64
.type SOMA_V64, %function

//Esta função recebe o apontador do vetor no primeiro elemento(X0) e o numero de elementos do vetor(X1)
//int SOMA_V64(long*, int)
//X0: endereço base do vetor
//W1: nº de elementos

SOMA_V64:
		mov X9, X0 //base
		mov X0, 0 //como e 64 tem de ser X0

ciclo:
		cbz W1, Lfim //while (num de elementos != 0)
		ldr X10, [X9], 4 //pós indexado (depois de fazer load em W10 de X9 atualiza X9->X9+4)
		add X0, X0, X10 // soma += ...
		sub W1, W1, 1 // nº de elementos decrementa
		b ciclo

Lfim:
		ret
