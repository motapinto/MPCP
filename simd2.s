.text
.global simd2
.type simd2,"function"

simd2:	MOV x4, #0
			LSR w2, w2, #2

Ciclo:		CBZ w2, Fim
			LDR q0, [x0], #16
			LDR q1, [x1], #16
			MUL v2.4s, v0.4s, v1.4s
			ADDV s3, v2.4s
			SMOV x3, v3.s[0]
			ADD x4, x4, x3
			SUB w2, w2, #1
			B Ciclo

Fim:		MOV x0, x4
			ret
