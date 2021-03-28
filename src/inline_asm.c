#include <stdio.h>

int add(unsigned int first,unsigned int second){
    int retval;
    asm(
        "xor retval,retval;"/*retval nullazasa*/
        "mov edx,retval;"
       " add edx,first;"
       " add edx,second;"
        "mov retval,edx;"
    );

    return retval;
}


int main(){


    return 0;
}