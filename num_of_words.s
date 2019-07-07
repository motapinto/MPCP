.text
.global num_of_words
.type num_of_words, "function"

num_of_words:
		MOV		X1, X0
		MOV		X0, #1 //counter

loop:
		LDRB 	W2, [X1], #1
		CMP 	W2, 0
		B.EQ	end
		CMP 	W2, ' '
		B.NE	loop
		ADD 	X0, X0, #1
		b 		loop

increment:
		B	 	loop

end:
		RET
