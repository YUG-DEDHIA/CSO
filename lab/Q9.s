.global factorial
factorial:
    movq %rdi,%r9   # n
    movq $0,%r10    # rem
    movq $1,%r11    # i
    movq $1,%r12    # prod
    movq $0,%rbx    # sum
    jmp .loopcheck1
.loopcheck1:
    cmpq $0,%r9
    jg .loop1
    jmp .rem

.loop1:
    movq $1,%r11    # i
    movq $1,%r12    # prod=1
    movq $0,%r10    # rem
    movq %r9,%rax
    movq $0,%rdx
    movq $10,%rcx
    cqto
    idivq %rcx
    movq %rdx,%r10
    movq %rax, %r9
    jmp .loopcheck2

.loopcheck2:
    cmpq %r11,%r10
    jge .loop2
    jmp .rem_l1

.loop2:
    imul %r11,%r12
    incq %r11
    jmp .loopcheck2

.rem_l1:
    addq %r12,%rbx
    movq $1,%r12
    jmp .loopcheck1

.rem:
    cmpq %rbx,%rdi
    je .returnp
    movq $0,%rax
    ret

.returnp:
    movq $1,%rax
    ret



