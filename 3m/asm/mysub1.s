	section	.text
	global 	arraysum
arraysum:
	mov rax,0
	;; 	cmp rsi,0
	;; 	je end
loop1:	add rax,[rdi+4*rsi-4]	; rv += i
	dec rsi 		;
	jnz loop1
end:	ret
	
