#Faktoriális
        .intel_syntax noprefix
        .globl     main
        .globl     a,i,count
        .data
a:      .4byte     5                     # "a" is an initialized global variable of size 4bytes
count:  .4byte     0
        .comm      i,4                    # "i" is an uninitialized global variable of size 4bytes
        .text

main:   main:   mov        DWORD PTR [i], 0        
        jmp        cond                   # unconditional jump to the given label
body:   mov        eax, DWORD PTR [a]     # labeled instruction
        dec        eax                    # decrement eax by 1
        mov        DWORD PTR [a], eax
        mov        eax, DWORD PTR [i]
        inc        eax                    # increment eax by 1
        mov        DWORD PTR [i], eax
cond:   mov        eax, DWORD PTR [i]
        cmp        eax, 10
        jne        body                   # conditional jump: if not equal jump to the given label, else go on 
                                          # further possibilities: je, jne, jg, jge, jl, jle, ja, jae, jb, jbe (jz, jnz, jc, jnc, jo, jno, jn, jnn, jp, jnp)
        mov        eax, DWORD PTR [a]
        ret 