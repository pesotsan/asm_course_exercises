section .data
msg 	db	"Hello World!", 10, 0

section .text
global main

main:
	mov rax, 1			;write
	mov rdi, 1			;destination = stdout
	mov rsi, msg
	mov rdx, 13			;string length
	syscall

exit:
	mov rax, 60
	mov rdi, 0
	syscall
