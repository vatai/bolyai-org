	global 	argfun
	section	.text
	;; az argumentumok sorban a következő regiszterekben
	;; találhatók: RDI, RSI, RDX, RCX, R8, R9
argfun:	mov rax,rdi		; rax = arg[0] 
	add rax,rsi		; rax += arg[1]
	ret
