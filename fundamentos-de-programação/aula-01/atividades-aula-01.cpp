/*
1. Faça um programa que leia o ano atual e o ano de nascimento de uma pessoa, calcule e mostre a sua idade.

#include <stdio.h>
int main(void) {
	int anoAtual, anoNasc, idade;
	printf("Ano atual: "); scanf("%d", &anoAtual);
	printf("Ano de nascimento: "); scanf("%d", &anoNasc);
	idade = anoAtual - anoNasc;
	printf("Idade: %d", idade);
	return 0;
}
*/

/*
2. Faça um programa que leia o valor da cotação do dolar atual e um valor em reais, calcule e mostre a quantidade de dolares que só é possível ser comparada com o valor lido. (float)
*/

#include <stdio.h>
int main(void) {
	float dolar, reais, total;
	printf("Dolar atual: "); scanf("%f", &dolar);
	printf("Valor em Reais: "); scanf("%f", &reais);
	total = dolar * reais;
	printf("Total: %.2f", total); // %.2f : Algarismos antes da vírgula (decimais).
}
