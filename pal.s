//Fazer x2 apontar para o fim e x3 para o inicio comparar
//para calcular o fim temos de somar ate encontrar o 0 ou somar com o tamanho da cadeia
//fazer um ciclo para a cadeia toda
//quando o valor de x3 for maior que o valor de x2(posicoes) -> siginifca que ja percorremos o vetor inteiro

//X30 ->LR, X29 -> FP(frame pointer)
//FP is const... always = sp
//extern int pal(char *s, int size)

.text
.global pal
.type pal, "function"

pal:
		STP 	X29, X30, [SP, -32]!
		MOV 	X29, SP
ciclo:
		MOV		X9, X0  				//string fica em x9
		STP		X9, X9, [SP, 16]		//push para a pilha de x9
		BL		STRING_SIZE				//retorna em x0 o tamanho da string
		LDR 	X9, [X29, 16]			//pop de x9 da pilha
		ADD		X10, X9, X0				//x10 =  string_size + string address (END OF STRING)
		ADD 	X10, X10, #-1			//Last posistion
		MOV		X0, 1
.X9:
		CMP		X9, X10					//x9 points to begging of string and x10 to end of string
		B.GE	end						//if x9>x10 than we already processed all the string
		LDRB	W1, [X9], #1			//load first char to w1
		B		.X10					//goes to .X10

.X10:
		LDRB	W2, [X10], -1			//load last char to w2
		CMP		W1, W2					//compares the 2 char's
		B.EQ	.X9						//if equal continue
		MOV		X0, #0					//else x0 = 0

end:
		LDP 	X29, X30, [SP], 16
		 LDR W1, [W0, #4]
		RET

