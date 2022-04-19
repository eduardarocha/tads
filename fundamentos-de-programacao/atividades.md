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
	return 0;
}
```


## Aula 02
**01.** Fazer um programa em C que pergunta um valor em metros e imprime o correspondente em decímetros, centímetros e milímetros.
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

**02.** Fazer um programa em "C" que pergunte um valor em graus Fahrenheit e imprime no vídeo o correspondente em graus Celsius usando a fórmula a seguir:
C=(F - 32.0) / (9.0/5.0).
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
	float fahrenheit, celsius;
	printf("Fahrenheit: "); scanf("%f", &fahrenheit);
	celsius = (fahrenheit - 32.0) / (9.0 / 5.0);
	printf("Celsius: %.2f", celsius);
	return 0;
}
```

**03.** Faça um programa que calcule e apresente em metros por segundo o valor da velocidade de um projétil que percorre uma determinada distância em quilômetros a um determinado espaço de tempo em minutos. Utilize a fórmula: VELOCIDADE ← (DISTÂNCIA * 1000) / (TEMPO * 60).
``` c++
# include <stdio.h>
# include <math.h>
int main(void) {
	float distancia, tempo, velocidade;
	printf("Distancia (km): "); scanf("%f", &distancia);
	printf("Espaco de tempo (min): "); scanf("%f", &tempo);
	velocidade = (distancia * 1000) / (tempo * 60);
	printf("Velocidade (ms): %.2f", velocidade);
	return 0;
}
```

**04.** Faça um programa para calcular e mostrar o valor do lucro ou prejuízo na compra e venda de ações. O programa deverá ler o preço de compra da ação, o preço de venda e a quantidade de ações. Além disso deverá deduzir do resultado o valor da corretagem e dos emolumentos. O valor da corretagem é $ 12.00 por operação de compra ou venda. Os emolumentos que são 2% do valor da operação sem considerar os emolumentos.
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
	return 0;
}
```


## Aula 04/04
**01.** Implemente um programa que recebe a nota de um aluno e retorna o valor da sua bolsa-auxílio conforme a tabela abaixo:

7 ≤ nota < 80 : R$ 500,00

8 ≤ nota < 90 : R$ 700,00

nota ≥ 9 : R$ 900,00

nota < 7 : R$ 0,00 (sem bolsa)
``` c++
# include <stdio.h>
int main(void) {
    int nota;
    printf("Nota: "); scanf("%d", &nota);
    
    if (nota >= 90) {
        printf("Bolsa: R$ 900,0");
    } else {
        if (nota >= 80 and nota < 90) {
            printf("Bolsa: R$ 700,0");
        } else {
            if (nota >= 70 and nota < 80) {
                printf("Bolsa: R$ 500,0");
            } else {
                printf("Sem bolsa.");
            }
        }
    }
    return 0;
}
```

**02.** Uma empresa resolveu dar um aumento de salário aos seus empregados e lhe contrataram para desenvolver um programa para calcular os reajustes. Faça um programa que recebe o salário de um colaborador e o calcule reajuste baseado no salário atual:
* faixa de salário até R$ 1200,00 (incluindo) : aumento de 20%
* faixa de salário entre R$ 1200,01 e R$ 1700,00 : aumento de 15%
* faixa de salário entre R$ 1700,01 e R$ 2500,00 : aumento de 10%
* faixa de salário de R$ 2500,01 em diante : aumento de 5%

Após o aumento ser realizado, informe:
* o salário antes do reajuste;
* o valor do aumento;
* o novo salário, após o aumento.
``` c++
# include <stdio.h>
int main(void) {
    float salarioAtual, aumento;
    int reajuste;
    printf("Salário atual: R$ "); scanf("%f", &salarioAtual);
    
    if (salarioAtual > 0 and salarioAtual <= 1200) {
        reajuste = 20;
    } else {
        if (salarioAtual > 1200 and salarioAtual <= 1700) {
            reajuste = 15;
        } else {
            if (salarioAtual > 1700 and salarioAtual <= 2500) {
                reajuste = 10;
            } else {
                reajuste = 5;
            }
        }
    }
    aumento = salarioAtual * (float(reajuste) / 100);
    salarioAtual += aumento;
    printf("Salário com reajuste de %d%: R$ %.2f\nValor do aumento: R$ %.2f\n", reajuste, salarioAtual, aumento);
    return 0;
}
```

**03.** Um ciclone tropical consiste em uma tempestade muito violenta que, sob determinadas condições, adquire um movimento de rotação em torno de uma região de baixa pressão atmosférica. Um ciclone pode atingir um diâmetro de até 500 km. Furacões são os mais violentos desses ciclones e chegam a produzir ventos de até 320 km/h. Na tabela abaixo, são apresentados alguns dados relativos à classificação dos furacões segundo a escala Saffir-Simpson:
* tempestade tropical 62 a 118 km/h
* furacão de categoria 1 119 a 153 km/h
* furacão de categoria 2 154 a 177 km/h
* furacão de categoria 3 178 a 209 km/h
* furacão de categoria 4 210 a 249 km/h
* furacão de categoria 5 maior que 249 km/h
``` c++
# include <stdio.h>
int main(void) {
    float velocidade;
    printf("Velocidade dos ventos (km/h): "); scanf("%f", &velocidade);

    if (velocidade >= 62 and velocidade <= 119) {
        printf("Tempestade tropical");
    } else {
        if (velocidade > 119 and velocidade <= 154) {
            printf("Furacão de categoria 1");
        } else {
            if (velocidade > 154 and velocidade <= 178) {
                printf("Furacão de categoria 2");
            } else {
                if (velocidade > 178 and velocidade <= 210) {
                    printf("Furacão de categoria 3");
                } else {
                    if (velocidade > 210 and velocidade <= 250) {
                        printf("Furacão de categoria 4");
                    } else {
                        printf("Furacão de categoria 5");
                    }
                }
            }
        }
    }
    return 0;
}
```

**04.** Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre, e calcule a sua média. A atribuição de conceitos obedece à tabela abaixo:
* Entre 9.0 e 10.0 = A
* Entre 7.5 e 9.0 = B
* Entre 6.0 e 7.5 = C
* Entre 4.0 e 6.0 = D
* Entre 4.0 e zero = E

O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO” se o conceito for A, B ou C ou “REPROVADO” se o conceito for D ou E.
``` c++

```