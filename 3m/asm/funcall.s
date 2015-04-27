	section .text
	extern printf

	global funcall
funcall:
	enter 0,0
	mov rdi,str1		; RDI = "hello" (ez ugye egy char*)
	call printf		; printf("hello")
	leave
	ret
str1:	db "hello",10,13,0

	global funcall1
funcall1:
	enter 0,0
	mov rdi,rsi
	call printf
	leave
	ret

	global funcall2
funcall2:
	enter 0,0
	mov rsi,rdi
	mov rdi,fmt1
	call printf
	leave
	ret
fmt1:	db "%d",10,13,0 	; fmt1 = "%d\n"
