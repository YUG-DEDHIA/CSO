.global parityCheck
parityCheck:
    movq $0, %rdx
    movq $0, %rcx
    movq $2, %r11
    movq %rdi, %rax
    jmp .L1

.L1:
    cmp $0, %rax
    jg .L2
    jmp .L4
.L2:
    idivq %r11
    cmp $1, %rdx
    je .L3
    movq $0, %rdx
    jmp .L1
.L3:
    addq $1, %rcx
    movq $0, %rdx
    jmp .L1
.L4:
    movq %rcx, %rax
    ret