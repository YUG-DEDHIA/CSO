.global gcd

.gcd:
    mov %rax, %rdi
    mov %rdi, %rsi
    mov %rsi, %rax
    xor %rax, %rax
    div %rsi
    mov %rdi, %rax
    mov %rax, %rdi
    ret