/*
char a = 'a';
for(int i = 0;a<'z';++i){
    printf("%c",a);
    ++a;
}
*/

.intel_syntax noprefix

.data
    formatstr:
        .asciz "%c\n"
    character:
        .ascii "a"
    
.text
.global main
main:
    push ebp
    mov ebp,esp
    /*fgv prologus*/
    xor ebx,ebx /*ebx nullazasa*/
    mov ebx,character /*a karakter cimke erteket az ebx regiszterbe masoljuk*/


loop:
    push ebx /*a stack tetejere helyezzuk az ebx erteket*/
    push offset formatstr /*a stack tetejere helyezzuk a formatum sztringunket*/
    call printf /*meghivjuk a printf-et*/
    pop eax
    pop eax

    inc ebx /*inkrementaljuk az ebx-et amiben a karakterek vannak*/
    cmp ebx,123 /*a '{' karakterhez viszonyítjuk az ebx értékét, ami a 'z' után következő karakter ascii kódolásban*/
    jb loop /*ha kisebb akkor visszaugrunk a loopra*/
    /*fgv végének kezdete*/
    mov eax,0
    mov esp,ebp
    pop ebp
    ret
