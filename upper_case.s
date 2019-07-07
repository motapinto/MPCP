.text
.global upper_case
.type upper_case, "function"

upper_case:
	mov			X2, #0 //counter

ciclo:
	ldrb		W1, [X0], #1 //load char and increments pos
	cbz			W1, end //if is not the end of string, continue

	cmp 		w1, 'A'
	b.lt 		ciclo //if ascii code is less than A than is now an upper case
	cmp			w1, 'Z'
	b.gt		ciclo
	add			x2, x2, #1
	b			ciclo

end:
	mov			X0, X2 //return value
	ret
