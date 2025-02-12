section .text
    global sum ; export function for c

sum:
    mov rax, rdi
    add rax, rsi
    ret
