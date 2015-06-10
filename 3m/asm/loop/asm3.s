	section .text
	global fa
fa:
	;; rdi = long n
	;; rsi = long *a
	;; rdx = long *b
	;; rcx = long *c

	;; mivel szórzás az az eredményt az rax-ba és a rdx-be teszi,
	;; ezért az rdx-et el kell menteni, mondjuk az r8-ba
	mov r8,rdx		; = b

	;; ciklus változó lehet az r9 lesz a ciklus változó
	mov r9,0

	;; ha n=0 akkor nem kell semmit csinálni
	cmp rdi,0
	je vege 		; ha rdi=0, akkor ugorj a végére

eleje:	
	mov rax,[r8+8*r9]	; rax = b[i]
	mul qword [rcx+8*r9]	; (rax:rdx) = rax * c[i]
	mov [rsi+8*r9],rax	; a[i] = rax

	inc r9			; i++
	cmp r9,rdi		; 
	jl eleje		; ha i<n akkor ugorj az elejére
vege:	
	ret
