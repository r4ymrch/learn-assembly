section .data
    msg db "Hello World!", 10
    len_msg equ $ - msg

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    lea rsi, [msg]
    mov rdx, len_msg
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
