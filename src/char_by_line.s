/*
Forditas:


*/

.intel_syntax noprefix
.data
formatstr:
    .asciz "char ==  %c \r\n" /*TODO:megcsinalni*/
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

    mov ebx,0 /*Ez legyen az h hanyadik karakter*/

asd:
    /*karakter kiiratasa*/
    push szoveg[0][1*ebx] /*stackra baszatjuk a szoveg 1*ebx erteket*/
    push offset formatstr /*kicsapjuk a stacknek a formatstringunket*/
    call printf /*meghivjuk a csodas printf-et*/
    pop eax /*ja*/
    pop eax /*ja*/
    /*</karakter kiiratasa>*/
    inc ebx /*ebx novelese (i++ kb)*/
    mov dh,0x0000 /*DH nullazasa*/
    mov dh, szoveg[0][1*ebx] /*dh(8bit) betesszuk a 8bites karaktert*/
    cmp dh, 0x1f /*osszehasonlitju a legnagyobb kontroll karakterrel, ami nem a DEL mert az dec 127*/
    ja asd /*ja = unsigned dh>0x1f, ha dh nagyobb akkor az asd-ra megyunk,ha nem akkor a vege cimkere, de az redundans*/
    jb vege /*ha kisebb 0-nal a dh-0x1f akkor  kontroll karakterhez erunk es ekkor ugrik a vegrehajtas a vege cimkere*/

vege:
    mov eax,0
    mov esp,ebp
    pop ebp
    ret
