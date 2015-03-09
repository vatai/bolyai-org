	section .text

	;; rdi, rsi, rdx, rcx, r8, r9
	global f
f:	mov r10,rdx 		; rdx elmentve

	mov rax,2
	mul rdi
	mov rdi,rax

	mov rax,3
	mul rsi
	add rdi,rax

	mov rax,4
	mul r10
	add rdi,rax

	mov rax,5
	mul rcx
	add rdi,rax

	mov rax,6
	mul r8
	add rdi,rax

	mov rdx,0
	mov rax,rdi
	div r9

	ret

