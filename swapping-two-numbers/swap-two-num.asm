; swapping two numbers, te value stored in two registers (EAX,EBX)

section .data
msg1 db "Enter the first integer",0xa
msg2 db "Enter the second integer",0xa
len_msg1 equ $ - msg1
len_msg2 equ $ - msg2

section .bss
num1 resb 4
num2 resb 4
result resb 8

section .text
global _start

_start:

mov 	edx,len_msg1
mov 	ecx,msg1
mov	ebx,1
mov	eax,4
int 	80h

mov 	edx,len_msg2
mov	ecx,msg2
mov 	ebx,1
mov	eax,4
int	80h

mov	eax,1
mov 	ebx,0
int	80h

mov	eax,3
mov 	ebx,0
mov	ecx,num1
mov 	edx,4
int	80h

mov	eax,3
mov 	ebx,0
mov	ecx,num2
mov	edx,4
int 	80h

mov	eax,[num1]
mov 	ebx,[num2]
mov	[result],eax
mov 	[result+4],ebx

mov	eax,4
mov	ebx,1
mov 	ecx,result
mov 	edx,8
int 	80h

mov	eax,1
mov	ebx,0
int	80h


