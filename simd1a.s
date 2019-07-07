.text
.global simd1a
.type simd1a,"function"

//extern void simd1a(float *P, float *Q, float *R, int n);
//X0 = P		X1 = Q 			X2 = R		W3 = nº elems

//se cada float tem 4 bytes em cada posicao do vetor teremos 16/4=4 elementos
//logo se n=8 teremos 2 poscioes no vetor-> 2 vezes o ciclo

simd1a:
		lsr		w3, w3, #2		//w3 = w3/4 ; 2^2 = 4 -> divisao por 4s

L1:
		cbz		w3, fim
		ldr		Q0, [X0], #16   //Q-quadword (4*32=128 bits); #16 - 128/8 = 16 bytes
		ldr 	Q1, [X1], #16	//carrega elementos n de cada vetor
		fadd 	V2.4S, V0.4S, V1.4S
		str		Q2, [X2], #16 	//guarda vetor de 128 bits em x2 (endereco vetor C)
		sub		w3, w3, #1
		b		L1

fim:
		ret

//nunca usamos estes registos para retorno


