.global binarySearch
.text

.not_found:
    movq $-1, %rax
    ret

.found:
    ret

.greater:
    incq %rax
    movq %rax, %rdx
    call search
    ret


/*
rdi list
rsi X
rdx low
rcx high
*/
search:
    cmpq %rdx, %rcx
    jl .not_found
    movq %rdx, %rax
    addq %rcx, %rax
    pushq %rdx
    movq $0, %rdx
    movq $2, %rbx
    idivq %rbx
    popq %rdx

    movq (%rdi, %rax, 8), %rbx
    cmpq %rbx, %rsi
    je .found
    jg .greater

    decq %rax
    movq %rax, %rdx
    call search
    ret
    
/*
rdi list
rsi size
rdx element
*/
binarySearch:
    decq %rsi
    movq %rsi, %rcx
    movq %rdx, %rsi
    movq $0, %rdx
    call search
    ret
