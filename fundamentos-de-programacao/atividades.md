# C
## Aula 01
**01.** Faça um programa que leia o ano atual e o ano de nascimento de uma pessoa, calcule e mostre a sua idade.
``` c
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
``` c
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
``` c
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
``` c
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
``` c
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
``` c
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


## Aula 03 (04/04)
**01.** Implemente um programa que recebe a nota de um aluno e retorna o valor da sua bolsa-auxílio conforme a tabela abaixo:
* 7 ≤ nota < 80 : R$ 500,00
* 8 ≤ nota < 90 : R$ 700,00
* nota ≥ 9 : R$ 900,00
* nota < 7 : R$ 0,00 (sem bolsa)
``` c
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
``` c
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
``` c
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
}
```

**04.** Faça um programa que lê as duas notas parciais obtidas por um aluno numa disciplina ao longo de um semestre, e calcule a sua média. A atribuição de conceitos obedece à tabela abaixo:
* Entre 9.0 e 10.0 = A
* Entre 7.5 e 9.0 = B
* Entre 6.0 e 7.5 = C
* Entre 4.0 e 6.0 = D
* Entre 4.0 e zero = E

O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO” se o conceito for A, B ou C ou “REPROVADO” se o conceito for D ou E.
``` c
# include <stdio.h>
int main(void) {
    float n1, n2, media;
    char conceito[1];
    printf("Nota 1: "); scanf("%f", &n1);
    printf("Nota 2: "); scanf("%f", &n2);
    media = (n1 + n2) / 2;

    if (media >= 0 and media < 4) {
        conceito[1] = 'E';
        printf("\nReprovado(a)");
    } else {
        if (media >= 4 and media < 6) {
            conceito[1] = 'D';
            printf("\nReprovado(a)");
        } else {
            if (media >= 6 and media < 7.5) {
                conceito[1] = 'C';
                printf("\nAprovado(a)");
            } else {
                if (media >= 7.5 and media < 9) {
                    conceito[1] = 'B';
                    printf("\nAprovado(a)");
                } else {
                    conceito[1] = 'A';
                    printf("\nAprovado(a)");
                }
            }
        }
    }
    printf("\nConceito: %c\nMedia: %.2f", conceito[1], media);
return 0; }
```


## Aula 04 (29/04)
**01.** Fala um programa que lê um número inteiro e acumule os valores digitados até que o número digitado seja menor que zero. Ao sair do ciclo de repetição mostrar os valores que foram acumulados.
``` c
# include <stdio.h>
int main(void) {
    int n, soma = 0;

    do {
        printf("\nn = "); scanf("%d", &n);
        if (n > 0) {
            soma += n;
        }
    } while (n > 0);
    printf("Soma: %d", soma);
return 0; }
```

**02.** Faça um programa que implemente um menu onde o usuário deverá ler opções através de uma variável inteira admitindo valores entre 1 e 5. Caso seja entrado um número diferente, o programa deverá solicitar que o usuário digite novamente o valor. 1 – Cadastrar, 2 – Consultar, 3 – Alterar, 4 – Excluir, 5 – Sair. Ao escolher uma das opções que não seja a sair, mostrar uma mensagem indicando a opção selecionada. Exemplo: “Você escolher a opção Cadastrar”.
``` c
# include <stdio.h>
int main(void) {
    int menu;
    bool i = true;
    
    do {
        printf("\n1 - Cadastrar\n2 - Consultar\n3 - Alterar\n4 - Excluir\n5 - Sair\n\nEscolha: "); scanf("%d", &menu);
        if (1 <= menu and menu <= 5) {
            if (menu == 5) {
                i = false;
                printf("\nSaindo...\n");
            } else {
                if (menu == 1) {
                    printf("\nVocê escolheu a opção Cadastrar.\n");
                } else if (menu == 2) {
                    printf("\nVocê escolheu a opção Consultar.\n");
                } else if (menu == 3) {
                    printf("\nVocê escolheu a opção Alterar.\n");
                } else {
                    printf("\nVocê escolheu a opção Excluir.\n");
                }
            }
        } else {
            printf("\nErro! Digite novamente.\n");
        }
    } while (i == true);
return 0; }
```

**03.** Faça um programa que, para um número indeterminado de pessoas: leia a idade de cada uma, sendo que a idade 0 (zero) indica o fim da leitura e não deve ser considerada. A seguir calcular e mostrar:
* o número de pessoas;
* a idade média do grupo;
* a menor idade e a maior idade.
``` c
# include <stdio.h>
int main(void) {
    int idade, pessoas = 0, soma = 0, menor, maior; float media;
    printf("Idade: "); scanf("%d", &idade);
    maior = idade; menor = idade;
    soma += idade; pessoas++;
    while (idade != 0) {
        printf("Idade: "); scanf("%d", &idade);
        if (idade != 0) {
            soma += idade; pessoas++;
            if (maior < idade) {maior = idade;}
            if (idade < menor) {menor = idade;}
        }
    }
    media = soma / pessoas;
    printf("\nTotal: %d\nMedia: %.2f\nMaior: %d\nMenor: %d", pessoas, media, maior, menor);
}
```

