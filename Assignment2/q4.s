.global assemblycode
.text
assemblycode:
<+0>: push ebp
<+1>: mov ebp,esp
<+3>: sub esp,0x10
<+6>: mov eax,DWORD PTR [ebp+0xc]       # eax = 0x15
<+9>: mov DWORD PTR [ebp-0x4],eax       # [ebp-0x4] = 0x15
<+12>: mov eax,DWORD PTR [ebp+0x8]      # eax = 0xc
<+15>: mov DWORD PTR [ebp-0x8],eax      # [ebp-0x8] = 0xc
<+18>: jmp 0x50c <asm2+31>              # jump to 0x50c
<+20>: add DWORD PTR [ebp-0x4],0x1      # [ebp-0x4]++ = 0x16
<+24>: add DWORD PTR [ebp-0x8],0xaf     # [ebp-0x8] + 0xaf = 0xbb
<+31>: cmp DWORD PTR [ebp-0x8],0xa3d3   # comparing [ebp-0x8] with 0xa3d3
<+38>: jle 0x501 <asm2+20>              # Jump is taken (since 0xbb < 0xa3d3)
<+40>: mov eax,DWORD PTR [ebp-0x4]      # run the loop till [ebp - 0x8] > 0xa3d3
<+43>: leave
<+44>: ret