.intel_syntax noprefix

/*
int demo(int a,int b){
return a+b;
}
*/



/*.data
    formatstr:
        .asciz "Az osszeadas erteke: %d\n"*/


.text
.global demo
demo:
    push ebp
    mov ebp, esp
    push ebx /*mivel az ebx a konvencio szerint olyan register amit menteni kell, az ecx-et nem kell*/

    mov ebx,[ebp+8] /*ebx :=a*/
    mov ecx,[ebp+12] /*ecx :=b*/
    mov eax,ebx
    add eax,ecx

    pop ebx
    mov esp,ebp
    pop ebp
    ret


/*.global main
main:
    push ebp
    mov ebp,esp

    push 42
    push 8

    call demo

    push eax
    push offset formatstr
    call printf




    mov eax,0
    mov esp,ebp
    pop ebp
    ret
    */
