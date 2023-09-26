        .intel_syntax noprefix
        .global main, n, f
        .data
n:      .4byte  6
        .comm   f,4
        .text
main:   mov     DWORD PTR [f], 1
        jmp     felt
torzs:  mov     eax, DWORD PTR [f] #f = f * n
        mov     ebx, DWORD PTR [n]
        imul    eax, ebx
        mov     DWORD PTR [f], eax #eddig
        mov     ebx, DWORD PTR [n]
        sub     ebx, 1
        mov     DWORD PTR [n], ebx
felt:   mov     ebx, DWORD PTR [n]
        cmp     ebx, 1
        jg      torzs
        mov     eax, DWORD PTR [f]
        ret
