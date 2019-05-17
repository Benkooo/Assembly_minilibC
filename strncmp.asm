bits 64

global strncmp

section .text

strncmp:
    xor rcx, rcx
    xor rbx, rbx
    xor rax, rax
    jmp loop_str

loop_str:
    cmp rdx, 0
    je return
    mov cl, [rsi]
    mov bl, [rdi]
    cmp cl, 0
    je return
    cmp cl, bl
    jne return
    inc rsi
    inc rdi
    dec rdx
    jmp loop_str

return:
    sub ebx, ecx
    mov rax, rbx
    ret