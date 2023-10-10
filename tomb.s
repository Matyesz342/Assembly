.intel_syntax noprefix
        .globl      main, F, i
        .data
        .comm       F,52
        #.comm       i,4
        .text
main:   mov         DWORD PTR [F], 0 #F[0] = 0
        mov         DWORD PTR [F+4], 1 #F+4 = F[1]
        mov         edx, 2 # i = 2
        jmp         cond
body:   sub         edx, 1              
        mov         ebx, DWORD PTR [F+edx*4]
        sub         edx, 1              #eax = eax -2
        mov         ecx, DWORD PTR [F+edx*4]
        add         ebx, ecx
        add         edx, 2
        mov         DWORD PTR[F+edx*4], ebx
        inc         edx
cond:   cmp         edx, 13
        jl          body
        mov         eax, DWORD PTR [F+48]
        ret
