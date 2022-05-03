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

```