%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    xor eax, eax
    
    mov al, 0x1D
    mov bl, 0x17
    mov cl, 0x0A
    
    cmp al, bl
    jnl m1
    
    cmp bl, cl
    jnl m2
    mov dl, cl
    
    jmp quit
    
m2:
    mov dl, bl
    jmp quit
    
m1:
    cmp al, cl
    jnl m3
    
    mov dl, cl
    jmp quit
    
m3:
    mov dl, al
    
quit:
    ret
