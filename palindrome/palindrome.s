.text
.global palindrome
.type palindrome,"function"

// C declaration: extern int palindrome(char *v);
// v pointer to char array -> X0
// returns 1 if palindrome, 0 otherwise

palindrome:		mov		x10, 1
				mov		x1, x0

STARTER:		ldrb	w2, [x1]
				cbz		w2, LAST_CHAR // saltar quando X1 tiver endere�o do carater terminador
				add		x1, x1, 1
				b 		STARTER

LAST_CHAR:		sub		x1, x1, 1 // colocar em X1 o endere�o do �ltimo carater (excluindo o carater terminador)

LOOP:			ldrb	w2, [x0], 1
				cbz		w2, END
				ldrb	w3, [x1], -1
				cmp		w2, w3
				b.eq	LOOP
				mov		x0, xzr
				ret

END:			mov		x0, x10
				ret
