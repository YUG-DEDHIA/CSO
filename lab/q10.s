.global bubbleSort
.text

/*
rdi N
rsi arr

rbx i
rcx j
rdx N-i-1
rax arr[j+1]
r8 arr[j]
*/
bubbleSort:
    movq $0, %rbx
    decq %rdi
    cmpq %rdi, %rbx
    jl .for1
    ret

.for1:
    movq $0, %rcx
    movq %rdi, %rdx
    subq %rbx, %rdx
    cmpq %rcx, %rdx
    jl .for2

    incq %rbx
    cmpq %rdi, %rbx
    jl .for1

.for2:
    incq %rcx
    movq (%rsi, %rcx, 8), %rax
    decq %rcx
    movq (%rsi, %rcx, 8), %r8


    cmpq %rax, %r8
    jg .swap

.after_swap:
    incq %rcx
    cmpq %rcx, %rdx
    jl .for2

    incq %rbx
    cmpq %rdi, %rbx
    jl .for1
    ret

.swap:
    movq %rax, (%rsi, %rcx, 8)
    incq %rcx
    movq %r8, (%rsi, %rcx, 8)
    decq %rcx
    jmp .after_swap

