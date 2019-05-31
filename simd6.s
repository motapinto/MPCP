.text
.global simd6
.type simd6,"function"

simd6:	MOV x2, #0
		SCVTF d8, x2
		LSR x1, x1, #1

Ciclo:	CBZ x1, Fim
		LDR q0, [x0], #16
		FMUL v0.2d, v0.2d, v0.2d
		FADDP d1, v0.2d
		FADD d8, d8, d1
		SUB x1, x1, #1
		B Ciclo

Fim: 	FSQRT d0, d8
		ret
