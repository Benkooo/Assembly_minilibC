bits 64

global strcasecmp

section .text

return:
    sub ebx, ecx
    mov rax, rbx
    ret

add_min_sec:
    add bl, 32
    cmp bl, 0
    je loop_str
    inc rdi

check_z_sec:
    cmp bl, 90
    jle add_min_sec

check_a_sec:
    cmp bl, 65
    jge check_z_sec

add_min:
    add cl, 32
    cmp cl, 0
    je loop_str
    inc rsi

check_z:
    cmp cl, 90
    jle add_min

check_a:
    cmp cl, 65
    jge check_z

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

strcasecmp:
    xor rbx, rbx
    xor rcx, rcx
    xor rax, rax
    jmp loop_str