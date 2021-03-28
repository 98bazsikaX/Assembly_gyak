#include <stdio.h>



int main(){
    unsigned short int i = 0; //2 bits long :( , char would cause bugs
    
    while(i!=256){
        printf("%d\n",i);
        ++i;
    }

    return 0;
}