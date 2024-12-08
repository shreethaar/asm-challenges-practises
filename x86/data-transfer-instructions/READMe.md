# Data Transfer Instructions

Allows for the movement of data between registers, memory and I/O ports. 

### MOV (Move)
- Syntax: `MOV destination, source`
- Transferring data between registers, memory locations, or between a register and an immediate value

### PUSH 
- Syntax: `PUSH operand`
- Pushes the operand onto the stack. It decreases the stack pointer (ESP) and stores the operand at the address pointed to the ESP

### POP
- Syntax: `POP destination`
- Pops the top value from the stack into the destination operand, which is typically register or a memory location. It also increments the stack pointer (ESP)

### XCHG (Exchange)
- Syntax: `XCHG operand1, operand2`
- Exchanges the values of operands, it is commonly used to swap the contents of registers or between a register and memory

### LEA (Load Effective Address)
- Syntax: `LEA destination, source`
- Loads the effective address of the source operand into the destination register. It does not actually access the memory; rather, it calculates the address.

### MOVS (Move string)
- Syntax: `MOVS destination, source`
- Used in string operations to move data from source string to a destination string. It is often paired with the `rep` prefix for repeated operations.

### IN
- Syntax: `IN AL, port`
- Transfer data from an I/O port to a register. It is commonly used for low-level hardware communication.

### OUT
- Syntax: `OUT port, AL`
- Sends data from a register to an I/O port.



