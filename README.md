# Assembly gyakorló kódok

A repo-t főleg amiatt hoztam létre hogy a barátaimnak megtudjam mutatni azokat a kódokat amikkel gyakorlom az Assembly tárgyat

## [Soronkénti karakterek](./src/char_by_line.s)
Az első komolyabb assembly kódom, a .data section szoveg cimkéjű szöveget írja ki soronként

[ C kód megfelelője:](./src/char_by_line.c)
```C
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
```
### Fordítás:
```bash
gcc -m32 -o [output] [input.s]
```
A C kódok pedig
```bash
gcc -Wall -o [output] [input.c]
```

## [Számláló](./src/counter.s)
Egy egyszerű program ami elszámol 255-ig és azt kiírja stdout-ra

[C-ben lévő megfelelője:](./src/counter.c)
```c
#include <stdio.h>

int main(){
    unsigned short int i = 0;
    
    while(i!=256){
        printf("%d\n",i);
        ++i;
    }

    return 0;
}

```
### Fordítás:
```bash
gcc -m32 -o [output] [input.s]
```
A C kódok pedig
```bash
gcc -Wall -o [output] [input.c]
```
## [Az angol abc kisbetűi](./src/every_lower_case.s)
A program kiírja az angol abc kisbetűit

A C-kód megfelelője az assembly forrásfájl elején található meg
```C
char a = 'a';
for(int i = 0;a<'z';++i){
    printf("%c",a);
    ++a;
}
```
### Fordítás:
```bash
gcc -m32 -o [output] [input.s]
```
A C kódok pedig
```bash
gcc -Wall -o [output] [input.c]
```