.text
.global simd1b
.type simd1b,"function"

//extern void simd1b(float *Z1, int n, float k);
//x0 = *z1 ; x1 = num elementos ; k = s0

simd1b:
		lsr		w1, w1, 2 //w1 = w1 / 4

ciclo:
		cbz		w1, fim
		ldr		q1, [x0]
		fmul	v1.4s, v1.4s, v0.s[0] //v0.s[0] ou v0.4s[0]
		str		q1, [x0], 16
		sub 	w1, w1, 1
		b ciclo

fim:
		ret
