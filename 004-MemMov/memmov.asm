;This program just moves data around. Used to practice the use of debugger

section .data
bNum	db	122
wNum	dw	12223
dNum	dd	1122333897
qNum1	dq	1234567890123456789
qNum2	dq	124356
qNum3	dq	5.15

section .text
global main
main:
start:
	push rbp
	mov rbp, rsp
label1:
	mov rax, -1		;fill rax with 1s (1b two's complement fills with 1s)
	mov al, byte [bNum]
	xor rax, rax
	mov al, byte [bNum]
label2:
	mov rax, -1
	mov ax, word [wNum]
	xor rax, rax
	mov ax, word [wNum]
label3:
	mov rax, -1
	mov eax, dword [dNum]
label4:
	mov rax, -1
	mov rax, qword [qNum1]
	mov qword [qNum2], rax
	mov rax, 123456
label5:
	movq xmm0, [qNum3]
ending:
	mov rsp, rbp
	pop rbp
exit:
	mov rax, 60
	mov rdi, 0
	syscall
