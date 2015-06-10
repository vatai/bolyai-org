	section .text
	global sa
sa:
	;; p pointer : RDI
	;; n elemszam : RSI
	;; p[0] : [rdi + 8*0]
	mov rcx,0
	mov rax,0

	;; javítás: ha n=0 akkor nem kell semmi
	cmp rsi,0
	je vege
lup:	
	add rax, [rdi+8*rcx]

	inc rcx

	cmp rcx,rsi
	jl lup

	;; Próba: egy egy elem visszaadása
	;; mov rax, [rdi+8*{0,1,2,3}]
	;; rcx = {0,1,2,3}
vege:	
	ret
