.text
.global exam
.type exam, "function"

//func(char*txt, int n)

exam:
		lsr	w1, w1, 4 //cada iteracao 16 letras
		mov w2, #' '
		mov x4, #0
		dup	v0.16b, w2

ciclo:
		cbz x1, fim
		ldr q1, [x0], #16
		cmeq v0.16b, v1.16b, v0.16b
		addv s2, v0.16b
		smov w3, v2.s[0] //w3 tem ou 0(letra) ou -1(espaco)
		sub w4, w4, w3
		sub x1, x1
