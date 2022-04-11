programa {
inclua biblioteca Matematica --> mat
	caracter velha[9] = {'A','B','C','D','E','F','G','H','I'}
	caracter tabuleiro[9] = {' ',' ',' ',' ',' ',' ',' ',' ',' '}
	caracter X = 'X', O = 'O'
	logico ganhou = falso, empatou = falso, erro = falso

	funcao vazio pX(caracter i) {
		se (X == O) {
			escreva("Erro de entrada.")
			erro = verdadeiro
		} senao {
			escolha (i) {
				caso velha[0]:
					caso X:
					tabuleiro[0] = 'X'
					pare
					caso O:
					tabuleiro[0] = 'O'
					pare
				pare
				caso velha[1]:
					caso X:
					tabuleiro[1] = 'X'
					pare
					caso O:
					tabuleiro[1] = 'O'
					pare
				pare
			}
		}
	}

	funcao vazio pO(caracter i) {
		se (X == O) {
			escreva("Erro de entrada.")
			erro = verdadeiro
		} senao {
			escolha (O) {
				caso velha[0]:
					tabuleiro[0] = i
				pare
				caso velha[1]:
					tabuleiro[1] = i
				pare
			}
		}
	}

	funcao vazio vitoria(caracter a) {
		se (velha[0] == a e velha[1] == a e velha[2] == a) {
			ganhou = verdadeiro
			escolha (a) {
				caso 'X':
					escreva("X : Vitória!")
				pare
				caso 'O':
					escreva("O : Vitória!")
				pare
			}
		} senao se (velha[3] == a e velha[4] == a e velha[5] == a) {
			ganhou = verdadeiro
			escolha (a) {
				caso 'X':
					escreva("X : Vitória!")
				pare
				caso 'O':
					escreva("O : Vitória!")
				pare
			}
		} senao se (velha[6] == a e velha[7] == a e velha[8] == a) {
			ganhou = verdadeiro
			escolha (a) {
				caso 'X':
					escreva("X : Vitória!")
				pare
				caso 'O':
					escreva("O : Vitória!")
				pare
			}
		}
	}

	funcao vazio empate() {
		
	}
	
	funcao inicio() {
		escreva("A | B | C\n--|---|--\nD | E | F\n--|---|--\nG | H | I\n\n")
		enquanto (ganhou == falso e erro == falso) {
			empate()
			se (ganhou == falso e erro == falso) {
				escreva("Escolha uma posição.\nX : ") leia(X) pX(X) vitoria('X')
				limpa() escreva(tabuleiro[0], " | ", tabuleiro[1], " | ", tabuleiro[2], "\n--|---|--\n", tabuleiro[3], " | ", tabuleiro[4], " | ", tabuleiro[5], "\n--|---|--\n", tabuleiro[6], " | ", tabuleiro[7], " | ", tabuleiro[8], "\n\n")
			}
			empate()
			se (ganhou == falso e erro == falso) {
				escreva("Escolha uma posição.\nO : ") leia(O) pX(O) vitoria('O')
				limpa() escreva(tabuleiro[0], " | ", tabuleiro[1], " | ", tabuleiro[2], "\n--|---|--\n", tabuleiro[3], " | ", tabuleiro[4], " | ", tabuleiro[5], "\n--|---|--\n", tabuleiro[6], " | ", tabuleiro[7], " | ", tabuleiro[8], "\n\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */