[BITS 64]

global _start

section .data
num1	dd	0x11111111
num2	dd	0x10101010

section .bss
ans	resd	1

section .text
_start:
	mov eax, [num1]
	add eax, [num2]
	mov dword [ans], eax

_exit:
	mov eax, 0x01
	int 0x80
