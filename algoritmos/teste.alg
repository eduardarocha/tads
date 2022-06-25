Algoritmo "atividade-11"
Var
x : vetor[1..10] de inteiro
i, j, n, quant, limite : inteiro

Inicio
escreva("Inicial: ")
leia(n)
limite <- int((n^0.5)) + 2

enquanto (i < 10) faca
	n <- n + 1
	quant <- 0
	para j de 2 ate limite passo 1 faca
		se (n % j <> 0) entao
			quant <- quant + 1
		fimse
	fimpara
    se (quant = limite - 1) entao
   		i <- i + 1
   		x[i] <- n
   	fimse
fimenquanto

para i de 1 ate 10 passo 1 faca
	escreval("x[", i, "] = ", x[i])
fimpara
Fimalgoritmo