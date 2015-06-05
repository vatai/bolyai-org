	;; 

	section .text
	global fa
fa:	;; 1+2+...+RDI
	;; rcx : i
	mov rax, 0
	mov rcx, 0
lup:
	inc rcx
	add rax,rcx
	
	cmp rcx,rdi
	jne lup
	ret
