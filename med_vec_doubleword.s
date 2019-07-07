.text
.global MED_VEC_DOUBLEWORD
.type MED_VEC_DOUBLEWORD, %function

//Esta função recebe o apontador do vetor no primeiro elemento(X0) ,numero de elementos do vetor(X1) e endereço resto em X2
//long MED_VEC_DOUBLEWORD(long *a, int n, long *resto);
//X0: endereço base do vetor
//W1: nº de elementos

MED_VEC_DOUBLEWORD:
		mov X9, X0 //base
		mov X0, 0 //sum value
		mov X5, X1 //num de elementos(contador)

soma:
		cbz X5, fim //while (num de elementos != 0)
		ldr X10, [X9], #8 //pós indexado (depois de fazer load em W10 de X9 atualiza X9->X9+4)
		add X0, X0, X10 //x0 += x10
		sub X5, X5, 1 // nº de elementos decrementa
		b soma

fim:
		mov X10, X0; //guarda valor da soma total em x10
		sdiv X0, X0, X1 //media = soma / nº elementos (guarda em x0 o valor do quociente)
		smulh X3, X0, X1 // (guarda em x3 o valor quociente*divisor)
		sub X3, X10, X3 // guarda em x3 o valor do resto; resto(x3) = (quociente*divisor)/dividendo; dividendo = soma
		str X3, [X2] // guarda em x2(&resto) o valor de x3(resto)
		ret //(em xo o valor do quociente e em x3 por referência o valor do resto)
