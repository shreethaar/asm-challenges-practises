section .data
MyVariable db 0     ; define a byte variable

section .text
global _start

_start:
    ; MOV - Move immediate value to register
    MOV EAX, 10     ; EAX=10
    MOV EBX, 20     ; EBX=20

    ; XCHG - Exchange values between registers
    XCHG EAX, EBX   ; EAX=10, EBX=20

    ; LEA - Load effective address into register
    LEA ECX, [MyVariable]   ; ECX=address of myVariable

    ; PUSH and POP
    PUSH EAX        ; Push EAX (20) onto the stack
    POP EDX         ; Pop the value from the stack into EDX (EDX=20)

    ; IN and OUT
    IN AL, 0x60     ; Read from I/O port 0x60 into AL
    OUT Ox60, AL    ; Write the value of AL to I/O port 0x60

    ; End program (for Linux system call)
    MOV EAX, 1      ; SYS_exit system call number
    XOR EBX, EBX    ; Return code 0
    INT 0x80        ; Call kernel to exit
