.text
.global simd2
.type simd2,"function"

//extern long int simd2(int *R, int *S, int n)
//produto interno

simd2:
			stp X29, X30, [SP, #-16]!
			mov X29, SP
			mov X3, #0					//x3 = contador produto interno

ciclo:
			cbz W2, fim
			ldr Q0, [X0], #16			//carrega primeiro vetor para q0 (4 elementos)
			ldr Q1, [X1], #16			//carrega segundo vetor para q1 (4 elementos)
			mul V0.4S, V0.4S, V1.4S		//guarda em v0 o produto interno dos 4 primeiros elemntos
			addv s0, V0.4S				//adiciona cada produto interno de cada elemento e guarda em s0/v0
			smov X4, v0.s[0]			//faz mov para x4
			add X3, X3, X4
			sub W2, W2, #4
			b ciclo

fim:
			mov X0, X3
			ldp X29, X30, [SP], #16
			ret

/*
//extern long int simd2(int *R, int *S, int n)
//produto interno


Ciclo:
			CBZ w2, Fim

			LDR q0, [x0], #16			//carrega primeiro vetor para q0
			LDR q1, [x1], #16			//carrega segundo vetor para q1
			MUL v0.4s, v0.4s, v1.4s		//produto interno e gaurda em q2

			SMOV x3, v3.s[0]			//copia elemento 0 de v3 para x3
			SMOV x4, v3.s[1]			//copia elemento 1 de v3 para x4
			ADD x5, x4, x3			// adiciona os dois elementos
			ADD	x6, x6, x5			//adiciona os elementos a soma atual

			sub W2, W2, #4
			B Ciclo

Fim:
			MOV x0, x3					//x0 = x4
			ldp X29, X30, [SP], #16
			ret
*/
