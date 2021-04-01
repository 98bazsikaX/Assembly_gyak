.intel_syntax noprefix

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

