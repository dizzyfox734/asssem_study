section .data
    data: db '/bin/sh', 0

section .text
global _start

_start:
;init
    xor edx, edx
    xor ecx, ecx
    xor ebx, ebx
    xor eax, eax

;
    mov ebx, data
    mov al, 11
    int 0x80
