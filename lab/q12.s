.global _sum
.text

.ret1:
    movq $1, %rax
    jmp .take_mod

.take_mod:
    movq $0, %rdx
    idiv %rsi
    movq %rdx, %rax
    ret

# N in rdi and K in rsi
_sum:
    cmpq $1, %rdi
    je .ret1
    decq %rdi
    call _sum
    incq %rdi
    addq %rdi, %rax
    jmp .take_mod
