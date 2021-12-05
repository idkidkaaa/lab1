%include "io.inc"

section .text
global CMAIN
CMAIN:
	mov ebp, esp; for correct debugging
	
	fld dword [c]
	fld dword [a]
	fld dword [b]
	
	fadd
	fmul
	
	fst dword [r]
	
	ret

section .data
a: DD 0xC0000000 ; 0x41E80000
b: DD 0x41500000 ; 0x41B80000
c: DD 0xC0400000 ; 0x41200000
r: DD 0x00000000 ; 0x00000000 
