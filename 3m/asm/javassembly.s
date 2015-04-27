	section .text

	global f1
f1:	add rdi,rsi 		; rdi += rsi
	mov rax,rdi		; rax = rdi
	ret

	global f2
f2:	
