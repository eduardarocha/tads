programa {
inclua biblioteca Matematica --> mat

	inteiro A = 2, B = 2, C = 2, D = 2, E = 2, F = 2, G = 2, H = 2, I = 2, vitoria = 0
	caracter pX = 'x', pO = 'o'
	
	funcao vazio vencedor() {
			se ((A == 1 e B == 1 e C == 1) ou (A == 0 e B == 0 e C == 0)) {
				se (A == 1 e B == 1 e C == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((D == 1 e E == 1 e F == 1) ou (D == 0 e E == 0 e F == 0)) {
				se (D == 1 e E == 1 e F == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((G == 1 e H == 1 e I == 1) ou (G == 0 e H == 0 e I == 0)) {
				se (G == 1 e H == 1 e I == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((A == 1 e E == 1 e I == 1) ou (A == 0 e E == 0 e I == 0)) {
				se (A == 1 e E == 1 e I == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((C == 1 e E == 1 e G == 1) ou (C == 0 e E == 0 e G == 0)) {
				se (C == 1 e E == 1 e G == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((A == 1 e D == 1 e G == 1) ou (A == 0 e D == 0 e G == 0)) {
				se (A == 1 e D == 1 e G == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((B == 1 e E == 1 e H == 1) ou (B == 0 e E == 0 e H == 0)) {
				se (B == 1 e E == 1 e H == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			} senao se ((C == 1 e F == 1 e I == 1) ou (C == 0 e F == 0 e I == 0)) {
				se (C == 1 e F == 1 e I == 1) {
					escreva("\nX: Vitória!")
					vitoria = 1
				} senao {
					escreva("\nO: Vitória!")
					vitoria = 1
				}
			}
		}
		
	funcao vazio posicao_X() {		
		se (pX == 'A') {
			A = 1
		} senao se (pX == 'B') {
			B = 1
		} senao se (pX == 'C') {
			C = 1
		} senao se (pX == 'D') {
			D = 1
		} senao se (pX == 'E') {
			E = 1
		} senao se (pX == 'F') {
			F = 1
		} senao se (pX == 'G') {
			G = 1
		} senao se (pX == 'H') {
			H = 1
		} senao se (pX == 'I') {
			I = 1
		}
	}

	funcao vazio posicao_O() {		
		se (pO == 'A') {
			A = 1
		} senao se (pO == 'B') {
			B = 1
		} senao se (pO == 'C') {
			C = 1
		} senao se (pO == 'D') {
			D = 1
		} senao se (pO == 'E') {
			E = 1
		} senao se (pO == 'F') {
			F = 1
		} senao se (pO == 'G') {
			G = 1
		} senao se (pO == 'H') {
			H = 1
		} senao se (pO == 'I') {
			I = 1
		}
	}

	funcao vazio jogo() {
		posicao_X()
		posicao_O()
	}
	
	funcao inicio() {
		escreva("\nA | B | C\n--|---|--\nD | E | F\n--|---|--\nG | H | I\n")
		faca {
			escreva("\nX : Escolha uma posição: ") leia(pX) posicao_X()
			vencedor()
			escreva("\nO : Escolha uma posição: ") leia(pO) posicao_O()
			vencedor()
		} enquanto (vitoria == 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3011; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */