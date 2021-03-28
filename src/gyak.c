#include <stdio.h>



int main(){
char* asd = "Hello World";

    int i = 0;
    while(*(asd+i)!=0){
        printf("%c\n",*(asd+i));
        ++i;
    }

    return 0;
}