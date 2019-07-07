.text
.global POS_1_MSB
.type POS_1_MSB,"function"

POS_1_MSB:
			MOV x9, #0
			CLZ X2, X0
			MOV X3, #63
			SUB X0, X3, X2 //res = maior_pos_int - nº de casas a esquerda = 63 - ...
			RET


//CLZ: numero de zeros a contar da esquerda
// X0: 00000100000... CLZ X0 = 5
