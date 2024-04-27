section .data
intro db "Function: Take two input from user and adds", 0xa
len_intro equ $ - intro
text1 db "Enter first number: "
len_text1 equ $ - text1
text2 db "Enter second number: "
len_text2 equ $ - text2
output db "Output: "
len_output equ $ - output

section .bss
num1 resb 2
num2 resb 2
result resb 10

section .text
global _start

_start:

;print out intro message

mov	eax, 4
mov 	ebx, 1
mov 	ecx, intro
mov 	edx, len_intro
int 	80h

;print out text1

mov	eax, 4
mov	ebx, 1
mov	ecx, text1
mov 	edx, len_text1
int 	80h

; takes first input 

mov 	eax, 3
mov 	ebx, 0
mov	ecx, num1
mov 	edx, 2
int 	80h

; convert num1 from ASCII to integer

mov 	eax, num1
call	ascii_to_int
mov	[num1], eax

; print out text2

mov 	eax, 4
mov 	ebx, 1
mov	ecx, text2
mov 	edx, len_text2
int 	80h

; takes second input

mov 	eax, 3
mov	ebx, 0
mov	ecx, num2
mov	edx, 2
int 	80h

; convert num2 from ASCII to integer

mov 	eax, num2
call 	ascii_to_int
mov	[num2], eax

; perform addition

mov 	eax, [num1]
add 	eax,[num2]
mov 	[result], eax

; display output message

mov	eax, 4
mov	ebx,1
mov	ecx, output
mov 	edx, len_output
int	80h

; display result

mov 	eax, 4 
mov	ebx, 1
mov 	ecx, result
mov 	edx, 10
int 	80h

; exit 

mov 	eax, 1
mov	eax, 0
int 	80h


; function converting ASCII strint to integer

ascii_to_int:
; clear ebx
xor ebx, ebx

.next_digit:
movzx	edx, byte [eax] 
test	dl, dl
jz	.done
sub	edx,'0'
imul	ebx, ebx
add	ebx, edx
inc 	eax
jmp	.next_digit

.done:
ret
 





