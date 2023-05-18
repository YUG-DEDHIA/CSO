.global division,remain
.text
movq $0, %rax
.division:
    cmp %rdi, %rsi
    jle .L1
    jmp .remain
    ret

.L1:
    sub %rsi, %rdi
    inc %rax
    ret
    
.remain:
    movq %rdi, %rax
    ret
