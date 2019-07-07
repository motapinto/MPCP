//Fichas de Pilhas e subrotinas (Ficha 2)
//extern long int POLI(long int x);

//X30 ->LR, X29 -> FP(frame pointer)

PROLOGO: //Usado sempre que se quer usar a pilha
		STP X29, X30, [SP, #-32]! // pré indexado
		MOV X29, SP
		STR X20, [SP, 16] //OU// STR X20, [FP, 16],//frame pointer deve apontar sempre o sitio da pilha onde esta a informacao

POLI:
		MOV X10, X0				//x10 = num
		BL QUAD
		MOV X20, X0 			//x20 = num*num
		MOV X0, #3 				//x0 = 3
		MUL X10, X10, X0		//x10 = num * x0
		ADD X0, X20, X10		//x0 = x10+x20
		ADD X0, X0, #1
EPILOGO: //Faz por ordem inversa o que faz prologo
		LDR X20, [FP, 16]
		MOV SP, FP
		LDP X29, X30, [SP], 32
		RET
QUAD:
		MUL X0, X0, X0
		RET

//Os registos X0-X15 podem ser usados livremente
//A partir do registo X16 nao se pode usar esses registos
//O problema desta rotina
