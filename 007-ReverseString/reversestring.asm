extern printf
section .data
string		db	"This is a string",10,0
strlen		equ	$ - $string -1
nl		db	10,0

section .bss
rever	resb	17

section .text
global main
main:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	mov rbx, string
print1:
	mov rdi, string
	xor rax, rax
	call printf
	xor r10, r10			;r10 as index
	xor rax, rax
	mov rcx, strlen
sloop:
	mov al, byte [rbx + r10]
	push rax
	inc r10
	loop sloop

	xor rcx, rcx
	mov rcx, strlen
	xor r10, r10
	mov rbx, rever
rloop:
	pop rax
	mov [rbx + r10], al
	inc r10
	loop rloop
print2:
	mov rdi, rever
	xor rax, rax
	call printf
exit:
	xor rax, rax
	mov rsp, rbp
	pop rbp
	ret
