section .data
    str: db '/etc/passwd', 0

section .bss
    buf: resb 11

section .text
global _start

_start:
; init
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx
; open
    mov eax, 0x05
    mov ebx, str
    mov ecx, 0 ;only read flag
    mov edx, 0
    int 0x80
; read
    mov ebx, eax ;fd
    mov eax, 0x03
    mov ecx, buf
    mov edx, 10
    int 0x80
; write::print
    mov eax, 0x04
    mov ebx, 1 ;stdout
    mov ecx, buf
    mov edx, 10
    int 0x80
; close
    xor ebx, ebx
    mov eax, 1
    int 0x80
