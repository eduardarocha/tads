programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro A, B, C, D, E, F, G, H, I
		escreva("Posição A : ") leia(A) escreva("Posição B : ") leia(B) escreva("Posição C : ") leia(C)
		escreva("Posição D : ") leia(D) escreva("Posição E : ") leia(E) escreva("Posição F : ") leia(F)
		escreva("Posição G : ") leia(G) escreva("Posição H : ") leia(H) escreva("Posição I : ") leia(I)

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
 * @POSICAO-CURSOR = 134; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */