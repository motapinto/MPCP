.text
.global vf2a
.type vf2a, "function"

//extern double vf2a(double a, double b, double c, double d);
//return = ((a-b)*c) / (d+a-3)

vf2a:
		FMOV	D7, 3.0			//d7 = 3
		FSUB	D5, D0, D1 		//d5 = a - b
		FMUL 	D5, D5, D2		//d5 = (a-b)*c
		FADD	D3, D3, D0		//d3 = d + a
		FSUB	D3, D3, D7	    //d3 = d + a - 3
		FDIV	D0, D5, D3
		ret




