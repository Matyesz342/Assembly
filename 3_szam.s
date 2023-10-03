.intel_syntax noprefix
        .globl     main, a, b, c
        .data
a:      .4byte     5
b:      .4byte     3
c:      .4byte     4
        .text
main:   mov        eax, DWORD PTR [a]
        mov        ebx, DWORD PTR [b]
        mov        ecx, DWORD PTR [c]
        cmp         eax, ebx #if(a<b)
        jg          ELSE       #else
        cmp         ecx, ebx #c<b
        jl          ELSEB #return b
        cmp         ebx, ecx #b<c
        jl          ELSEC #return c
ELSE:   cmp         eax, ecx #a<c
        jl          ELSEC #return c
        cmp         ecx, eax
        jl          ELSEA #return a
ELSEA:  mov         eax,DWORD PTR [a]
        jmp         END
ELSEB:  mov         eax,DWORD PTR [b]
        jmp         END
ELSEC:  mov         eax,DWORD PTR [c]
        jmp         END
END:    ret
