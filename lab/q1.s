.global function

exp:
    cmp $0, %rsi
    jne .main_part
    movq $1, %rax
    ret

.main_part:
    decq %rsi
    call exp
    imul %rdi, %rax
    ret

# M in rdi, N in rsi, S in rdx
function:
    cmpq $1, %rdx
    je ._add

    cmpq $2, %rdx
    je ._sub

    cmpq $3, %rdx
    je ._div

    cmpq $4, %rdx
    je ._exp

    cmpq $5, %rdx
    je ._mod

._add:
    movq %rdi, %rax
    addq %rsi, %rax
    ret

._sub:
    movq %rdi, %rax
    subq %rsi, %rax
    ret

._div:
    movq $0, %rdx
    movq %rdi, %rax
    idivq %rsi
    ret

._mod:
    movq $0, %rdx
    movq %rdi, %rax
    idivq %rsi
    movq %rdx, %rax
    ret

._exp:
    call exp
    ret