**04.** Faça um programa que receba dois números X e Y, sendo X < Y. Calcule e mostre:
* a soma dos números pares desse intervalo de números, incluindo os números digitados;
* a multiplicação dos números ímpares desse intervalo, incluindo os digitados.
``` c
# include <stdio.h>
int main(void) {
    int x, y, soma = 0, mult = 1;
    printf("X = "); scanf("%d", &x);
    printf("Y = "); scanf("%d", &y);
    if (x < y) {
        for (int i = x; i <= y; i++) {
            if (i % 2 == 0 && i != 1) {soma += i;} else {mult *= i;}
        }
        printf("[pares] Soma: %d\n[impares] Multiplicacao: %d", soma, mult);
    } else {
        printf("\nX deve ser menor que Y.");
    }
}
```


## Aula 05 (20/05)
**01.** Implemente uma função que recebe com parâmetro o ano de nascimento de uma pessoa e o ano atual, e imprime na tela se a pessoa é criança, adulto ou idoso. Sendo criança uma pessoa que tenho até 17 anos. A partir de 18 é considerada adulta e a partir de 65 anos é idosa.
``` c
# include <stdio.h>
void calc_idade(int nasc, int ano);
int main(void) {
    int nasc, ano;
    printf("Ano de nascimento: "); scanf("%d", &nasc);
    printf("Ano atual: "); scanf("%d", &ano);
    calc_idade(nasc, ano);
return 0; }
void calc_idade(int nasc, int ano) {
    int idade = ano - nasc;
    if (idade < 18) {
        printf("Criança, %d anos.\n", idade);
    } else if (18 <= idade && idade < 65) {
        printf("Adulto, %d anos.\n", idade);
    } else if (65 <= idade) {
        printf("Idoso, %d anos.\n", idade);
    }
}
```

**02.**  Faça um programa que receba do usuário a sua altura, peso atual e gênero (0 masculino e 1 feminino), e imprima na tela se o usuário está acima ou abaixo de seu peso ideal. Para fazer essa verificação crie uma função que recebe como parâmetros a altura e o gênero de uma pessoa (0 masculino e 1 feminino) e retorna o seu peso ideal, utilizando as seguintes fórmulas:
* Para gênero masculino: (72.7 * altura) – 58
* Para gênero feminino: (62.1 * altura) – 44.7
``` c
# include <stdio.h>
void calc_imc(float altura, char genero);
int main(void) {
    float altura, peso;
    int genero;
    printf("Altura: "); scanf("%f", &altura);
    printf("Peso atual: "); scanf("%f", &peso);
    printf("Gênero: "); scanf("%d", &genero);
    calc_imc(altura, genero);
return 0; }
void calc_imc(float altura, char genero) {
    float imc;
    if (genero == 0) {
        imc = (72.7 * altura) - 58;
        printf("Peso ideal: %f Kg\n", imc);
    } else if (genero == 1) {
        imc = (62.1 * altura) - 44.7;
        printf("Peso ideal: %f Kg\n", imc);
    }
}
```

**03.** Implemente uma função que recebe a nota de um aluno e retorna o valor da sua bolsa-auxílio conforme a tabela abaixo:
* 7 ≤ nota < 80 [R$ 500,00]
* 8 ≤ nota < 90 [R$ 700,00]
* nota ≥ 9 [R$ 900,00]
* nota < 7 [R$ 0,00] (sem bolsa)
``` c
# include <stdio.h>
float bolsa(float nota);
int main(void) {
    float nota;
    printf("Nota: "); scanf("%f", &nota);
    printf("R$ %.2f\n", bolsa(nota));
}
float bolsa(float nota) {
    float valor;
    if (7 <= nota && nota < 8) {
        valor = 500;
    } else if (8 <= nota && nota < 9) {
        valor = 700;
    } else if (nota >= 9) {
        valor = 900;
    } else if (nota < 7) {
        valor = 0;
    }
return valor; }
```

**04.** Implemente uma função que retorna o período em minutos decorrido entre os dois horários. A função deve receber 4 parâmetros inteiros, cada par de inteiros representando dois horários (horas e minutos, inicial e final).
``` c
#include <stdio.h>
#include <windows.h>
int calc_minutos(int h1, int m1, int h2, int m2);
int main(void) {
    int h1, m1, h2, m2;
    scanf("%d", &h1); system("cls"); printf("%d : ", h1); scanf("%d", &m1);
    scanf("%d", &h2); system("cls"); printf("%d : %d\n%d : ", h1, m1, h2); scanf("%d", &m2);
    printf("Tempo decorrido de %d minutos.", calc_minutos(h1, m1, h2, m2));
}
int calc_minutos(int h1, int m1, int h2, int m2) {
    int minutos = ((h2 - h1) * 60) + (m2 - m1);
return minutos; }
```


