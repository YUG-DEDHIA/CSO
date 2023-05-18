.global partition
.text

.while1:
    incq %rbx
    cmpq %rax, (%rdi, %rbx, 8)
    jle .while1
    jmp .after_while1

.while2:
    decq %rcx
    cmpq %rax, (%rdi, %rcx, 8)
    jg .while2
    jmp .after_while2

.swapij:
    movq (%rdi, %rbx, 8), %rdx
    movq (%rdi, %rcx, 8), %r8
    movq %r8, (%rdi, %rbx, 8)
    movq %rdx, (%rdi, %rcx, 8)
    jmp .end_while

/*
rdi arr
rsi size

rax pivot
rbx i
rcx j
*/
partition:
    movq $0, %rbx
    movq %rsi,%rcx
    decq %rcx
    movq (%rdi), %rax

    cmpq %rcx, %rbx
    jl .while

.while:

    cmpq %rax, (%rdi, %rbx, 8)
    jle .while1

.after_while1:

    cmpq %rax, (%rdi, %rcx, 8)
    jg .while2

.after_while2:
    cmpq %rcx, %rbx
    jl .swapij

.end_while:
    cmpq %rcx, %rbx
    jl .while

.swap_pivot:
    movq (%rdi, %rcx, 8), %r8
    movq %r8, (%rdi)
    movq %rax, (%rdi, %rcx, 8)
    ret
