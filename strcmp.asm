bits 64

global strcmp

section .text

return:
    sub ebx, ecx
    mov rax, rbx
    ret

loop_str:
    mov cl, [rsi]
    mov bl, [rdi]
    cmp cl, 0
    je return
    cmp cl, bl
    jne return
    inc rsi
    inc rdi
    jmp loop_str

strcmp:
    xor rbx, rbx
    xor rcx, rcx
    xor rax, rax
    jmp loop_str