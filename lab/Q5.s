.global fact
fact:
    movq $1, %rbx
    movq $1, %rcx
    movq $0,%rdx
    jmp .l1
.l1:
    movq $0, %rdx
    movq %rbx, %rax
    idivq %rdi
    cmp $0, %rdx
    jne .l2
    movq %rcx, %rax
    ret


.l2:
    addq $1, %rcx
    imul %rcx, %rbx
    movq %rbx, %rax
    jmp .l1

