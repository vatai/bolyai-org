	section .text
	global fa
fa:	
	;; ha RDI < 10
	cmp rdi, 10 		; rdi ? 10
	jge negyvenketto
	mov rax, 21
	jmp vege
	;; else
negyvenketto:	
	mov rax,42
vege:
	inc rax
	ret
	
