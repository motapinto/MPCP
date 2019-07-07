.text
.global LSL_8
.type LSL_8,"function"

LSL_8:
		MOV 	X10, X0
		BFI		X10, X12, 8, 56 //56 = 64 - 8 // move os ultimos 56 bits para a posicao 8~
		MOV 	X0, X10 //retorna em x0
		RET

//BFI: Bit field insert
//UBFX: Bit field extract
