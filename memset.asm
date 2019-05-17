bits 64

global memset

section .text

return:
    ret

loop_str:
    cmp rcx, rdx ; parcours tant que l increm est inférieur au nbr entré
    je return ;si on est au bout -> on return
    mov [rax + rcx], sil ; met le caractère (sil(rsi) = 2e paramètre) dans la string
    inc rcx ;incremente
    jmp loop_str ;on boucle

memset:
    mov rcx, 0 ; on créé un incrémenteur
    mov rax, rdi ;on assigne rdi (premier param de la fonction) à la valeur de retour rax
    jmp loop_str