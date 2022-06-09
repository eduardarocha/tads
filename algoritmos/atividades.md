## Aula 01
**01.** A imobiliária Imóbilis vende apenas terrenos retangulares. Faça um algoritmo para ler as dimensões de um terreno e depois exibir a área do terreno.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		real l, c, a
		escreva("Largura: ") leia(l)
		escreva("Comprimento: ") leia(c)
		a = (l * 2) + (c * 2)
		escreva("Área: ", a)
    }
}
```

**13.** Ler um número inteiro (assuma até três dígitos) e imprimir a saída da seguinte forma:
* Centena = x
* Dezena = x
* Unidade = x
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro n, cen, dez, uni
        escreva("Número inteiro de 3 algarimos: ") leia(n)
        cen = n / 100
        dez = (n % 100) / 10
        uni = (n % 100) % 10
        escreva("Centena: ", cen * 100, "\nDezena: ", dez * 10, "\nUnidade: ", uni)
    }
}
```


## Aula 02
**01.** 
``` portugol

```


## Aula 03 (05/04)
**01.**
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro dia
		escreva("Dia da semana : ") leia(dia)

		escolha (dia) {
			caso 1:
				escreva("Domingo")
			pare
			caso 2:
				escreva("Segunda")
			pare
			caso 3:
				escreva("Terça")
			pare
			caso 4:
				escreva("Quarta")
			pare
			caso 5:
				escreva("Quinta")
			pare
			caso 6:
				escreva("Sexta")
			pare
			caso 7:
				escreva("Sábado")
			pare
		}
    }
}
```

**02.**
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro dia, mes, ano
		escreva("Dia : ") leia(dia)
		escreva("Mes : ") leia(mes)
		escreva("Ano : ") leia(ano)

		escolha (mes) {
			caso 1:
				escreva("0", dia, " de Janeiro de ", ano)
			pare
			caso 2:
				escreva("0", dia, " de Fevereiro de ", ano)
			pare
			caso 3:
				escreva("0", dia, " de Março de ", ano)
			pare
			caso 4:
				escreva("0", dia, " de Abril de ", ano)
			pare
			caso 5:
				escreva("0", dia, " de Maio de ", ano)
			pare
			caso 6:
				escreva("0", dia, " de Junho de ", ano)
			pare
			caso 7:
				escreva("0", dia, " de Julho de ", ano)
			pare
			caso 8:
				escreva("0", dia, " de Agosto de ", ano)
			pare
			caso 9:
				escreva("0", dia, " de Setembro de ", ano)
			pare
			caso 10:
				escreva(dia, " de Outubro de ", ano)
			pare
			caso 11:
				escreva(dia, " de Novembro de ", ano)
			pare
			caso 12:
				escreva(dia, " de Dezembro de ", ano)
			pare
		}
    }
}
```


## Aula 04 (12/04)
**01.**
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro A, B, C, D, E, F, G, H, I
		escreva("A B C D E F G H I\n") leia(A, B, C, D, E, F, G, H, I)
		 
		escreva("\n", A, " | ", B," | ", C,"\n--|---|--\n", D," | ", E," | ", F,"\n--|---|--\n", G," | ", H," | ", I,"\n")
		
	     se ((A == 1 e B == 1 e C == 1) ou (D == 1 e E == 1 e F == 1) ou (G == 1 e H == 1 e I == 1) ou (A == 1 e E == 1 e I == 1) ou (C == 1 e E == 1 e G == 1) ou (A == 1 e D == 1 e G == 1) ou (B == 1 e E == 1 e H == 1) ou (C == 1 e F == 1 e I == 1)) {
	     	escreva("\n1 : Vitória!\n")
	     } senao se ((A == 2 e B == 2 e C == 2) ou (D == 2 e E == 2 e F == 2) ou (G == 2 e H == 2 e I == 2) ou (A == 2 e E == 2 e I == 2) ou (C == 2 e E == 2 e G == 2) ou (A == 2 e D == 2 e G == 2) ou (B == 2 e E == 2 e H == 2) ou (C == 2 e F == 2 e I == 2)) {
	          escreva("\n2 : Vitória!\n")
	     } senao {
	          escreva("\nEmpate!\n")
		}
	}
}
```


## Aula 05
**01.**
``` visualg
```


## Aula 06
**01.**
``` visualg
```


## Aula 07 (12/04)
**01.** Escrever um algoritmo que lê um número não conhecido de valores, um de cada vez, e conta quantos deles estão em cada um dos intervalos [0, 50], (50, 100], (100,200]. O algoritmo deve encerrar quando for informado um valor fora dos intervalos.
``` visualg
Algoritmo "atividade-01"
Var
n, a, b, c : inteiro
Inicio

