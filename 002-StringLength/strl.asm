section .data
str1	db	"This is a string", 10, 0
str1Len	equ	$-str1-1
str2	db	"This may look like a string, but beware of believing what your eyes see", 10, 0
str2Len equ	$-str2-1

section .text
global main

main:
	push rbp
	mov rbp, rsp
print1:
	mov rax, 1		;write
	mov rdi, 1		;stdout
	mov rsi, str1
	mov rdx, str1Len
	syscall
print2:
	mov rax, 1
	mov rdi, 1
	mov rsi, str2
	mov rdx, str2Len
	syscall
end:
	mov rsp, rbp
	pop rbp
exit:
	mov rax, 60
	mov rdi, 0
	syscall
