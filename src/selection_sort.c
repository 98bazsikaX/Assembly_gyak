#include <stdio.h>
/*
nem megy wtf, orai munka miatt pusholtam
*/
int hossz(unsigned* tomb){
    int i = 0;
    while(*(tomb+i)!=0){
        ++i;
    }
    return i;
}

void kiirat(unsigned* tomb){
    printf("A tomb: ");
    int i=0;
    while(*(tomb+i)!=0){
        printf("%d ",*(tomb+i));
        ++i;
    }
    printf("\n-----------\n");
}

void csere(unsigned* eredeti,unsigned* min){
    unsigned temp = *eredeti;
    *eredeti = *min;
    *eredeti = temp;
}

void rendez(unsigned* tomb,int l){
    unsigned min;
    for(int i = 0;i<l-1;++i){
        min = i;
        for(int j = i+1;j<l;++j){
            if(tomb[j]<tomb[min]){
                min=j;
            }
        }
        csere(&tomb[i],&tomb[min]);
    }
}


int main(){
/*
Feltetelezzuk azt hogy ismeretlen a tomb hossza, viszont a tomb elemei csak 0-nal nagyobb egesz szamok lehetnek, es a tomb utolso elem egy nulla
ezert:
*/

unsigned arr[20] = {3,2,45,6,32,42,420,0}; /*Most stacken legyen az array, es fix meretus*/

kiirat(arr);
printf(" Hossza: %d \n",hossz(arr));
rendez(arr,hossz(arr));
printf("Rendezes utan: \n");
csere(&arr[2],&arr[0]);
kiirat(arr);

 return 0;   
}