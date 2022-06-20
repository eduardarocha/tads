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
**01.** Faça um algoritmo que leia os valores A, B, C e imprima na tela se a soma de A + B é menor que C.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro a, b, c
		escreva("a = ") leia(a)
		escreva("b = ") leia(b)
		escreva("c = ") leia(c)
		
		se (c < a + b) {
			escreva("Soma de A + B maior que C")
		} senao {
			escreva("Soma de A + B menor ou igual a C")
		}
	}
}
```

**02.** Faça um algoritmo que leia o nome, o sexo e o estado civil de uma pessoa. Caso sexo seja “F” e estado civil seja “CASADA”, solicitar o tempo de casada (anos).
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		cadeia nome, sexo, estadoCivil, tempoCasamento
		escreva("Nome: ") leia(nome)
		escreva("Sexo: ") leia(sexo)
		escreva("Estado Civil: ") leia(estadoCivil)

		se ((sexo == "f") e (estadoCivil == "casada")) {
			escreva("Tempo de casada (anos): ") leia(tempoCasamento)
		}
	}
}
```

**03.** Faça um algoritmo para receber um número qualquer e informar na tela se é par ou ímpar.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro n
		escreva("n = ") leia(n)
		
		se (n % 2 == 0) {
			escreva("n é par")
		} senao {
			escreva("n é impar")
		}
	}
}
```

**04.** Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se somar os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se atribuir o resultado para uma variável C e mostrar seu conteúdo na tela.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro a, b, c
		escreva("a = ") leia(a)
		escreva("b = ") leia(b)

		se (a == b) {
			c = a + b
			escreva("A = B: Soma de A + B = ", c)
		} senao {
			c = a * b
			escreva("A != B: Soma de A * B = ", c)
		}
	}
}
```

**05.** Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, imprimindo o resultado.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro n, total
		escreva("n = ") leia(n)
		
		se (n >= 0) {
			total = n * 2
			escreva("n é positivo, seu dobro é: ", total)
		} senao {
			total = n * 3
			escreva("n é positivo, seu triplo é: ", total)
		}
	}
}
```

**06.** Escreva um algoritmo que lê dois valores booleanos (lógicos) e então determina se ambos são VERDADEIROS ou FALSOS.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		logico a, b
		escreva("1º valor = verdadeiro ou falso:\n") leia(a)
		escreva("2º valor = verdadeiro ou falso:\n") leia(b)
		
		se ((a == verdadeiro) e (b == verdadeiro)) {
			escreva("Os dois valores são verdadeiros.")
		} senao {
			escreva("Um dos valores é falso.")
		}
	}
}
```

**07.** Faça um algoritmo que leia uma variável e some 5 caso seja par ou some 8 caso seja ímpar, imprimir o resultado desta operação.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro n, total
		escreva("n = ") leia(n)
		
		se (n % 2 == 0) {
			total = n + 5
			escreva("n é par, total = ", total)
		} senao {
			total = n + 8
			escreva("n é impar, total = ", total)
		}
	}
}
```

**08.** Escreva um algoritmo que leia três valores inteiros e diferentes e mostre-os em ordem decrescente.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro a, b, c
		escreva("a = ") leia(a)
		escreva("b = ") leia(b)
		escreva("c = ") leia(c)

		se ((c > b) e (b > a)) {
			escreva("\nCaso c > b > a\n", c, " > ", b, " > ", a)
		} senao se ((b > c) e (c > a)) {
			escreva("\nCaso b > c > a\n", b, " > ", c, " > ", a)
		} senao se ((c > a) e (a > b)) {
			escreva("\nCaso c > a > b\n", c, " > ", a, " > ", b)
		} senao se ((b > a) e (a > c)) {
			escreva("\nCaso b > a > c\n", b, " > ", a, " > ", c)
		} senao se ((a > c) e (c > b)) {
			escreva("\nCaso a > c > b\n", a, " > ", c, " > ", b)
		} senao {
			escreva("\nCaso a > b > c\n", a, " > ", b, " > ", c)
		}
	}
}
```

