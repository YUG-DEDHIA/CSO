.global prime
.text

prime:
   movq %rdi, %r11 #n
   movq %rsi, %r12 #m
   movq $0, %r13 #sum
   subq $1, %r11
   jmp .l1
.l1:
    cmpq $1, %r11
    jg .l2
    jmp .retlp
.l2:
    movq $2, %r10 #i
    movq $0, %r9 #check 
    jmp .l3 
.l3:
    cmp %r10, %r11
    jg .l4
    jmp .l5
.l4:
    movq %r11, %rax
    cqto
    idivq %r10
    cmpq $0, %rdx
    je .l6
    jmp .l7
.l5:
    cmpq $0, %r9
    je .l8
    jmp .l9
.l6:
    movq $1, %r9
    jmp .l5
.l7:
    addq $1, %r10
    jmp .l3
.l8:
    addq %r11, %r13
    movq %r13, %rax
    cqto
    idivq %r12
    movq %rdx, %r13
    jmp .l9
.l9:
    subq $1, %r11
    jmp .l1
.retlp:
    movq %r13, %rax
    ret


