programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro A, B, C, D, E, F, G, H, I
		
		escreva("A : ") leia(A) escreva("B : ") leia(B) escreva("C : ") leia(C)
		escreva("D : ") leia(D) escreva("E : ") leia(E) escreva("F : ") leia(F)
		escreva("G : ") leia(G) escreva("H : ") leia(H) escreva("I : ") leia(I)
		
		escreva("\n", A, " | ", B," | ", C,"\n--|---|--\n", D," | ", E," | ", F,"\n--|---|--\n", G," | ", H," | ", I,"\n")
		
		se ((A == 1 e B == 1 e C == 1) ou (A == 2 e B == 2 e C == 2)) {
			se (A == 1 e B == 1 e C == 1) {
				escreva("\n1 : Vitória!\n")
			} senao se (A == 2 e B == 2 e C == 2) {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((D == 1 e E == 1 e F == 1) ou (D == 2 e E == 2 e F == 2)) {
			se (D == 1 e E == 1 e F == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((G == 1 e H == 1 e I == 1) ou (G == 2 e H == 2 e I == 2)) {
			se (G == 1 e H == 1 e I == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((A == 1 e E == 1 e I == 1) ou (A == 2 e E == 2 e I == 2)) {
			se (A == 1 e E == 1 e I == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((C == 1 e E == 1 e G == 1) ou (C == 2 e E == 2 e G == 2)) {
			se (C == 1 e E == 1 e G == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((A == 1 e D == 1 e G == 1) ou (A == 2 e D == 2 e G == 2)) {
			se (A == 1 e D == 1 e G == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((B == 1 e E == 1 e H == 1) ou (B == 2 e E == 2 e H == 2)) {
			se (B == 1 e E == 1 e H == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
			}
		} senao se ((C == 1 e F == 1 e I == 1) ou (C == 2 e F == 2 e I == 2)) {
			se (C == 1 e F == 1 e I == 1) {
				escreva("\n1 : Vitória!\n")
			} senao {
				escreva("\n2 : Vitória!\n")
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
 * @POSICAO-CURSOR = 66; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */