	section	.text
	global 	arraysum
arraysum:
	lea rcx,[rdi+4*rsi] 	; &a[n]
	
	sub rdi,rdi
	lea rdi,[rcx+rdi]
loop1:	add rax,[rdi+rcx]	; rv += i
	add rdi,4		; a+n-(n-i) = &a[i]
	jnz loop1
end:	ret
	
