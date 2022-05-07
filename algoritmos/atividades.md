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