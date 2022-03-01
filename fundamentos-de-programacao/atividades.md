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
**01.** Fazer um programa em C que pergunta um valor em metros e imprime o
correspondente em decímetros, centímetros e milímetros.
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
    float metro, decimetro, centimetro, milimetro;
    printf("Metros: "); scanf("%f", &metro);
    decimetro = metro * 10;
    centimetro = metro * 100;
    milimetro = metro * 1000;
    printf("Decimetros: %.2f\nCentimetros: %.2f\nMilimetros: %.2f", decimetro, centimetro, milimetro);
    return 0;
}
```

**02.** Fazer um programa em "C" que pergunte um valor em graus Fahrenheit e imprime no
vídeo o correspondente em graus Celsius usando a fórmula a seguir:
C=(F - 32.0) / (9.0/5.0).
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
	float fahrenheit, celsius;
	printf("Fahrenheit: "); scanf("%f", &fahrenheit);
	celsius = (fahrenheit - 32.0) / (9.0 / 5.0);
	printf("Celsius: %.2f", celsius);
}
```

**03.** Faça um programa que calcule e apresente em metros por segundo o valor da
velocidade de um projétil que percorre uma determinada distância em quilômetros a um
determinado espaço de tempo em minutos.
Utilize a fórmula: VELOCIDADE ← (DISTÂNCIA * 1000) / (TEMPO * 60).
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
	float distancia, tempo, velocidade;
	printf("Distancia (km): "); scanf("%f", &distancia);
	printf("Espaco de tempo (min): "); scanf("%f", &tempo);
	velocidade = (distancia * 1000) / (tempo * 60);
	printf("Velocidade (ms): %.2f", velocidade);
}
```

**04.** Faça um programa para calcular e mostrar o valor do lucro ou prejuízo na compra e
venda de ações. O programa deverá ler o preço de compra da ação, o preço de venda e a
quantidade de ações. Além disso deverá deduzir do resultado o valor da corretagem e dos
emolumentos. O valor da corretagem é $ 12.00 por operação de compra ou venda. Os
emolumentos que são 2% do valor da operação sem considerar os emolumentos.
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
	float compra, venda, quantidade, total, corretagem = 12.0, emolumentos = 0.02;
    printf("Compra: R$ "); scanf("%f", &compra);
    printf("Venda: R$ "); scanf("%f", &venda);
    printf("Quantidade: "); scanf("%f", &quantidade);
    compra = compra * quantidade; compra -= compra * emolumentos;
    venda = venda * quantidade; venda -= venda * emolumentos;
    total = (venda - compra) - (corretagem * 2);
	printf("Total: R$ %.2f", total);
}
```