## Aula 06 (27/05)
**01.** Escreva uma função que determine a média e a situação de um aluno em uma disciplina. A função recebe como parâmetros as duas notas de um aluno (p1, p2) e o ponteiro para uma variável (media), conforme o seguinte protótipo: "int situacao(float p1, float p2, float *media);". Na variável indicada pelo ponteiro media, a função deve armazenar a média do aluno, calculada como a média aritmética das notas das provas. Além disso, a função deve retornar a situação do aluno (0 – reprovado ou 1 – aprovado) de acordo com a média (6.0) para aprovação. O programa principal devera ler as duas notas, invocar a função e informa a média e a situação do aluno.
``` c
#include <stdio.h>
int situacao(float p1, float p2, float *media);

int main(void) {
	float p1, p2, media;
	printf("Nota 1: "); scanf("%f", &p1);
	printf("Nota 2: "); scanf("%f", &p2);
	printf("%d | ", situacao(p1, p2, &media)); printf("Media: %.2f", media);
}

int situacao(float p1, float p2, float *media) {
	*media = (p1 + p2) / 2;
	if (6 <= *media) {return 1;}
}
```

**02.** Escreva um programa que: Contenha uma função que receba dois valores inteiros por referência (as alterações devem sobreviver ao final da chamada da função) e faça o seguinte procedimento:
* Se o primeiro valor for múltiplo de 5, divide por 5 e adicione 1. Se não, subtraia 2.
* Se o segundo valor for múltiplo de 3, some 7 a ele. Se não, nada faça.
* Retorne o maior dos valores.

Imprima os dois valores, no formato: “(Valor maior) é maior que (valor menor)”.
``` c
#include <stdio.h>
int numeros(int *a, int *b);

int main(void) {
	int a, b;
	printf("a = "); scanf("%d", &a);
	printf("b = "); scanf("%d", &b);
	int maior = numeros(&a, &b), menor;
	if (maior > a) {menor = a;} else {menor = b;}
	printf("%d maior que %d", maior, menor);
}

int numeros(int *a, int *b) {
	if (*a % 5 == 0) {*a += 1;} else {*a -= 2;}
	if (*b % 3 == 0) {*b += 7;}
	if (*a > *b) {return *a;} else {return *b;}
}
```

**03.** Faça um programa para gerenciamento de conta-corrente. O programa deverá ler o saldo inicial da conta e após isso exibir um menu com as seguintes opções:
* 1 – Mostrar saldo
* 2 – Depósito
* 3 – Saque
* 4 – Sair.

Deverá ser implementado duas funções uma para depósito e outra para saque. Caso o valor a ser sacado for maior que o saldo, não executar a operação exibir uma mensagem: “Saldo insuficiente”. Utilizar variável global para controlar o saldo.
``` c
#include <stdio.h>
void deposito(); void saque();
float saldo, valor;

int main(void) {
	printf("Saldo: R$ "); scanf("%f", &saldo);
	int i;
	do {
		printf("\n(1) Mostrar saldo\n(2) Deposito\n(3) Saque\n(4) Sair\nEscolha: "); scanf("%d", &i);
		switch (i) {
		case 1: printf("\nSaldo: R$ %.2f\n", saldo); break;
		case 2: deposito(); break;
		case 3: saque(); break;
		case 4: printf("\nSaindo..."); break;
		}
	} while (i != 4);
}

void deposito() {
	printf("\nValor para deposito: R$ "); scanf("%f", &valor);
	saldo += valor;
}

void saque() {
	printf("\nValor para saque: R$ "); scanf("%f", &valor);
	if (valor <= saldo) {saldo -= valor;} else {printf("\nSaldo insuficiente!\n");}
}
```

**04.** Faça um programa para controlar os dados de um estacionamento. O estacionamento cobra R$5,00 de taxa para estacionar até cinco horas, e cobra um adicional de R$1,00 por hora ou fração caso sejam excedidas as cinco horas. A taxa máxima para qualquer período determinado de 24 horas é R$ 20,00, supondo que nenhum carro fique estacionado por mais de 24 horas. O programa deverá ler a identificação do carro e quantidade de horas que cliente ficou estacionado até que o usuário digite 0 para a identificação do veículo. A cada leitura o programa deverá calcular e imprimir o valor a ser pago pelo cliente. O programa deverá acumular o total recebido pelo estacionamento e o final da execução mostrar o total recebido. O programa deverá ter uma função para calcular o valor a ser pago pelo cliente, que receberá com parâmetro a quantidade de horas e retornar o valor a ser pago. Utilizar uma variável static para armazenar o total recebido.
``` c
# include <stdio.h>
# include <stdlib.h> // Biblioteca Linux, permite o "system("clear");"
float pagar(int *h, int *min);

int main(void) {
    int id, h, min;
    static float total;
    do {
        printf("ID: "); scanf("%d", &id);
        if (id != 0) {
            printf("Tempo estacionado: "); scanf("%d", &h); system("clear");
            printf("ID: %d\nTempo estacionado: %dh", id, h); scanf("%d", &min);
            printf("Valor: R$ %.2f\n\n", pagar(&h, &min));
            total += pagar(&h, &min);
        }
    } while (id != 0);
    printf("Total: R$ %.2f\n", total);
}

float pagar(int *h, int *min) {
    float valor = 5;
    if (5 < *h) {
        valor += *h - 5;
        if (0 < *min) {valor += 1;}
    }
    return valor;
}
```