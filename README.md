# Assembly gyakorló kódok

A repo-t főleg amiatt hoztam létre hogy a barátaimnak megtudjam mutatni azokat a kódokat amikkel gyakorlom az Assembly tárgyat

## [Soronkénti karakterek](./src/char_by_line.s)
Az első komolyabb assembly kódom, a .data section szoveg cimkéjű szöveget írja ki soronként

TODO: nem teljesen működik

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
Az eddigi összes assembly file úgy fordítható hogy
```bash
gcc -m32 -o [output] [input.s]
```

A C kódok pedig
```bash
gcc -Wall -o [output] [input.c]
```