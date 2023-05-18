.global function
.text

factorial:
    cmpq $1, %rdi
    jne .recurse_factorial
    movq $1, %rax
    ret

.recurse_factorial:
    decq %rdi
    call factorial
    incq %rdi
    imul %rdi, %rax
    ret

function:
    movq $0, %rcx
    movq %rdi, %rax

    cmpq $0, %rax
    jg .loop
    jmp .after_loop

.loop:
    movq  $0, %rdx
    movq $10, %r8
    idivq %r8
    pushq %rdi
    movq %rdx, %rdi
    pushq %rax
    call factorial
    addq %rax, %rcx
    popq %rax
    popq %rdi

    cmpq $0, %rax
    jg .loop

.after_loop:
    cmpq %rdi, %rcx
    je .ret1
    jmp .ret0

.ret1:
    movq $1, %rax
    ret

.ret0:
    movq $0, %rax
    ret


