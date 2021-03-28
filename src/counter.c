#include <stdio.h>

int main(){
    unsigned short int i = 0; //2 byte :(, de jó az
    
    while(i!=256){
        printf("%d\n",i);
        ++i;
    }

    return 0;
}