**09.**	endo como dados de entrada a altura e o sexo de uma pessoa, construa um algoritmo que calcule seu peso ideal, utilizando as seguintes fórmulas:
* para homens: (72.7 * h) – 58;
* para mulheres: (62.1 * h) – 44.7.
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		cadeia sexo = ""
		real altura, pesoIdeal
		escreva("Sexo: ") leia(sexo)
		escreva("Altura: ") leia(altura)

		se (sexo == "m") {
			pesoIdeal = (72.7 * altura) - 58
			escreva("Peso ideal: ", mat.arredondar(pesoIdeal, 2), " Kg")
		} senao {
			pesoIdeal = (62.1 * altura) - 44.7
			escreva("Peso ideal: ", mat.arredondar(pesoIdeal, 2), " Kg")
		}
	}
}
```

**10.**	O IMC – Indice de Massa Corporal é um critério da Organização Mundial de Saúde para dar umaindicação sobre a condição de peso de uma pessoa adulta. A fórmula é IMC = peso / ( altura )2 Elabore um algoritmo que leia o peso e a altura de um adulto e mostre sua condição de acordo com a tabela abaixo.
* Abaixo de 18,5 Abaixo do peso
* Entre 18,5 e 25 Peso normal
* Entre 25 e 30 Acima do peso
* Acima de 30 obeso
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		real peso, altura, imc
		escreva("Peso: ") leia(peso)
		escreva("Altura: ") leia(altura)
		imc = peso / (altura * altura)
		
		se ((imc > 0) e (imc <= 18.5)) {
			escreva("Abaixo do peso.")
		} senao se ((imc > 18.5) e (imc <= 25)) {
			escreva("Peso normal.")
		} senao se ((imc > 25) e (imc <= 30)) {
			escreva("Acima do peso.")
		} senao se (imc > 30) {
			escreva("Acima do peso.")
		}
	}
}
```
		
