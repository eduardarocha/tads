programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro A, B, C, D, E, F, G, H, I
		escreva("Superior-Esquerdo: A = ") leia(A) escreva("Superior-Meio: B = ") leia(B) escreva("Superior-Direito: C = ") leia(C)
		escreva("Meio-Esquerdo: D = ") leia(D) escreva("Meio-Meio: E = ") leia(E) escreva("Meio-Direito: F = ") leia(F)
		escreva("Inferior-Esquerdo: G = ") leia(G) escreva("Inferior-Meio: H = ") leia(H) escreva("Inferior-Direito: I = ") leia(I)

		se ((A == 1 e B == 1 e C == 1) ou (A == 0 e B == 0 e C == 0)) {
			se (A == 1 e B == 1 e C == 1) {
				escreva("\nX: Vitória!")
			} senao {
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
 * @POSICAO-CURSOR = 1212; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */