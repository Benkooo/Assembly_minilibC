bits 64

global strcspn

section .text

strcspn:
    xor rax, rax
    xor rcx, rcx

loop_str:
    mov dl, [rsi + rcx]
    mov bl, [rdi]
    cmp dl, bl
    je return
    cmp dl, 0
    je sec
    inc rcx
    jmp loop_str

sec:
    inc rdi
    inc rax
    mov rcx, 0
    jmp loop_str

return:
    ret