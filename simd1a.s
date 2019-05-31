.text
.global simd1a
.type simd1a,"function"

//X0 = P		X1 = Q 			X2 = R		W3 = nº elems
//V0 = P		V1 = 1			V2 = R
simd1a:
		lsr		w3, w3, #2		//2^2 = 4 -> divisao por 4

L1:
		cbz		w3, fim
		ldr		Q0, [X0], #16   //Q-quadword (4*32=128 bits); #16 - avança mais 4 floats (cada tem 4 bytes)
		ldr 	Q1, [X0], #16
		add 	V0.4S, V0.4S, V1.4S
		str		Q0, [X2], #16 	//neste momento já está gravado
		sub		w3, w3, #1
		b		L1

fim:
		ret

//nunca usamos estes registos para retorno


