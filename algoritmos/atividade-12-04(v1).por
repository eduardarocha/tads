programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		
		cadeia cA, cB, cC, cD, cE, cF, cG, cH, cI, enunciado = "Escreva \"x\", \"o\" ou \" \" (espaço) para cada posição.\n\n"
		inteiro A = 2, B = 2, C = 2, D = 2, E = 2, F = 2, G = 2, H = 2, I = 2

		escreva(enunciado, "A |   |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  \n\nA : ") leia(cA) limpa()
		se (cA == "x") {
			A = 1
		} senao se (cA == "o") {
			A = 0
		} senao se (cA == " ") {
			A = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n\n")
			inicio()
		}

		escreva(enunciado, cA, " | B |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  \n\nB : ") leia(cB) limpa()
		se (cB == "x") {
			B = 1
		} senao se (cB == "o") {
			B = 0
		} senao se (cB == " ") {
			B = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		escreva(enunciado, cA, " | ", cB," | C\n--|---|--\n  |   |  \n--|---|--\n  |   |  \n\nC : ") leia(cC) limpa()
		se (cC == "x") {
			C = 1
		} senao se (cC == "o") {
			C = 0
		} senao se (cC == " ") {
			C = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\nD |   |  \n--|---|--\n  |   |  \n\nD : ") leia(cD) limpa()
		se (cD == "x") {
			D = 1
		} senao se (cD == "o") {
			D = 0
		} senao se (cD == " ") {
			D = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | E |  \n--|---|--\n  |   |  \n\nE : ") leia(cE) limpa()
		se (cE == "x") {
			E = 1
		} senao se (cE == "o") {
			E = 0
		} senao se (cE == " ") {
			E = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | ", cE," | F\n--|---|--\n  |   |  \n\nF : ") leia(cF) limpa()
		se (cF == "x") {
			F = 1
		} senao se (cF == "o") {
			F = 0
		} senao se (cF == " ") {
			F = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		
		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | ", cE," | ", cF,"\n--|---|--\nG |   |  \n\nG : ") leia(cG) limpa()
		se (cG == "x") {
			G = 1
		} senao se (cG == "o") {
			G = 0
		} senao se (cG == " ") {
			G = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		
		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | ", cE," | ", cF,"\n--|---|--\n", cG," | H |  \n\nH : ") leia(cH) limpa()
		se (cH == "x") {
			H = 1
		} senao se (cH == "o") {
			H = 0
		} senao se (cH == " ") {
			H = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		
		escreva(enunciado, cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | ", cE," | ", cF,"\n--|---|--\n", cG," | ", cH," | I\n\nI : ") leia(cI) limpa()
		se (cI == "x") {
			I = 1
		} senao se (cI == "o") {
			I = 0
		} senao se (cI == " ") {
			I = 2
		} senao {
			escreva("(!) Erro de entrada: O programa reiniciou-se.\n")
			inicio()
		}

		escreva(cA, " | ", cB," | ", cC,"\n--|---|--\n", cD," | ", cE," | ", cF,"\n--|---|--\n", cG," | ", cH," | ", cI,"\n")

		se ((A == 1 e B == 1 e C == 1) ou (A == 0 e B == 0 e C == 0)) {
			se (A == 1 e B == 1 e C == 1) {
				escreva("\nX : Vitória!\n")
			} senao se (A == 0 e B == 0 e C == 0) {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((D == 1 e E == 1 e F == 1) ou (D == 0 e E == 0 e F == 0)) {
			se (D == 1 e E == 1 e F == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((G == 1 e H == 1 e I == 1) ou (G == 0 e H == 0 e I == 0)) {
			se (G == 1 e H == 1 e I == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((A == 1 e E == 1 e I == 1) ou (A == 0 e E == 0 e I == 0)) {
			se (A == 1 e E == 1 e I == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((C == 1 e E == 1 e G == 1) ou (C == 0 e E == 0 e G == 0)) {
			se (C == 1 e E == 1 e G == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((A == 1 e D == 1 e G == 1) ou (A == 0 e D == 0 e G == 0)) {
			se (A == 1 e D == 1 e G == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((B == 1 e E == 1 e H == 1) ou (B == 0 e E == 0 e H == 0)) {
			se (B == 1 e E == 1 e H == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao se ((C == 1 e F == 1 e I == 1) ou (C == 0 e F == 0 e I == 0)) {
			se (C == 1 e F == 1 e I == 1) {
				escreva("\nX : Vitória!\n")
			} senao {
				escreva("\nO : Vitória!\n")
			}
		} senao {
				escreva("\nEmpate!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 73; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */