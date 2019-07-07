.text
.global simd1c
.type simd1c,"function"

//extern void simd1c(float *P, float *Q, float *R, int n, float k);
//R = P - k*Q
//x0 = *P; x1 = *Q ; x2 = *R ; w3 = n ; s0 = k

simd1c:
		lsr		w3, w3, 2 					//w1 = w1 / 4 (cada elem do vec tem 4 floats)

loop:
		cbz 	w3, end
		ldr		q1, [x0], 16 				//q1 = P
		ldr		q2, [x1], 16				//q2 = Q
		fmul	v3.4s, v2.4s, v0.s[0]		//q3 = k*Q
		fsub	v3.4s, v0.4s, v3.4s			//q2 = P - k*Q
		str		q2, [x2], 16

end:
		ret
