.text
.global simd3
.type simd3, "function"

//extern long int simd3(char *V, long int n, char val);
//x0 = *V ; w1 = n ; x2 = val

simd3:
  			 fmov d0, v3.s[0]
			 stp X29, X30, [SP, #-16]!
			 mov X29, SP
			 MOV x4, #0				//x4 = 0
			 DUP v1.16b, w2			//copia valor de w2 para v1 e replica byte menos sign 16 vezes
									//mete em v1 todos os elementos igual a val
Ciclo:
			 CBZ w1, Fim

			 LDR q0, [x0], #16				//carrega vetor (16 letras de cada vez)
			 CMEQ v2.16b, v0.16b, v1.16b    //compara se v0 e v1 sao iguais (sytax: CMcc) se forem iguais mete todos  bits de cada elemento igual a 1
			 ADDV b3, v2.16b				//soma as occorencias e guarda em b3
			 SMOV x5, v3.b[0]					//passa para registo inteiro
			 NEG x5, x5						//w5 = -w5 (quando faz-se comparacao mete-se a 0 se os bits sao iguais -> por isso troca-se para ver o num de occorencias)
			 ADD x4, x4, x5					//w4 = w4 + w5

			 SUB w1, w1, #4
			 B Ciclo

Fim:
			 MOV x0, x4						//return = x4 = num de ocorrencias
			 ret

