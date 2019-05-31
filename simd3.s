.text
.global simd3
.type simd3,"function"

simd3: MOV x4, #0
			 LSR w1, w1, #4
			 DUP v1.16b, w2

Ciclo:		 CBZ w1, Fim
			 LDR q0, [x0], #16
			 CMEQ v2.16b, v0.16b, v1.16b
			 ADDV b3, v2.16b
			 SMOV w5, v3.b[0]
			 NEG w5, w5
			 ADD w4, w4, w5
			 SUB w1, w1, #1
			 B Ciclo

Fim:		 MOV x0, x4
			 ret

