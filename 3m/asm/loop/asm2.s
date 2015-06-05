	section .text
	global fa
fa:
	;; p pointer : RDI
	;; n elemszam : RSI
	;; -- long p[i] : [RDI +8*i]
	;; a parameter : RDX
	;; b parameter : RCX
	;; -- p[i] = a*i+b
	;; -- p[0] = b
	;; -- p[1] = b+a 
	;; -- p[2] = b+a+a ...
	;; r8 a ciklus valtozo

	mov r8,0
	mov [rdi],rcx
	
lup:
	add rcx,rdx
	inc r8

	mov [rdi+r8*8],rcx
	cmp r8,rsi
	jne  lup
	
	ret
