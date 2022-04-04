programa {
inclua biblioteca Matematica --> mat

	inteiro A = 2, B = 2, C = 2, D = 2, E = 2, F = 2, G = 2, H = 2, I = 2, jogadas = 0
	logico vitoria = falso, empate = falso
	caracter pX = 'x', pO = 'o', velha[3][3] = {{' ',' ',' '},{' ',' ',' '},{' ',' ',' '}}
	
	funcao vazio vencer() {
		se ((A == 1 e B == 1 e C == 1) ou (A == 0 e B == 0 e C == 0)) {
			vitoria = verdadeiro
			se (A == 1 e B == 1 e C == 1) {
				escreva("X : Vitória!\n")
			} senao se (A == 0 e B == 0 e C == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((D == 1 e E == 1 e F == 1) ou (D == 0 e E == 0 e F == 0)) {
			vitoria = verdadeiro
			se (D == 1 e E == 1 e F == 1) {
				escreva("X : Vitória!\n")
			} senao se (D == 0 e E == 0 e F == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((G == 1 e H == 1 e I == 1) ou (G == 0 e H == 0 e I == 0)) {
			vitoria = verdadeiro
			se (G == 1 e H == 1 e I == 1) {
				escreva("X : Vitória!\n")
			} senao se (G == 0 e H == 0 e I == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((A == 1 e E == 1 e I == 1) ou (A == 0 e E == 0 e I == 0)) {
			vitoria = verdadeiro
			se (A == 1 e E == 1 e I == 1) {
				escreva("X : Vitória!\n")
			} senao se (A == 0 e E == 0 e I == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((C == 1 e E == 1 e G == 1) ou (C == 0 e E == 0 e G == 0)) {
			vitoria = verdadeiro
			se (C == 1 e E == 1 e G == 1) {
				escreva("X : Vitória!\n")
			} senao se (C == 0 e E == 0 e G == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((A == 1 e D == 1 e G == 1) ou (A == 0 e D == 0 e G == 0)) {
			vitoria = verdadeiro
			se (A == 1 e D == 1 e G == 1) {
				escreva("X : Vitória!\n")
			} senao se (A == 0 e D == 0 e G == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((B == 1 e E == 1 e H == 1) ou (B == 0 e E == 0 e H == 0)) {
			vitoria = verdadeiro
			se (B == 1 e E == 1 e H == 1) {
				escreva("X : Vitória!\n")
			} senao se (B == 0 e E == 0 e H == 0) {
				escreva("O : Vitória!\n")
			}
		} senao se ((C == 1 e F == 1 e I == 1) ou (C == 0 e F == 0 e I == 0)) {
			vitoria = verdadeiro
			se (C == 1 e F == 1 e I == 1) {
				escreva("X : Vitória!\n")
			} senao se (C == 0 e F == 0 e I == 0) {
				escreva("O : Vitória!\n")
			}
		}
	}

	funcao vazio empatar() {
		se (vitoria == falso e jogadas == 9) {
			empate = verdadeiro
			escreva("Empate!\n")
		}
	}
	
	funcao vazio jogo() {
		escolha (pX) {
			caso	'A':
			A = 1
			velha[0][0] = 'x'
			pare
			caso	'B':
			B = 1
			velha[0][1] = 'x'
			pare
			caso	'C':
			C = 1
			velha[0][2] = 'x'
			pare
			caso	'D':
			D = 1
			velha[1][0] = 'x'
			pare
			caso	'E':
			E = 1
			velha[1][1] = 'x'
			pare
			caso	'F':
			F = 1
			velha[1][2] = 'x'
			pare
			caso	'G':
			G = 1
			velha[2][0] = 'x'
			pare
			caso	'H':
			H = 1
			velha[2][1] = 'x'
			pare
			caso	'I':
			I = 1
			velha[2][2] = 'x'
			pare
		}
		escolha (pO) {
			caso	'A':
			A = 0
			velha[0][0] = 'o'
			pare
			caso	'B':
			B = 0
			velha[0][1] = 'o'
			pare
			caso	'C':
			C = 0
			velha[0][2] = 'o'
			pare
			caso	'D':
			D = 0
			velha[1][0] = 'o'
			pare
			caso	'E':
			E = 0
			velha[1][1] = 'o'
			pare
			caso	'F':
			F = 0
			velha[1][2] = 'o'
			pare
			caso	'G':
			G = 0
			velha[2][0] = 'o'
			pare
			caso	'H':
			H = 0
			velha[2][1] = 'o'
			pare
			caso	'I':
			I = 0
			velha[2][2] = 'o'
			pare
		}
	}

	funcao inicio() {
		escreva("A | B | C\n--|---|--\nD | E | F\n--|---|--\nG | H | I\n\n")
		enquanto (vitoria == falso e empate == falso) {
			empatar() jogadas++
			se (vitoria == falso e empate == falso) {
				escreva("Escolha uma posição.\nX : ") leia(pX)
				se (pX != 'A' e pX != 'B' e pX != 'C' e pX != 'D' e pX != 'E' e pX != 'F' e pX != 'G' e pX != 'H' e pX != 'I') {
					limpa()
					escreva("(!) Erro de entrada: O programa reiniciou-se.\n\n")
					inicio()
				}
				jogo() limpa()
				escreva(velha[0][0], " | ", velha[0][1], " | ", velha[0][2], "\n--|---|--\n", velha[1][0], " | ", velha[1][1], " | ", velha[1][2], "\n--|---|--\n", velha[2][0], " | ", velha[2][1], " | ", velha[2][2], "\n\n")
				vencer()
			} senao {
				pare
			}
			empatar() jogadas++
			se (vitoria == falso e empate == falso) {
				escreva("Escolha uma posição.\nO : ") leia(pO)
				se (pO != 'A' e pO != 'B' e pO != 'C' e pO != 'D' e pO != 'E' e pO != 'F' e pO != 'G' e pO != 'H' e pO != 'I') {
					limpa()
					escreva("(!) Erro de entrada: O programa reiniciou-se.\n\n")
					inicio()
				}
				jogo() limpa()
				escreva(velha[0][0], " | ", velha[0][1], " | ", velha[0][2], "\n--|---|--\n", velha[1][0], " | ", velha[1][1], " | ", velha[1][2], "\n--|---|--\n", velha[2][0], " | ", velha[2][1], " | ", velha[2][2], "\n\n")
				vencer()
			} senao {
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */