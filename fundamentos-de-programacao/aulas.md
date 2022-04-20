# C
### Preprocessadores

`# include <stdio.h>` : Biblioteca input/output.

`# include <string.h>` : Biblioteca de manipulação string (caracter[n], sendo n  > 1).

`# include <windows.h>` : Biblioteca com declarações para todas as funções na API do Windows.
* `system("pause");` : Pausar programa.

### Subprograma/função principal

``` c
int main(void) {
	// Instruções...
	return 0;
}
```
`int` : Exige, no final do código, `return 0;`.

`void` : Representa um valor padrão ou não existente para parâmentros.

**Especificador de formato:**

`&var` : Permite o endereçamento na memória.

`"%d", &var` : Inteiro.

`"%f", &var` : Float.
* `"%.2f", &var` : Algarismos antes da vírgula (decimais).

`"%c", &var` : Caracter.

`"%s", &var` : Caracter[n], sendo n > 1.

**Em arquivo teste.cpp, usando o tipo de variável int:**
``` c
#include <stdio.h>
int main(void) {
	int n1, n2, n3, soma;
	printf("n1: "); scanf("%d", &n1);
	printf("n2: "); scanf("%d", &n2);
	printf("n3: "); scanf("%d", &n3);
	soma = n1 + n2;
	printf("Soma = %d", soma);
	return 0;
}
```

**Em arquivo teste.cpp, usando o tipo de variável char:**
``` c
# include <stdio.h>
#include <string.h>
int main(void) {
    char conceito[10] = "";
    printf("Caracteres: "); scanf("%s", &conceito);
    printf("\nResposta: %s", conceito);
    return 0;
}
```