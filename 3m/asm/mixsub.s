	section	.text		; "Kód szegmens"
	global	fun		; a fun cimke kívűről is hívható
fun:	mov	ax,13 		; AX-be megy a visszatérési érték
	ret			; "return"
