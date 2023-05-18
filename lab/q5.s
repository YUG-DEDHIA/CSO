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

# X in rdi
function:
    movq $1, %rax
    pushq %rax
    pushq %rdi
    movq %rax, %rdi
    call factorial
    movq $0, %rdx
    popq %rdi
    idivq %rdi
    popq %rax
    cmpq $0, %rdx
    jne .while
    ret

.while:
    incq %rax
    pushq %rax
    pushq %rdi
    movq %rax, %rdi
    call factorial
    movq $0, %rdx
    popq %rdi
    idivq %rdi
    popq %rax
    cmpq $0, %rdx
    jne .while
    ret

    
