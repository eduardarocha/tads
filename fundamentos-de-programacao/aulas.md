# C++
## Aula 01
### Preprocessadores

`#include <stdio.h>` : Biblioteca input/output.

`#include <windows.h>` : Biblioteca com declarações para todas as funções na API do Windows.
* `system("pause");` : Pausar programa.

### Subprograma/função principal

``` c++
int main(void) {
	// Instruções...
	return 0;
}
```
`int` : Exige, no final do código, `return 0;`.

`void` : Representa um valor padrão ou não existente para parâmentros.

**Especificador de formato:**

`"%d", &var` : Inteiro.

`"%f", &var` : Float.
* `"%.2f", &var` : Algarismos antes da vírgula (decimais).

`"%c", &var` : Caracter.

`&var` : Permite o endereçamento na memória.

**Em arquivo main.py:**

```c++
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


## Aula 02
