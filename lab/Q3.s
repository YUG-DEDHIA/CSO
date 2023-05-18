.global sum
sum:
    movq %rdi, %r13 #m
    movq %rsi, %r12 #n
    movq %rdx, %r11 #arr 1st elem
    movq $0, %r10 #sum
    imulq %r13, %r12
    subq $1, %r12
    jmp .chl1
.chl1:
    cmpq $-1, %r12
    jne .L1
    jmp .retl
.L1:
    movq (%r11,%r12,8), %rax
    movq $2, %r9
    cqto
    idivq %r9
    cmpq $0, %rdx
    je .c1
    subq $1, %r12
    jmp .chl1
.c1:
    movq (%r11,%r12,8), %rax
    addq %rax, %r10
    subq $1, %r12
    jmp .chl1
.retl:
    movq %r10, %rax
    ret