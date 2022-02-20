## Aula 01
**01.** Faça um programa que leia o ano atual e o ano de nascimento de uma pessoa, calcule e mostre a sua idade.
``` c++
#include <stdio.h>
int main(void) {
	int anoAtual, anoNasc, idade;
	printf("Ano atual: "); scanf("%d", &anoAtual);
	printf("Ano de nascimento: "); scanf("%d", &anoNasc);
	idade = anoAtual - anoNasc;
	printf("Idade: %d", idade);
	return 0;
}
```

**02.** Faça um programa que leia o valor da cotação do dolar atual e um valor em reais, calcule e mostre a quantidade de dolares que só é possível ser comparada com o valor lido. (float)
``` c++
#include <stdio.h>
int main(void) {
	float dolar, reais, total;
	printf("Dolar atual: R$"); scanf("%f", &dolar);
	printf("Reais: R$"); scanf("%f", &reais);
	total = reais / dolar;
	printf("Total em dolar: R$%.2f", total);
}
```


## Aula 02
