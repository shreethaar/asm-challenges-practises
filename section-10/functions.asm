; this is a demo for using external functions in the program
; this file includes the frequently used functions

; nasm -f elf helloworld-inc.asm
; ld -m elf_i386 helloworld-inc.o

slen: 
push	ebx
mov	ebx,eax

nextchar:
cmp	byte[eax],0
jz 	finished
inc 	eax
jmp 	nextchar

finished:
sub 	eax,ebx
pop	ebx
ret

sprint:
push	edx,
push  	ecx,
push 	ebx,
push 	eax,
call	slen

mov	edx,eax
pop	eax

mov	ecx,eax
mov	ebx,1
mov 	eax,4
int 	80h

pop	ebx
pop	ecx
pop	edx
ret

sprintLF:
call	sprint

push 	eax
mov	eax,0Ah
push	eax
mov	eax,esp
call 	sprint
pop 	eax
pop 	eax
ret 


quit:
mov	ebx,0
mov	eax,1
int 	80h


