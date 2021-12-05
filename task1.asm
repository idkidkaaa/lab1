%include "io.inc"

section .text
global CMAIN
CMAIN:
	mov ebp, esp; for correct debugging

	xor eax, eax

	mov al, 0x1D ; 0xFE
	mov bl, 0x17 ; 0x0D
	mov cl, 0x0A ; 0xFD

	add al, bl
	mul cl

	ret 
