extern printf
section .data
    num1    dq  42
    num2    dq  41
    fmt1    db  "NUM1 >= NUM2", 10, 0
    fmt2    db  "NUM1 < NUM2", 10, 0
section .text
    global main
main:
    mov rbp, rsp; for correct debugging
    push rbp
    mov rbp, rsp
    mov rax, [num1]
    mov rbx, [num2]
    cmp rax, rbx
    jge greater
lower:
    mov rdi, fmt2
    mov rax, 0
    call printf
    jmp exit
greater:
    mov rdi, fmt1
    mov rax, 0      ;no xmm
    call printf
exit:
    mov rsp, rbp
    pop rbp
    ret