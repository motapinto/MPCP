.text
.global vf9b
.type vf9b,"function"
.data
	c180 : .double 180.0
	c100 : .double 100.0
	c50 :  .double 50.0
	cpi :  .double 3.1415926536

//extern double vf9b(double graus);

vf9b:
	stp		x29, x30, [SP, -16]!
	ldr		d1, c180				//d1 = 180
	fdiv 	d0, d0, d1				//d0 = graus/180
	ldr		d1, cpi					//d1 = pi
	fmul	d0, d0, d1				//d0 = graus convertidos em radianos

	bl 		vf9a					//chama a sub rotina da alinea a
	ldr 	d1, c50					//d1 = 50
	fmul 	d0, d0, d1				//d0 = cos(graus)*50
	ldr		d1, c100				//d1 = 100
	fadd	d0, d0, d1				//d0 = 100 + cos(graus)*50
	ldp		x29, x30, [SP], #16
	ret
