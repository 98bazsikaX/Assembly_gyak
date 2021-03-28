/*
Forditas:


*/

.intel_syntax noprefix
.data
formatstr:
    .asciz "char ==  %c \r\n"
szoveg:
    .asciz "Hello World!\r\n"
test_valami:
    .asciz "szam: %x \r\n"

.text
.global main
main:
    push ebp
    mov ebp,esp
    /*</prologus vagy mi>*/
    mov ebx,0 /*Ez legyen az h hanyadik karakter, a*/
    mov dl, szoveg[0][0]/*A dl regisztert hasznalom, mivel nyolc bites kellene es az a data regiszter, meg a dh-t nem ette meg*/

asd:
    /*karakter kiiratasa*/
    push edx
    push offset formatstr
    call printf
    pop eax
    pop eax
    /*</karakter kiiratasa>*/
    cmp szoveg[0][ebx], 0 /*emiatt lett dl, mert edx-nel nem az elso sztringnel volt az egesz erteke 0, full bullshit az egesz*/
    jne asd /*jne = jump not equal, ha nem egyenlo az ertek akkor asd-ra megyunk, ha jump equal akkor a vege-re futunk, de amugy az redundans*/
    je vege

vege:
    mov eax,0
    mov esp,ebp
    pop ebp
    ret
