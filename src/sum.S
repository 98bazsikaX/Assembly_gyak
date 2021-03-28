.intel_syntax noprefix

.data
    formatstr:
        .asciz "sum i=0 .. %d : i = %d\n"

    n:
        .int 100
    
.text
.global main
main:
    mov eax,5050 #replace!


    push eax
    push dword ptr n
    push offset formatstr
    call printf
    add esp,3*4

    mov eax,0
    ret

