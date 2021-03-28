.intel_syntax noprefix
.data
formatstr:
    .asciz "%d\n"

n: .int 42


.text
.global main
main:
    mov eax,n
    /*if(eax==42){eax+=1}else{eax+=2}*/
    cmp eax,42
    jne hamis
    add eax,1
    jmp vege

hamis:
    add eax,2

vege:
    push eax
    push offset formatstr
    call printf
    add esp,2*4
    mov eax,0
    ret
