section .data
  prompt_msg db "Masukan Nama anda: "
  prompt_msg_len equ $ - prompt_msg

  answer_msg db "Halo! "
  answer_msg_len equ $ - answer_msg

section .bss
  input resb 128

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  lea rsi, [prompt_msg]
  mov rdx, prompt_msg_len
  syscall

  mov rax, 0
  mov rdi, 0
  lea rsi, input
  mov rdx, 128
  syscall

  lea r8, [rax]

  mov rax, 1
  mov rdi, 1
  lea rsi, [answer_msg]
  mov rdx, answer_msg_len
  syscall

  mov rax, 1
  mov rdi, 1
  lea rsi, [input]
  mov rdx, r8
  syscall

  mov rax, 60
  xor rdi, rdi
  syscall
