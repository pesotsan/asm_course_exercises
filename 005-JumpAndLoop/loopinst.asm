extern printf
section .data
number	dq	5
fmt	db	"Looped %ld times", 10, 0

section .text
global main
main:
	push rbp
	mov rbp, rsp
	mov rcx, [number]
	mov rax, 0
iloop:
	add rax, rcx
	loop iloop
print:
	mov rdi, fmt
	mov rsi, [number]
	mov rdx, rax
	mov rax, 0
	call printf
exit:
	mov rsp, rbp
	pop rbp
	ret
