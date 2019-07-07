.text
.global simd7
.type simd7,"function"

//extern long int simd7(float *V, long int n, float lim);
//quantos elems há sao inferiores a lim
//x0 = *V, x1=n, s0 = lim

simd7:
		mov		x5, 0; //contador
		fneg	s0, s0
		dup		v3.4s, v0.s[0] //v3 e um vetor so com elementos de s0
		lsr		x1, x1, 2 //vetor tera 4 elems (16/4(sizeof float))

ciclo:
		cbz 	x1, fim
		ldr		q1, [x0], #16
		fneg	v1.4s, v1.4s //para utilizar instrucoes menor que..
		fcmgt	v3.4s,	v1.4s, v3.4s //se true para cada elemento de v2 mete bits todos a 1
		fdiv	v3.4s, v3.4s, v5.4s
		fcvtns	x4, s8
		add		x5, x5, x4
		sub		x1, x1, 1
		b ciclo



fim:
		ret


