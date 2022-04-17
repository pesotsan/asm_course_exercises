[BITS 32]

global _start

section .text
_start:
	mov eax, 213
	add eax, 432

_exit:
	mov eax, 0x01
	int 0x80


