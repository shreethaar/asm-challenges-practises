; Pop value from stack into register
; POP instructions pops a value from the stack into a destination register, which increments the stack pointer (ESP).

POP EAX     ; Pop the top value from the stack into EAX

; Pop value into memory

POP [0x1000] ; Pop the top value from the stack into memory address 0x1000


