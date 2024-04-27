section .data
	prompt_msg db 'Enter a string: ', 0
	prompt_key db 'Enter a key (0-25): ', 0
	encrypted_msg db 'Encrypted string: ', 0
	newline db 0xA, 0

section .bss
	input_buffer resb 64
	key resb 1

section .text
	global _start

_start: 
	; Prompt the user to enter a string
	mov eax, 4
	mov ebx, 1
	mov ecx, prompt_msg
	mov edx, 16
	int 0x80

	; Read the input string from the user
	mov eax, 3
	mov ebx, 0
	mov ecx, input_buffer
	mov edx, 64
	int 0x80 

	; Prompt the user to enter a key 
	mov eax, 4
	mov ebx, 0
	mov ecx, input_buffer 
	mov edx, 64
	int 0x80

	; Read the key from the user
	mov eax, 4
	mov ebx, 1
	mov ecx, prompt_key
	mov edx, 21
	int 0x80

	; Read the key 
	mov eax, 3
	mov ebx, 0
 	mov ecx, key
	mov edx, 1
	int 0x80
	
