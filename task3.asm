%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    xor     eax, eax
    xor     ebx, ebx
    xor     ecx, ecx
    
    mov     ax, -2
    mov     bx, 13
    mov     cx, -3
    
    cmp     ax, bx
    jl      l1
    cmp     ax, cx
    jl      l2
    mov     dx, ax
    jmp     quit
    
l1:
    cmp     bx, cx
    jl      l2
    mov     dx, bx
    jmp     quit    
    
l2:
    mov     dx, cx   
     
quit:  
    PRINT_DEC 1, dx                     
    ret
