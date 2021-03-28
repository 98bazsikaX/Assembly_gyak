.intel_syntax noprefix

.data
formatstr:
    .asciz "%d \n"

min_val:
    .int 0

max_val:
    .int 0x100 /*decimalisan 255*/

.text
.global main
main:

    push ebp
    mov ebp,esp
    /*prologus vege*/

    mov ebx,min_val /*Azert ecx mivel a printf bezavar az ecx-be mondjuk :)*/

loop:

    push ebx
    push offset formatstr
    call printf
    pop eax
    pop eax



    inc ebx
    cmp ebx,max_val /*Osszehasonlitani a max ertekkel, ami itt 256*/
    jb loop /*unsigned < osszehasonlito, ha kisebb akkor visszaugrik a loop cimkere, ha nem akkor folytatja tovabb a vegrehajtast*/

end_sec: /*Ez amugy redundas, de jelzes keppen benne hagytam*/
    mov eax,0
    mov esp,ebp
    pop ebp
    ret
