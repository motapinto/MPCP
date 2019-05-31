.text
.global simd4
.type simd4,"function"

simd4:	 MOV x4, #0
			 LSR w1, w1, #2
			 DUP v3.4s, w2

Ciclo:		 CBZ w1, Fim
			 LDR q0, [x0]
			 SQADD v0.4s, v0.4s, v3.4s
			 STR q0, [x0], #16
			 SUB w1, w1, #1
			 B Ciclo

Fim:		 ret
