	section .text
	global sa
sa:
	;; p pointer : RDI
	;; n elemszam : RSI
	;; p[0] : 
	mov rcx,0
	mov rax,0
lup:	
	add rax, [rdi+8*rcx]

	inc rcx

	cmp rcx,rsi
	jl lup



	;; mov rax, [rdi+8*{0,1,2,3}]
	;; rcx = {0,1,2,3}
	ret
