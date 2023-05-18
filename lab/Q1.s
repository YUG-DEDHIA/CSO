.global func
func:
    pushq %rbp
    movq %rsp, %rbp
    movq $1, %rcx #for exponential
    cmp $1, %rdx
    je  .L1
    cmp $2, %rdx
    je  .L2
    cmp $3, %rdx
    je  .L3
    cmp $4, %rdx
    je  .L4
    cmp $5, %rdx
    je  .L6

.L1:
    addq %rsi, %rdi
    movq %rdi, %rax
    popq %rbp
    ret
.L2:
    subq %rsi, %rdi
    movq %rdi, %rax
    popq %rbp
    ret
.L3:
    movq %rdi, %rax
    movq $0, %rdx
    divq %rsi
    popq %rbp
    ret
.L4:    #exponential
    cmp $0, %rsi
    jg .L5
    movq %rcx, %rax
    popq %rbp
    ret

.L5: #exponential
    imul %rdi, %rcx
    subq $1, %rsi
    jmp .L4
.L6:
    movq %rdi, %rax
    movq $0, %rdx
    divq %rsi
    movq %rdx, %rax
    popq %rbp
    ret