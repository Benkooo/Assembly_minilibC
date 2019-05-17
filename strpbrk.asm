bits 64

global strpbrk

section .text

strpbrk:
    xor rax, rax
    jmp loop_str ;on passe à la boucle principale

loop_str:
    cmp [rdi], sil ;on compare rax avec le deuxieme paramètre
    je return ;si la condition est valide on return
    cmp byte [rdi], 0 ;on compare rax avec \0
    je false ;si la comparaison est ok -> on va dans end
    inc rdi ;on decale le pointeur rax
    jmp loop_str ;on boucle sur loop_str

false:
    mov rax, 0
    ret

return:
    mov rax, rdi
    ret