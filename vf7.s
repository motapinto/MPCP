.text
.global vf7
.type vf7,"function"
pi: .double 3.14159265359

//extern double vf7(double x)

vf7:
		fcmp 	d0, 0
		ldr		x5, =pi
		LDR		d5, [x5]
		b.ge 	positive

//y = 1/sqrt(4-x)
negative:
		fmov	d1, 4.0		//d1 = 4
		fmov	d2, 1.0		//d2 = 1.0
		fsub	d0, d1, d0	//d0 = 4 - x
		fsqrt	d0, d0		//d0 = sqrt(4 - x)
		fdiv	d0, d2, d0  //d0 = 1/sqrt(4 - x)
		b 		end

//y = sqrt((x+pi)^3)
positive:
		fadd 	d0, d0, d5 //d0 = x + pi
		fmul 	d1, d0, d0 //d1 = (x+pi)^2
		fmul 	d0, d0, d1 //d0 = (x+pi)^3
		fsqrt 	d0, d0    //d0 = sqrt((x+pi)^3)
		b 		end

end:
		ret
