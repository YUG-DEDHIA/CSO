.global func
.text
movq $0, %rax                           # rax = 0

func:
        pushq   %rbp                    # push rbp
        movq    %rsp, %rbp              # rbp = rsp
        pushq   %rbx                    # push rbx
        subq    $24, %rsp               # moving stack pointer by 24 bytes
        movl    %edi, -20(%rbp)         # mov edi to -20(rbp)
        movl    %esi, -24(%rbp)         # mov esi to -24(rbp)
        movl    -24(%rbp), %eax         # mov -24(rbp) to eax
        cmpl    -20(%rbp), %eax         # compare -20(rbp) to eax
        jg      .L2                     # if eax > -20(rbp) goto .L2
        movl    -24(%rbp), %eax         # mov -24(rbp) to eax
        negl    %eax                    # replace eax by its 2's complement
        cmpl    %eax, -20(%rbp)         # compare eax to -20(rbp)
        jge     .L3                     # if eax >= -20(rbp) goto .L3
.L2:
        movl    $0, %eax                # eax=0 then jump to L4
        jmp     .L4
.L3:
        cmpl    $1, -20(%rbp)           
        jne     .L5                     # if -20(rbp)!=1 jump to L5
        cmpl    $0, -24(%rbp)           
        jne     .L6                     # if -24(rpb)!=0 jump to L6
        movl    $2, %eax
        jmp     .L4                     # jump to L4
.L6:
        movl    $1, %eax
        jmp     .L4
.L5:
        movl    -20(%rbp), %eax
        leal    -1(%rax), %edx
        movl    -24(%rbp), %eax
        movl    %eax, %esi
        movl    %edx, %edi
        call    func                    # recursion to func
        leal    (%rax,%rax), %ebx
        movl    -24(%rbp), %eax
        leal    1(%rax), %edx
        movl    -20(%rbp), %eax
        subl    $1, %eax
        movl    %edx, %esi
        movl    %eax, %edi
        call    func                    # recursion to func
        addl    %eax, %ebx
        movl    -24(%rbp), %eax
        leal    -1(%rax), %edx
        movl    -20(%rbp), %eax
        subl    $1, %eax
        movl    %edx, %esi
        movl    %eax, %edi
        call    func                    # recursion to func
        addl    %ebx, %eax
.L4:
        movq    -8(%rbp), %rbx
        leave
        ret