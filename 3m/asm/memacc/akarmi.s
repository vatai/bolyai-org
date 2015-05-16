	section .text
	global f1
	;; p == RDI
	
f1:	mov qword[rdi],42
	;; mov rax,42
	;; mov [rdi],rax
	ret


	global f3
	;; p== RDI
f3:	mov qword [RDI+0*8],10
	mov qword [RDI+1*8],20
	mov qword [RDI+2*8],30
	ret			
