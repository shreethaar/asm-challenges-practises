; sum of nth term
; Sn = n/2 [2a + (n-1)d]

section .data
    info db 'Sum of nth term',0xa
    len_info equ $ - info
    formula db 'Formula: Sn = n/2 [2a + (n-1)d]',0xa
    len_formula equ $ - formula
    input1 db 'Enter the first term:',0xa
    len_input1 equ $ - input1
    input2 db 'Enter the common difference:',0xa
    len_input2 equ $ - input2
    input3 db 'Enter the nth term', 0xa
    len_input3 equ $ - input3

section .bss
    buff_input1 resb 100
    buff_input2 resb 100
    buff_input3 resb 100


section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, info
    mov edx, len_info
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, formula 
    mov edx, len_formula
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, input1
    mov edx, len_input1
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, buff_input1
    mov edx, 100
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, input2
    mov edx, len_input2
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, buff_input2
    mov edx, 100
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, input3
    mov edx, len_input3
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, buff_input3
    mov edx, 100
    int 0x80

    mov eax, 1
    mov ebx, 0    ; exit status
    int 0x80

first_half:
    mov eax, buff_input3
    mov ebx, 2
    div eax, ebx

second_half:
    mov eax, buff_input1
    mov ebx, 2
    mul eax, ebx

product:
    mov eax, 

