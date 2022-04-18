extern printf

section .data
msg	db	"Hello World!", 0
iNum	dd	361
fNum	dq	6.12
fmtstr	db	"This is the string: %s", 10, 0
fmtflt	db	"%lf", 10, 0			;format for float
fmtint	db	"%i", 10, 0			;format for int

section .text
global main
main:
start:	
	push rbp
	mov rbp, rsp
print:
	mov rdi, fmtstr		;printf, 1st argument
	mov rsi, msg		;printf, 2nd argument
	mov rax, 0
	call printf
	mov rax, 0
	mov rdi, fmtint
	mov rsi, [iNum]
	call printf
	mov rax, 1		;xmm reg used
	mov rdi, fmtflt
	movq xmm0, [fNum]
	call printf
ending:
	mov rsp, rbp
	pop rbp
exit:
	mov rax, 60
	mov rdi, 0
	syscall
