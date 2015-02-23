	global 	argfun
	section	.text
argfun:	mov rax,rdi		; ax->16bit, eax->32bit, rax->64bit
	add rax,rsi
	ret
