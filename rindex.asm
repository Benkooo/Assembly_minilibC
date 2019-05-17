bits 64

global rindex

section .text

rindex:
    xor rax, rax

loop_str: ; fail quand 0 en deuxième
    cmp byte [rdi], 0
    je return
    cmp rsi, 0
    je return_empty
    cmp [rdi], sil
    je assign
    inc rdi
    jmp loop_str

assign:
    mov rax, rdi
    inc rdi
    jmp loop_str

return_empty:
    mov rax, rdi
    ret

return:
    ret