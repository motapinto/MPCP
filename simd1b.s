.text
.global simd1b
.type simd1b,"function"

//X0 - end-base ; W1 - num ; S0 - k

simd1b:
		lsr W1, W1, 2 //divide por 4
		dup, V2.4S, X0

ciclo:
		cbz W1, fim
		ldr Q1, [X0]
		FMUL V3.4s, V1.4s, V2.4s
		str Q3, [X0], #16 // <=> str Q3, [X0], add X0, X0, 16
		sub W1, W1, #1
		b ciclo

fim:
		ret

