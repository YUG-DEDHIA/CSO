.global sum
.text

/* 
rdi m
rsi n
rdx arr

rbx i
rcx j
*/
sum:
    movq $0, %rax
    movq $0, %rbx
    cmpq %rdi, %rbx
    jl .for1
    ret

.for1:
    movq $0, %rcx
    cmpq %rsi, %rcx
    jl .for2

    incq %rbx
    cmpq %rdi, %rbx
    jl .for1
    ret

.for2:
    movq %rbx, %r8
    imul %rsi, %r8
    addq %rcx, %r8
    movq (%rdx, %r8, 8), %r9

    pushq %rdx
    pushq %rax
    movq $0, %rdx
    movq %r9, %rax
    movq $2, %r10
    idiv %r10
    cmpq $0, %rdx
    popq %rax
    popq %rdx
    je ._add
    jmp .for2_end


._add:
    addq %r9, %rax

.for2_end:
    incq %rcx
    cmpq %rsi, %rcx
    jl .for2

    incq %rbx
    cmpq %rdi, %rbx
    jl .for1
    ret
