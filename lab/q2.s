.global parityCheck
.text

# N in rdi
parityCheck:
    movq $0, %rcx
    cmpq $0, %rdi
    jne .while
    jmp .final

.while:
    movq $0, %rdx
    movq %rdi, %rax
    movq $2, %rbx
    idivq %rbx
    movq %rax, %rdi
    cmpq $1, %rdx
    je .inc_count
    cmpq $0, %rdi
    jne .while
    jmp .final

.inc_count:
    incq %rcx
    cmpq $0, %rdi
    jne .while
    jmp .final

.final:
    movq $0, %rdx
    movq %rcx, %rax
    movq $2, %rbx
    idivq %rbx
    cmpq $1, %rdx
    je .ret1
    movq $0, %rax
    ret

.ret1:
    movq $1, %rax
    ret
