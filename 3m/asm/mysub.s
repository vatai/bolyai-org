	global 	asd
	section	.text
	;; rax == rv
	;; rcx == i
	;; rdi == n
asd:	mov rax,0		; rv = 0;
	;; for(i=0; i<n; i++)
	mov rcx,0		; i=0
ciklus:	cmp rcx,rdi		; if !(i<=n)
	jnle vege		; jmp -> vege
	add rax,rcx		; rv += i
	inc rcx			; i++
	jmp ciklus		; ismetles
vege:	ret
