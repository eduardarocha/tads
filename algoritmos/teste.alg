Algoritmo "atividade-02"
Var
m : vetor[1..3, 1..3] de inteiro
DP, DS : vetor[1..3] de inteiro
i, j, a, b, ordem : inteiro

Inicio
para i de 1 ate 3 passo 1 faca
	para j de 1 ate 3 passo 1 faca
		escreva("m[", i, ", ", j, "] = ")
		leia(m[i, j])
        se (i = j) entao
			DP[i] <- m[i, j]
		fimse
		se (i + j = 4) entao
			DS[i] <- m[i, j]
		fimse
	fimpara
fimpara

para i de 1 ate 3 passo 1 faca
	escreva(DP[i], " ")
fimpara
escreval("")
para i de 1 ate 3 passo 1 faca
	escreva(DS[i], " ")
fimpara
Fimalgoritmo