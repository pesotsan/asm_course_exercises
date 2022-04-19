extern printf
section .data
number	dq	5
fmt	db	"Looped %ld times", 10, 0

section .text
global main
main:
	push rbp
	mov rbp, rsp
	mov rbx, 0	;rbx as counter
	mov rax, 0
oloop:
	add rax, rbx
	inc rbx
	cmp rbx, [number]
	jle oloop
print:	mov rdi, fmt
	mov rsi, [number]
	mov rdx, rax
	mov rax, 0
	call printf
exit:	mov rsp, rbp
	pop rbp
	ret
