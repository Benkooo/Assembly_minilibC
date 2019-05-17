bits 64

global strlen

section .text

ending:
    mov rax, rcx ; assign rcx à rax
    ret ; return toujours rax

loop_j:
    cmp [rdi], byte 0 ;compare string rdi (1er arguement en param) et NULL
    je ending ; si la comparaison validée -> on va dans end
    inc rdi ;décale le pointeur de rdi
    inc rcx ; incremente l inrementeur
    jmp loop_j ; rappelle la loop_j pour boucler

strlen:
    mov rcx, 0 ;assigne 0 à rcx ;rcx = incrémenteur
    jmp loop_j ;on passe à la loop