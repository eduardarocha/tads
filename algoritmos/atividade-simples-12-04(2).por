programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		caracter cA, cB, cC, cD, cE, cF, cG, cH, cI
		inteiro A = 2, B = 2, C = 2, D = 2, E = 2, F = 2, G = 2, H = 2, I = 2
		
		escreva("A |   |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  \n\nA : ") leia(cA)
		escreva("\n", cA, " | B |  \n--|---|--\n  |   |  \n--|---|--\n  |   |  \n\nB : ") leia(cB)
		escreva("Posição C : ") leia(cC)
		escreva("Posição D : ") leia(cD) escreva("Posição E : ") leia(cE) escreva("Posição F : ") leia(cF)
		escreva("Posição G : ") leia(cG) escreva("Posição H : ") leia(cH) escreva("Posição I : ") leia(cI)

		se (cA == 'X') {
			A = 1
		} senao se (cA == 'O') {
			A = 0
		} senao se (cA == '-') {
			A = 2	
		}
		se (cB == 'X') {
			B = 1
		} senao se (cB == 'O') {
			B = 0
		} senao se (cB == '-') {
			B = 2
		}
		se (cC == 'X') {
			C = 1
		} senao se (cC == 'O') {
			C = 0
		} senao se (cC == '-') {
			C = 2
		}
		se (cD == 'X') {
			D = 1
		} senao se (cD == 'O') {
			D = 0
		} senao se (cD == '-') {
			D = 2
		}
		se (cE == 'X') {
			E = 1
		} senao se (cE == 'O') {
			E = 0
		} senao se (cE == '-') {
			E = 2
		}
		se (cF == 'X') {
			F = 1
		} senao se (cF == 'O') {
			F = 0
		} senao se (cF == '-') {
			F = 2
		}
		se (cG == 'X') {
			G = 1
		} senao se (cG == 'O') {
			G = 0
		} senao se (cG == '-') {
			G = 2
		}
		se (cH == 'X') {
			H = 1
		} senao se (cH == 'O') {
			H = 0
		} senao se (cH == '-') {
			H = 2
		}
		se (cI == 'X') {
			I = 1
		} senao se (cI == 'O') {
			I = 0
		} senao se (cI == '-') {
			I = 2
		}
		
		se ((A == 1 e B == 1 e C == 1) ou (A == 0 e B == 0 e C == 0)) {
			se (A == 1 e B == 1 e C == 1) {
				escreva("\nX: Vitória!")
			} senao se (A == 0 e B == 0 e C == 0) {
				escreva("\nO: Vitória!")
			}
		} senao se ((D == 1 e E == 1 e F == 1) ou (D == 0 e E == 0 e F == 0)) {
			se (D == 1 e E == 1 e F == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao se ((G == 1 e H == 1 e I == 1) ou (G == 0 e H == 0 e I == 0)) {
			se (G == 1 e H == 1 e I == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao se ((A == 1 e E == 1 e I == 1) ou (A == 0 e E == 0 e I == 0)) {
			se (A == 1 e E == 1 e I == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao se ((C == 1 e E == 1 e G == 1) ou (C == 0 e E == 0 e G == 0)) {
			se (C == 1 e E == 1 e G == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao se ((A == 1 e D == 1 e G == 1) ou (A == 0 e D == 0 e G == 0)) {
			se (A == 1 e D == 1 e G == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao se ((B == 1 e E == 1 e H == 1) ou (B == 0 e E == 0 e H == 0)) {
			se (B == 1 e E == 1 e H == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		} senao {
			se (C == 1 e F == 1 e I == 1) {
				escreva("\nX: Vitória!")
			} senao {
				escreva("\nO: Vitória!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */