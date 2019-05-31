.text
.data
.global vf1a
.type vf1a, "function"

//extern double xf1a(double b, double m, double n);
// return = -m * (b + n)

vf1a:
		FMOV	D7, 1.0			//d7 = 1
		FADD 	D5, D0, D2		//d5 = b + n
		FNEG	D1, D1			//d1 = -m
		FMUL	D0, D1, D5		//d0 = -b * (b + n)
		ret