**11.** Elabore um algoritmo que calcule o que deve ser pago por um produto, considerando o preço normal deetiqueta e a escolha da condição de pagamento. Utilize os códigos da tabela a seguir para ler qual acondição de pagamento escolhida e efetuar o cálculo adequado.
* 1 À vista em dinheiro ou cheque, recebe 10% de desconto
* 2 À vista no cartão de crédito, recebe 15% de desconto
* 3 Em duas vezes, preço normal de etiqueta sem juros
* 4 Em duas vezes, preço normal de etiqueta mais juros de 10%
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		real preco
		cadeia pagamento = ""
		inteiro vezes
		escreva("Preço: ") leia(preco)
		escreva("Forma de pagamento: ") leia(pagamento)
		escreva("Em vezes de: x") leia(vezes)
		
		se ((pagamento == "dinheiro") ou (pagamento == "cheque")) {
			escolha (vezes) {
				caso 1:
				preco -= preco * 0.1
				escreva("10% de desconto. Total: R$ ", preco)
				pare
				caso 2:
				escreva("\nPreço normal, sem juros. Total: R$ ", preco)
				pare
				caso 3:
				preco += preco * (0.1 * vezes)
				escreva("\nPreço normal, mais juros de 10%. Total: R$ ", preco)
				pare
			}
		} senao se (pagamento == "credito") {
			escolha (vezes) {
				caso 1:
				preco -= preco * 0.15
				escreva("15% de desconto. Total: R$ ", preco)
				pare
				caso 2:
				escreva("\nPreço normal, sem juros. Total: R$ ", preco)
				pare
				caso 3:
				preco += preco * (0.1 * vezes)
				escreva("\nPreço normal, mais juros de 10%. Total: R$ ", preco)
				pare
			}
		}
	}
}
```

**12.** Escreva um algoritmo que leia o número de identificação, as 3 notas obtidas por um aluno nas 3 verificações e a média dos exercícios que fazem parte da avaliação, e calcule a média de aproveitamento, usando a fórmula:
* MA := (nota1 + nota 2 * 2 + nota 3 * 3 + ME)/7

A atribuição dos conceitos obedece a tabela abaixo. O algoritmo deve escrever o número do aluno, suas notas, a média dos exercícios, a média de aproveitamento, o conceito correspondente e a mensagem 'Aprovado' se o conceito for A, B ou C, e 'Reprovado' se o conceito for D ou E.
* >= 90 A
* >= 75 e < 90 B
* >= 60 e < 75 C
* >= 40 e < 60 D
* < 40 E
``` portugol
programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		cadeia id, conceito = ""
		real nota1, nota2, nota3, ME, MA
		escreva("Número de identificação: ") leia(id)
		escreva("Nota 1: ") leia(nota1)
		escreva("Nota 2: ") leia(nota2)
		escreva("Nota 3: ") leia(nota3)
		escreva("Média dos exercícios: ") leia(ME)
		MA = (nota1 + (nota2 * 2) + (nota3 * 3) + ME) / 7
		
		se (MA >= 90) {
			conceito = "A"
		} senao se (MA >= 75 e MA < 90) {
			conceito = "B"
		} senao se (MA >= 60 e MA < 75) {
			conceito = "C"
		} senao se (MA >= 40 e MA < 60) {
			conceito = "D"
		} senao se (MA >= 0 e MA < 40) {
			conceito = "E"
		}
		
		se (conceito == "A" ou conceito == "B" ou conceito == "C") {
			escreva("\nAprovado")
		} senao {
			escreva("\nReprovado")
		}

		escreva("\nID: ", id, "\nNota 1: ", nota1, "\nNota 2: ", nota2, "\nNota 3: ", nota3, "\nMédia dos exercícios: ", ME, "\nConceito: ", conceito)
	}
}
```


## Aula 03 (05/04/22)
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


## Aula 04 (12/04/22)
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
Algoritmo "atividade-01"
Var
v : vetor[1..6] de inteiro
i, negativos : inteiro

Inicio
para i de 1 ate 6 faca
	escreva("Posição ", i, ": ")
	leia(v[i])
	se (v[i] < 0) entao
		negativos <- negativos + 1
	fimse
fimpara
escreva("Negativos: ", negativos)
Fimalgoritmo
```

**02.** Escrever um algoritmo que lê um vetor X(10) e o escreve. Substitua, a seguir, todos os valores nulos de X por 1 e escreva novamente o vetor x .
``` visualg
Algoritmo "atividade-02"
Var
x : vetor[1..10] de inteiro
i : inteiro

Inicio
para i de 1 ate 10 passo 1 faca
	escreva("Posição ", i, ": ")
	leia(x[i])
	se (x[i] = 0) entao
		x[i] <- 1
	fimse
fimpara
para i de 1 ate 10 passo 1 faca
	escreva(x[i], " ")
fimpara
Fimalgoritmo
```

**03.** Escrever um algoritmo que lê um vetor C[50]. Encontre, a seguir, o maior elemento de C e o escreva.
``` visualg
Algoritmo "atividade-03"
Var
c : vetor[1..50] de inteiro
i, maior : inteiro

Inicio
escreva("Posição 1: ")
leia(c[1])
maior <- c[1]
para i de 2 ate 50 passo 1 faca
	escreva("Posição ", i, ": ")
	leia(c[i])
	se (maior < c[i]) entao
		maior <- c[i]
	fimse
fimpara
escreva("Maior: ", maior)
Fimalgoritmo
```