enquanto (0 <= n) e (n <= 200) faca
	escreva("n = ")
	leia(n)
	se (0 <= n) e (n <= 50) entao
        a <- a + 1
        escreval("A - Intervalo [0, 50]")
	senao
		se (50 < n) e (n <= 100) entao
        	b <- b + 1
        	escreval("B - Intervalo (50, 100]")
		senao
			se (100 < n) e (n <= 200) entao
    			c <- c + 1
				escreval("C - Intervalo (100, 200]")
			fimse
		fimse
	fimse
fimenquanto
escreval("A : ", a)
escreval("B : ", b)
escreval("C : ", c)

Fimalgoritmo
```

**02.** Escrever um algoritmo que lê um número não determinado de valores para m, todos inteiros e positivos, um de cada vez. Se m for par, verificar quantos divisores possui e escrever esta informação. Se m for ímpar e menor do que 12 calcular e escrever o fatorial de m. Se m for ímpar e maior ou igual a 12 calcular e escrever a soma dos inteiros de 1 até m.
``` visualg
Algoritmo "atividade-02"
Var
m, i, divisores, fatorial, soma : inteiro

Inicio
enquanto 0 < m faca
	escreva("m = ")
	leia(m)
	se m % 2 = 0 entao
		divisores <- 0
		para i de 1 ate m faca
			se m MOD i = 0 entao
				divisores <- divisores + 1
				escreval(i)
			fimse
		fimpara
		escreval("Quantidade de divisores de m = ", divisores)
	senao
		se m < 12 entao
			fatorial <- 1
			para i de m ate 1 passo -1 faca
				fatorial <- fatorial * i
			fimpara
			escreval("Fatorial de m = ", fatorial)
		senao
			soma <- 0
			para i de 1 ate m faca
				soma <- soma + i
			fimpara
			escreval("Soma dos números entre 1 até m = ", soma)
		fimse
	fimse
fimenquanto
Fimalgoritmo
```

**03.** Escrever um algoritmo que lê um número não determinados de valores a, todos inteiros e positivos, um de cada vez, e calcule e escreva a média aritmética dos valores lidos, a quantidade de valores pares, a quantidade de valores impares, a percentagem de valores pares e a percentagem de valores ímpares.
``` visualg
Algoritmo "atividade-03"
Var
a, i, soma, par, impar, media, percPar, percImpar : inteiro

Inicio
enquanto 0 <= a faca
	escreva("a = ")
	leia(a)
	se 0 <= a entao
		i <- i + 1
		soma <- soma + a
		se (a MOD 2 = 0) e (a <> 1) entao
			par <- par + 1
		senao
			impar <- impar + 1
		fimse
	fimse
fimenquanto

media <- soma DIV i
escreval("Média = ", media)
percPar <- (100 * par) DIV i
escreval("Pares = ", par, " | ", percPar, "%")
percImpar <- (100 * impar) DIV i
escreval("Impares = ", impar, " | ", percImpar, "%")
Fimalgoritmo
```


## Aula 08
**01.** A prefeitura de uma cidade fez uma pesquisa entre seus habitantes, coletando dados sobre o salário e número de filhos. O final da leitura de dados se dará com a entrada de um salário negativo. A prefeitura deseja saber:  
* média do salário da população
* média do número de filhos
* maior salário
* percentual de pessoas com salário até R$1200,00
``` visualg
Algoritmo "atividade-02"
Var
salario, somaS, mediaS, mediaF, maiorS, percS : real
filhos, somaF, quant, quantS : inteiro

Inicio
escreva("Salario: ")
leia(salario)
escreva("Filhos: ")
leia(filhos)
quant <- 1
somaS <- salario
somaF <- filhos
maiorS <- salario
enquanto (0 <= salario) faca
	escreva("Salario: ")
	leia(salario)
	se (0 <= salario) entao
		escreva("Filhos: ")
		leia(filhos)
		quant <- quant + 1
		somaS <- somaS + salario
		somaF <- somaF + filhos
		se (maiorS < salario) entao
			maiorS <- salario
		fimse
		se (salario <= 1200) entao
			quantS <- quantS + 1
		fimse
	fimse
fimenquanto

mediaS <- somaS / quant
escreval("Media de salario: R$ ", mediaS)
mediaF <- somaF / quant
escreval("Media de filhos: ", mediaF)
escreval("Maior salario: R$ ", maiorS)
percS <- (quantS * 100) / quant
escreval("Percentual de salarios ate R$ 1200,00: ", percS)
Fimalgoritmo
```

**02.** Em uma eleição presidencial existem quatro candidatos. Os votos são informados através de  códigos. Os dados utilizados para a contagem dos  votos obedecem à seguinte codificação:
* 1,2,3,4 = voto para os respectivos candidatos
* 5 = voto nulo
* 6 = voto em branco

Elabore um algoritmo que leia o código do candidato em um voto, como finalizador do conjunto de votos, tem-se o valor 0. Calcule e escreva:
* total de votos para cada candidato;
* total de votos nulos;
* total de votos em branco;
``` visualg
Algoritmo "atividade-02"
Var
voto, q1, q2, q3, q4, q5, q6 : inteiro

Inicio
voto <- 1
enquanto (voto <> 0) faca
	escreva("Voto: ")
	leia(voto)
	escolha (voto)
	caso 1
		q1 <- q1 + 1
	caso 2
		q2 <- q2 + 1
	caso 3
		q3 <- q3 + 1
	caso 4
		q4 <- q4 + 1
	caso 5
		q5 <- q5 + 1
	caso 6
		q6 <- q6 + 1
	fimescolha
fimenquanto

escreval("1 : ", q1)
escreval("2 : ", q2)
escreval("3 : ", q3)
escreval("4 : ", q4)
escreval("Nulo : ", q5)
escreval("Branco : ", q6)
Fimalgoritmo
```

**03.** Uma empresa deseja aumentar seus preços em 20%. Faça um algoritmo que leia o código e o preço de custo de cada produto e calcule o preço novo. Calcule também, a média dos preços com e sem aumento. Mostre o código e o preço novo de cada produto e, no final, as médias. A entrada de dados deve terminar quando for lido um código de produto negativo.
``` visualg
Algoritmo "atividade-03"
Var
valorAntigo, valorAtual, mediaAntiga, somaAntiga, mediaAtual, somaAtual : real
codigo, quant : inteiro

Inicio
repita
	escreva("Código: ")
	leia(codigo)
	se (codigo >= 0) entao
		escreva("Preço: R$ ")
		leia(valorAntigo)
		quant <- quant + 1
		somaAntiga <- somaAntiga + valorAntigo
		valorAtual <- valorAntigo + (valorAntigo * 0.2)
		escreval("Novo preço: R$ ", valorAtual)
		somaAtual <- somaAtual + valorAtual
	fimse
ate (codigo < 0)

mediaAntiga <- somaAntiga / quant
escreval("Média sem aumento: R$ ", mediaAntiga)
mediaAtual <- somaAtual / quant
escreval("Média com aumento: R$ ", mediaAtual)
Fimalgoritmo
```


## Aula 09 (07/06/22)
**01.** Escrever um algoritmo que lê um vetor V[6]. Conte, a seguir quantos valores de V são negativos e escreva esta informação.
``` visualg

```

**02.** Escrever um algoritmo que lê um vetor X(10) e o escreve. Substitua, a seguir, todos os valores nulos de X por 1 e escreva novamente o vetor x .
``` visualg

```