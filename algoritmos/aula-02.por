programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		// Questão 01
		/*
		inteiro a, b, c
		escreva("a = ") leia(a)
		escreva("b = ") leia(b)
		escreva("c = ") leia(c)
		
		se (c < a + b) {
			escreva("Soma de A + B maior que C")
		} senao {
			escreva("Soma de A + B menor ou igual a C")
		}
		*/


		// Questão 02
		/*
		cadeia nome, sexo, estadoCivil, tempoCasamento
		escreva("Nome: ") leia(nome)
		escreva("Sexo: ") leia(sexo)
		escreva("Estado Civil: ") leia(estadoCivil)

		se ((sexo == "f") e (estadoCivil == "casada")) {
			escreva("Tempo de casada (anos): ") leia(tempoCasamento)
		}
		*/


		// Questão 03
		/*
		inteiro n
		escreva("n = ") leia(n)
		
		se (n % 2 == 0) {
			escreva("n é par")
		} senao {
			escreva("n é impar")
		}
		*/


		// Questão 04
		/*
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
		*/


		// Questão 05
		/*
		inteiro n, total
		escreva("n = ") leia(n)
		
		se (n >= 0) {
			total = n * 2
			escreva("n é positivo, seu dobro é: ", total)
		} senao {
			total = n * 3
			escreva("n é positivo, seu triplo é: ", total)
		}
		*/


		// Questão 06
		/*
		logico a, b
		escreva("1º valor = verdadeiro ou falso:\n") leia(a)
		escreva("2º valor = verdadeiro ou falso:\n") leia(b)
		
		se ((a == verdadeiro) e (b == verdadeiro)) {
			escreva("Os dois valores são verdadeiros.")
		} senao {
			escreva("Um dos valores é falso.")
		}
		*/


		// Questão 07
		/*
		inteiro n, total
		escreva("n = ") leia(n)
		
		se (n % 2 == 0) {
			total = n + 5
			escreva("n é par, total = ", total)
		} senao {
			total = n + 8
			escreva("n é impar, total = ", total)
		}
		*/


		// Questão 08
		/*
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
		*/
		
	
		// Questão 09
		/*
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
		*/

		
		// Questão 10
		/*
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
		*/
		

		// Questão 11
		/*
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
		*/


		// Questão 12
		/*
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
		*/
	}
}