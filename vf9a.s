.text
.global vf9a
.type vf9a,"function"

//extern double vf9a(double x);

constants: .double 0.000000275573192e-7, 0.00002480158, 0.00138888888, 0.04166666666, 0.5, 1.0

vf9a:
		stp		x29, x30, [SP, -16]!
		LDR 	X1, =constants 	//carrega para X1 o endereco da primeira constante (sem o igual carregaria o valor da constante)
		FMUL 	D0, D0, D0 		//d0 = x^2
		LDR 	D2, [X1] 		//d2 = 1 / 10!

ciclo:
		ADD 	X1, X1, #8 		//proximo elemento
		CMP		X1, #0
		BEQ		end

		LDR 	D3, [X1] 		//d3 = 1 / 8!
		FMUL 	D4, D0, D2 		//d4 = X^2 * 1/10!
		FSUB 	D5, D3, D4 		//d5 = 1/8! - X^2 * 1/10!

		FMOV 	D2, D5			// d2 = 1/8! - X^2 * 1/10!
		B	ciclo

end:
		FMOV 	D0, D2
		//mov 	s0, x29
		ldp		x29, x30, [SP], #16
		ret
