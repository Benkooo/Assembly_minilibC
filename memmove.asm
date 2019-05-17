bits 64

global memmove

section .text

return:
    ret

return_false:
    mov rax, 0
    ret

loop_str:
    cmp rdi, 0
    je return_false
    cmp rsi, 0
    je return_false
    cmp rcx, rdx ; parcours tant que l increm est inférieur au nbr entré
    je return ;si on est au bout -> on return
    mov bl, [rsi + rcx]
    mov [rax + rcx], bl
    inc rcx ;incremente
    jmp loop_str ;on boucle

memmove:
    mov rcx, 0 ; on créé un incrémenteur
    mov rax, rdi ;on assigne rdi (premier param de la fonction) à la valeur de retour rax
    jmp loop_str