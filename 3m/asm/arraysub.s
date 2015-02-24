	section	.text
	;; RDI == x
	;; RSI == a
	;; RDX == n

	global 	array
array:	mov rax,0		; rv = 0;
	;; for(i=0; i<n; i++)
	mov rcx,0		; i=0
ciklus:	cmp rcx,rdx		; if !(i<=n)
	jge vege		; jmp -> vege
	mov [rsi+rcx*4],rax
	add rax,rdi		; rv += x
	;; add rsi,4
	inc rcx			; i++
	jmp ciklus		; ismetles
vege:	ret
