.text
.global vf5
.type vf5,"function"

//extern double vf5(double *x, double *y, int n);
//return = produto interno
//x0 = x ; x1 = y ; x2 = n

vf5:
		//fmov d0, 0
		fmov d7, 1.0
		fmov d8, 1.0
		fsub d0, d7, d8  //d0 = 0....

ciclo:
		cbz 	x2, fim
		ldr		d1,	[x0], 8 	//faz deslocamento de 8 porque..
		ldr		d2, [x1], 8		//double = 8 bytes, float = 4 bytes
		fmul	d3, d1, d2
		fadd    d0, d0, d3
		sub		x2, x2, 1
		b		ciclo

fim:
		ret

