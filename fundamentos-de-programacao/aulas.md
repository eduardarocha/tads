# C++
## Preprocessadores
`# include <stdio.h>` : Biblioteca input/output.

`# include <string.h>` : Biblioteca de manipulação string (caracter[n], sendo n  > 1).

`# include <windows.h>` : Biblioteca com declarações para todas as funções na API do Windows.
* `system("pause");` : Pausar programa.
* `system("cls");` : Limpar tela.


## Subprograma/função principal
``` c++
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

**Usando o tipo de variável int:**
``` c++
#include <stdio.h>

int main(void) {
	int n1, n2, n3, soma;
	printf("n1: "); scanf("%d", &n1);
	printf("n2: "); scanf("%d", &n2);
	printf("n3: "); scanf("%d", &n3);

	soma = n1 + n2;
	printf("Soma = %d", soma);
}
```

**Usando o tipo de variável char em matrizes:**
``` c++
#include <stdio.h>

int main(void) {
    char *matriz[3][3];
    for (int i = 0; i <= 2; i++) {
        for (int j = 0; j<= 2; j++) {
            printf("(i%d, j%d): ", i, j); scanf("%s", &matriz[i][j]);
        }
    }
    for (int i = 0; i <= 2; i++) {
        for (int j = 0; j<= 2; j++) {
            printf("%s ", &matriz[i][j]);
        }
    }
}
```

**Usando a biblioteca string.h:**
``` c++
#include <stdio.h>
#include <string.h>

int main(void) {
    char conceito[10] = "";
    printf("Caracteres: "); scanf("%s", &conceito);
    printf("\nResposta: %s", conceito);
}
```


## Funções
Declaração do protótipo de uma função ocorre, de forma simplificada, quando a função está definida depois da função principal `int main(void) {`.
``` c++
int int calc_idade(int nasc, int ano);
```
Definição de uma função simples utilizando "**void**" como tipo de retorno e parâmetros: `hello();`.
``` c++
void hello(void) {
	printf("Olá, mundo!");
}
```
Definição de uma função que utiliza "**void**" como tipo de retorno e um parâmetro do tipo "**char**": `hello("Olá, mundo!");`.
``` c++
void hello(char n[15]) {
	printf("%s", &n);
}
```
Definição de uma função com retorno e parâmetros: `calc_idade(2004, 2022);`.
``` c++
int calc_idade(int nasc, int ano) {
	int idade;
	idade = ano - nasc;
return idade; }
```


## Ponteiro
### Passagem por valor
Copiar o conteúdo da variável x para a: a = x.

`fun(x); [...] int fun(int a) {...}`

### Passagem por referêcia
Copia o endereço de memória de variável x para a variável ponteiro a: a = &x.

`fun(&x) [...] int fun(int *a) {...}`


## Classes de armazenamento
* Modificador `auto`: definido por padrão.
* Modificador `register`: Tentativa de uso de uma determinda variável diretamente em registrador do CPU.
* Modificador `extern`: Compartilhar uma variável entre arquivos.
* Modificador `static`: Não elimina o conteudo de uma variável, preservando o conteúdo para a próxima chamada da função.
* Modificator `const`: Bloqueia o valor de uma variável.


## Vetor
### Declaração
`int var[n];`
* n : Número de posições.

### Atribuição
`var[i] = v;`
* i : Posição na memória.
* v : Valor.


## Matriz
### Declaração
`int var[n][m];`
* n : Número de posições de linhas.
* m : Número de posições de colunas.

### Atribuição
`var[i][j] = v;`
* i : Posição da linha na memória.
* j : Posição da coluna na memória.
* v : Valor.