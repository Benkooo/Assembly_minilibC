bits 64

global strstr

section .text

strstr:
    xor rax, rax

loop_str:
    jmp return

return:
    ret 