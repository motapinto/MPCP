.text
.data
.global simd9
.type simd9,"function"
VSIGN: .double (1.0, -1.0, 1.0, -1.0)

//simd9(float *Z1, float *Z2, float *Z, long int n) n é multiplo de 4
//z1 × z2 = (a · c − b · d) + (a · d + b · c) · i

simd9:
		LSR		X3, X3, #1
		LDR		X4, =VSIGN //VSIGN é uma variavel global (1.0, -1.0, 1.0, -1.0)
		LDR		Q4, [X4]

ciclo:
		CBZ		X3,	fim
		LDR		Q0, [X0], #16 		//v0 =  A1*B1, A2*B2 ; 					q0 = a1,b1,a2,b2
		LDR		Q1, [X1], #16 		//v1 = C1*D1, C2*D2 ; 					q1 = c1,d1,c2,d2
		FMUL	V2.4S, V0.4S, V1.4S	//v2 = A1*C1, B1*D1 A2*C2 B2*D2
		REV64	V1.4S, V1.4S		//										v1 = d1*c1, d2*c2 (inverte)
		FMUL	V3.4S, V0.4S, V1.4S //										v3 = a1*d1, b1*c1, a2*d2, b2*c2

		FMUL    V5.4S, V2.4S, V4.4S //v5 = a1*c1 ; -b1*d1 ; +a2*c2 ; -b2*d2    MULTIPLICA PELA GLOBAL VSIGN
		FADDP	V5.4S, V5.4S, V3.4S //v5 = a1*c1 -b1*d1 ; a2*c2 - b2*d2 ; a1*d1 - b1*c1 ; a2*d2 + b2*c2
		MOV		W5, V5.S[2]
		INS		V5.4S[2], V5.S[1]   //
		MOV		V5.S[1], W5			//V5 = a1*c1 - b1*d1 ; a1*d1 + b1*c1 ; a2*c2 - b2*d2 ; a2*d2 + b2*c2
		STR		Q5, [X2], #16
		SUB		X3, X3, #1
		B ciclo

fim:
		ret


