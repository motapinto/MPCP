.text
.data
.global vf1b
.type vf1b, "function"

//extern double vf1b(int w, double x);
// return = sqrt(x) + w

vf1b:
		SCVTF	D1, X0
		FSQRT   D0, D0
		FADD 	D0, D1, D0
		ret

