.global height
.text

height:
        pushq   %rbp                                    # stack base pointer
        movq    %rsp, %rbp                              # rsp=rbp
        pushq   %rbx                                    # save rbx
        subq    $72, %rsp                               # rsp=rsp-72(making space for saving)
        movq    %rdi, -56(%rbp)                         # rdi saved in rbp-56
        movq    %rsi, -64(%rbp)                         # rsi saved in rbp-64
        movl    %edx, -68(%rbp)                         # edx saved in rbp-68
        movq    %rsp, %rax              
        movq    %rax, %rsi
        movl    -68(%rbp), %eax                         # eax=edx
        movslq  %eax, %rdx
        subq    $1, %rdx                                # rdx=rdx-1
        movq    %rdx, -32(%rbp)                         # rdx saved in rbp-32
        movslq  %eax, %rdx              
        movq    %rdx, %r8
        movl    $0, %r9d
        movslq  %eax, %rdx
        movq    %rdx, %rcx
        movl    $0, %ebx
        cltq
        leaq    0(,%rax,4), %rdx
        movl    $16, %eax                               # eax=16
        subq    $1, %rax                                # rax=rax-1
        addq    %rdx, %rax
        movl    $16, %ebx                               # ebx=16
        movl    $0, %edx
        divq    %rbx
        imulq   $16, %rax, %rax                         # rax=rax*16
        subq    %rax, %rsp
        movq    %rsp, %rax
        addq    $3, %rax                                # rax=rax+3
        shrq    $2, %rax                
        salq    $2, %rax                
        movq    %rax, -40(%rbp)
        movl    $0, -20(%rbp)
        movl    $1, -24(%rbp)
        movq    -40(%rbp), %rax                         # writen for stack[top]=0
        movl    -20(%rbp), %edx
        movslq  %edx, %rdx
        movl    $0, (%rax,%rdx,4)
        movl    $1, -24(%rbp)  
        jmp     .L2
.L5:                                                    # output_array[stack[top]]=input_array[i]          
        movl    -24(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -56(%rbp), %rax
        leaq    (%rdx,%rax), %rcx
        movq    -40(%rbp), %rax
        movl    -20(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -64(%rbp), %rax
        addq    %rax, %rdx
        movl    (%rcx), %eax
        movl    %eax, (%rdx)
        subl    $1, -20(%rbp)
.L3:                                                    # loop while top>=0 and input_array[stack[top]]<input_array[i]
        cmpl    $0, -20(%rbp)
        js      .L4
        movq    -40(%rbp), %rax
        movl    -20(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -56(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %edx
        movl    -24(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rcx
        movq    -56(%rbp), %rax
        addq    %rcx, %rax
        movl    (%rax), %eax
        cmpl    %eax, %edx
        jl      .L5
.L4:                                                    # loop for stack[top]=i
        addl    $1, -20(%rbp)
        movq    -40(%rbp), %rax
        movl    -20(%rbp), %edx
        movslq  %edx, %rdx
        movl    -24(%rbp), %ecx
        movl    %ecx, (%rax,%rdx,4)
        addl    $1, -24(%rbp)                           # i++
.L2:                                                    # loop while i<n 
        movl    -24(%rbp), %eax
        cmpl    -68(%rbp), %eax
        jl      .L3                                     # loop while i<n and input_array[i]>input_array[stack[top]]
        jmp     .L7                                     # loop while i<n and input_array[i]<=input_array[stack[top]]
.L8:                                               
        movq    -40(%rbp), %rax
        movl    -20(%rbp), %edx
        movslq  %edx, %rdx
        movl    (%rax,%rdx,4), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    -64(%rbp), %rax
        addq    %rdx, %rax
        movl    $-1, (%rax)                             # output_array[stack[top]]=-1
        subl    $1, -20(%rbp)                           # top--
.L7:
        cmpl    $0, -20(%rbp)                           # loop while top>=0
        jns     .L8
        movq    %rsi, %rsp
        nop
        movq    -8(%rbp), %rbx
        leave
        ret