**04.** Escrever um algoritmo que lê um vetor N[80]. Encontre, a seguir, o menor elemento e a sua posição no vetor N e escreva: “o menor elemento de n é = ”, M, “e a sua posição é = ”, P.
``` visualg
Algoritmo "atividade-04"
Var
n : vetor[1..80] de inteiro
i, m, p : inteiro

Inicio
escreva("Posição 1: ")
leia(n[1])
m <- n[1]
para i de 2 ate 80 passo 1 faca
	escreva("Posição ", i, ": ")
	leia(n[i])
	se (n[i] < m) entao
		m <- n[i]
		p <- i
	fimse
fimpara
escreva("o menor elemento de n[80] é ", m, " e a sua posição é ", p)
Fimalgoritmo
```

**05.** Escrever um algoritmo que lê um vetor N[20]. Troque, a seguir, o 1º elemento com o último, o 2º com o penúltimo, etc., até o 10º com o 11º e escreva o vetor N assim modificado.
``` visualg
Algoritmo "atividade-05"
Var
n : vetor[1..20] de inteiro
i, ordem : inteiro

Inicio
para i de 1 ate 20 passo 1 faca
	escreva("n[", i, "] = ")
	leia(n[i])
fimpara
para i de 1 ate 10 passo 1 faca
	ordem <- n[i]
	n[i] <- n[21 - i]
	n[21 - i] <- ordem
fimpara
para i de 1 ate 20 passo 1 faca
	escreval("Mod. n[", i, "] = ", n[i])
fimpara
Fimalgoritmo
```

**06.** Escrever um algoritmo que lê um vetor K(20) e o escreve. Troque, a seguir, os elementos de ordem ímpar com os de ordem par imediatamente seguintes e escreva o vetor k modificado.
``` visualg
Algoritmo "atividade-06"
Var
k : vetor[1..20] de inteiro
i, ordem : inteiro

Inicio
para i de 1 ate 20 passo 1 faca
	escreva("k[", i, "] = ")
	leia(k[i])
fimpara

para i de 1 ate 19 passo 2 faca
	ordem <- k[i]
	k[i] <- k[i + 1]
	k[i + 1] <- ordem
fimpara

para i de 1 ate 20 passo 1 faca
	escreval("Mod. k[", i, "] = ", k[i])
fimpara
Fimalgoritmo
```

**07.** Escrever um algoritmo que lê um vetor N[20] e o escreve. Troque, a seguir, o 1º elemento com 11º, o 2º com o 12º, etc., até o 10º com o 20º e escreva o vetor assim modificado.
``` visualg
Algoritmo "atividade-07"
Var
n : vetor[1..20] de inteiro
i, ordem : inteiro

Inicio
para i de 1 ate 20 passo 1 faca
	escreva("n[", i, "] = ")
	leia(n[i])
fimpara
para i de 1 ate 10 passo 1 faca
	ordem <- n[i]
	n[i] <- n[i + 10]
	n[i + 10] <- ordem
fimpara
para i de 1 ate 20 passo 1 faca
	escreval("Mod. n[", i, "] = ", n[i])
fimpara
Fimalgoritmo
```

**08.** Escrever um algoritmo que lê um vetor G[20] (gabarito) e a seguir lê um número não determinado de números de alunos e vetores R[20] (resposta), um número e um vetor R de cada vez. O número representa o número de um aluno e o vetor R representa o conjunto de respostas daquele aluno. Para cada aluno calcular o nº de acertos e calcular a nota. nota = número de acertos * 0.5 Escrever o nº do aluno, sua nota e a mensagem "aprovado" se tiver nota maior ou igual a 5 ou "reprovado" se a nota for menor do que 5.
``` visualg
Algoritmo "atividade-08"
Var
g, r : vetor[1..20] de inteiro
i, id, sair, acertos : inteiro
nota : real

Inicio
para i de 1 ate 20 passo 1 faca
	escreva("g[", i, "] = ")
	leia(g[i])
fimpara

enquanto (sair = 0) faca
	acertos <- 0
	escreva("ID: ")
	leia(id)
	para i de 1 ate 20 passo 1 faca
		escreva("r[", i, "] = ")
		leia(r[i])
		se (r[i] = g[i]) entao
			acertos <- acertos + 1
		fimse
	fimpara
	nota <- acertos * 0.5
	se (5 <= nota) entao
		escreval("Aprovado(a)")
	senao
		escreval("Reprovado(a)")
	fimse
	escreval("ID: ", id)
	escreval("Nota: ", nota)

	escreval("Sair? 1-Sim | 0-Não")
	leia(sair)
fimenquanto
Fimalgoritmo
```

