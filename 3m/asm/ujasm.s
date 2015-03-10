	section .text
	global ujfuggveny
ujfuggveny:
	mov rbx,0
	mov r8,0

loop1:	cmp rbx,rsi
	je end
	mov r9,[rdi+4*rbx]
	add rbx,1
	mov rax,rbx
	mul r9
	add r8,rax
	jmp loop1
end:	mov rax,r8


	ret
