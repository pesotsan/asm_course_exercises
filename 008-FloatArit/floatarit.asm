extern printf
section .data
num1		dq	9.0
num2		dq	73.0
fmt		db	"The numbers are %f and %f",10,0
fmtfloat	db	"%s %f",10,0
f_sum		db	"%f + %f = %f",10,0
f_dif		db	"%f - %f = %f",10,0
f_mul		db	"%f x %f = %f",10,0
f_div		db	"%f / %f = %f",10,0
f_sqrt		db	"Square root of %f is %f",10,0

section .text
global main
main:
	push rbp
	mov rbp, rsp
printn:
	movsd xmm0, [num1]
	movsd xmm1, [num2]
	mov rdi, fmt
	mov rax, 2		;for printf rax specifies amount of float registers
	call printf

sum:
	movsd xmm2, [num1]
	addsd xmm2, [num2]
printsum:
	movsd xmm0, [num1]
	movsd xmm1, [num2]
	mov rdi, f_sum
	mov rax, 3
	call printf

dif:
	movsd xmm2, [num1]
	subsd xmm2, [num2]
printdif:
	movsd xmm0, [num1]
	movsd xmm1, [num2]
	mov rdi, f_dif
	mov rax, 3
	call printf

mult:
	movsd xmm2, [num1]
	mulsd xmm2, [num2]
printmul:
	movsd xmm0, [num1]
	movsd xmm1, [num2]
	mov rdi, f_mul
	mov rax, 3
	call printf

divi:
	movsd xmm2, [num1]
	divsd xmm2, [num2]
printdivi:
	movsd xmm0, [num1]
	movsd xmm1, [num2]
	mov rdi, f_div
	mov rax, 3
	call printf

sqrt:
	sqrtsd xmm1, [num1]
printsqrt:
	mov rdi, f_sqrt
	movsd xmm0, [num1]
	mov rax, 2
	call printf

exit:
	mov rsp, rbp
	pop rbp
	ret