**09.** Escrever um algoritmo que lê 2 vetores K[10] e N[10] e os escreve. Crie, a seguir, um vetor M que seja a diferença entre K e N (M = K - N) e escreva o vetor M.
``` visualg
Algoritmo "atividade-09"
Var
k, n, m : vetor[1..10] de inteiro
i : inteiro

Inicio
para i de 1 ate 10 passo 1 faca
	escreva("k[", i, "] = ")
	leia(k[i])
	escreva("n[", i, "] = ")
	leia(n[i])
fimpara
para i de 1 ate 10 passo 1 faca
	m[i] <- k[i] - n[i]
	escreval("m[", i, "] = ", m[i])
fimpara
Fimalgoritmo
```

**10.** Escrever um algoritmo que lê um vetor G[13] que é o Gabarito de um teste da loteria esportiva, contendo os valores 1 (coluna 1), 2(coluna 2), e 3(coluna do meio). Ler, a seguir, para cada apostador, o nº de seu cartão e um vetor Resposta R[13]. Verificar para cada apostador o nº de acertos e escrever o nº do apostador e seu número de acertos. Se tiver 13 acertos, acrescentar a mensagem: "ganhador, parabéns!".
``` visualg
Algoritmo "atividade-10"
Var
g, r : vetor[1..13] de inteiro
i, id, sair, acertos: inteiro

Inicio
para i de 1 ate 13 passo 1 faca
	escreva("g[", i, "] = ")
	leia(g[i])
fimpara

enquanto (sair = 0) faca
	acertos <- 0
	escreva("ID: ")
	leia(id)
	para i de 1 ate 13 passo 1 faca
		escreva("r[", i, "] = ")
		leia(r[i])
		se (g[i] = r[i]) entao
			acertos <- acertos + 1
		fimse
	fimpara
	escreval("ID: ", id)
	escreval("Acertos: ", acertos)
	se (acertos = 13) entao
		escreval("Ganhador(a), parabéns!")
	fimse

	escreval("Sair? 1-Sim | 0-Não")
	leia(sair)
fimenquanto
Fimalgoritmo
```

**11.** Escrever um algoritmo que gera os 10 primeiros números primos acima de 100 e os armazena em um vetor X(10) escrevendo, no final, o vetor X.
``` visualg
Algoritmo "atividade-11"
Var
x : vetor[1..10] de inteiro
i, j, n, quant : inteiro

Inicio
para i de 100 ate 150 passo 1 faca
	quant <- 0
	para j de 2 ate 13 passo 1 faca
		se (i % j <> 0) entao
			quant <- quant + 1
		fimse
	fimpara
	se (quant = 12) entao
		n <- n + 1
		x[n] <- i
	fimse
fimpara

para i de 1 ate 10 passo 1 faca
	escreval("x[", i, "] = ", x[i])
fimpara
Fimalgoritmo
```

**12.** Escrever um algoritmo que lê um vetor A[15] e o escreve. Ordene, a seguir os elementos de A em ordem crescente e escreva novamente A.
``` visualg
Algoritmo "atividade-12"
Var
a: vetor[1..15] de inteiro
i, j, ordem : inteiro

Inicio
para i de 1 ate 15 passo 1 faca
	escreva("a[", i, "] = ")
	leia(a[i])
fimpara

para i de 1 ate 15 passo 1 faca
	para j de i ate 15 passo 1 faca
		se (a[j] < a[i]) entao
			ordem <- a[i]
			a[i] <- a[j]
			a[j] <- ordem
		fimse
	fimpara
fimpara

para i de 1 ate 15 passo 1 faca
	escreval("Mod. b[", i, "] = ", a[i])
fimpara
Fimalgoritmo
```


## Aula 10 (14/06/22)
**01.** Escreva um algoritmo que lê uma matriz M(5,5) e calcula as somas, ao final, escreva estas somas e a matriz:
* da linha 4 de M
* da coluna 2 de M
* da diagonal principal
* da diagonal secundária
* de todos os elementos da matriz
``` visualg
Algoritmo "atividade-01"
Var
m : vetor[1..5, 1..5] de inteiro
i, j, soma, somaL4, somaC2, somaDP, somaDS : inteiro

Inicio
para i de 1 ate 5 passo 1 faca
	para j de 1 ate 5 passo 1 faca
		escreva("m[", i, ", ", j, "] = ")
		leia(m[i, j])
		se (i = 4) entao
			somaL4 <- somaL4 + m[i, j]
		fimse
		se (j = 2) entao
			somaC2 <- somaC2 + m[i, j]
		fimse
		se (i = j) entao
			somaDP <- somaDP + m[i, j]
		fimse
		se (i + j = 6) entao
			somaDS <- somaDS + m[i, j]
		fimse
		soma <- soma + m[i, j]
	fimpara
fimpara

escreval("i4: ", somaL4, " | j2: ", somaC2)
escreval("D. principal: ", somaDP, " | D. secundária: ", somaDS)
escreval("Soma total: ", soma)
Fimalgoritmo
```

**02.** Escrever um algoritmo que lê uma matriz M(10,10) e a escreve. Troque, a seguir e escreva a matriz assim modificada:
* a linha 2 com a linha 8.
* a coluna 4 com a coluna 10
* a diagonal principal com a secundária
* a linha 5 com a coluna 10
``` visualg
Algoritmo "atividade-02"
Var
m : vetor[1..10, 1..10] de inteiro
DP, DS : vetor[1..10] de inteiro
i, j, ordem : inteiro

Inicio
para i de 1 ate 10 passo 1 faca
	para j de 1 ate 10 passo 1 faca
		escreva("m[", i, ", ", j, "] = ")
		leia(m[i, j])
	fimpara
fimpara

para i de 1 ate 10 passo 1 faca
	para j de 1 ate 10 passo 1 faca
		se (i = 2) entao
			ordem <- m[i, j]
			m[i, j] <- m[8, j]
			m[8, j] <- ordem
		fimse
		se (j = 4) entao
			ordem <- m[i, j]
			m[i, j] <- m[i, 10]
			m[i, 10] <- ordem
		fimse
		se (i = j) entao
			DP[i] <- m[i, j]
		fimse
		se (i + j = 9) entao
			DS[i] <- m[i, j]
		fimse
		se (i = 5) entao
			ordem <- m[i, j]
			m[i, j] <- m[i, 10]
			m[i, 10] <- ordem
		fimse
	fimpara
fimpara
para i de 1 ate 10 passo 1 faca
	para j de 1 ate 10 passo 1 faca
		ordem <- DP[i]
		DP[i] <- DS[i]
		DS[i] <- ordem
		se (i = j) entao

		fimse
	fimpara
fimpara

para i de 1 ate 10 passo 1 faca
	para j de 1 ate 10 passo 1 faca
		escreval("m[", i,", ", j,"] = ", m[i, j])
	fimpara
fimpara
Fimalgoritmo
```

**03.** Escrever um algoritmo que lê uma matriz M(6,6) e um valor A e multiplica a matriz M pelo valor A e coloca os valores da matriz multiplicados por A em um vetor de V(36) e escreve no final o vetor V.
``` visualg

```

**04.** Escrever um algoritmo que lê uma matriz M(5,5) e cria 2 vetores SL(5), SC(5) que contenham respectivamente as somas das linhas e das colunas de M. Escrever a matriz e os vetores criados.
``` visualg

```