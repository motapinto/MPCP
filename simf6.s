.text
.global simf6
.type simf6,"function"
//extern double simd6(double *V, long int n) - calcular norma
//"assumir que vetor e multiplo de 2"

simf6:
		mov 	x2, #0
		scvtf 	d2, x2 //contador da norma em d2
		lsr		x1, x1, 1 //cada vetor q tera 2 elementos (16/sizeof(double) = 2)

ciclo:
		cbz		x1, fim
		ldr 	q0, [x0], #16
		fmul	v1.2d, v0.2d, v0.2d
		faddp	d3, v1.2d
		fadd	d2, d2, d3 //incrementa contador
		sub		x1, x1, 1
		b		ciclo

fim:
		fsqrt	d0, d2



