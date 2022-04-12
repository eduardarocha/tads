programa {
inclua biblioteca Matematica --> mat
	funcao inicio() {
		inteiro A, B, C, D, E, F, G, H, I
		escreva("A B C D E F G H I\n") leia(A, B, C, D, E, F, G, H, I)
		 
		escreva("\n", A, " | ", B," | ", C,"\n--|---|--\n", D," | ", E," | ", F,"\n--|---|--\n", G," | ", H," | ", I,"\n")
		
	     se ((A == 1 e B == 1 e C == 1) ou (D == 1 e E == 1 e F == 1) ou (G == 1 e H == 1 e I == 1) ou (A == 1 e E == 1 e I == 1) ou (C == 1 e E == 1 e G == 1) ou (A == 1 e D == 1 e G == 1) ou (B == 1 e E == 1 e H == 1) ou (C == 1 e F == 1 e I == 1)) {
	     	escreva("\n1 : Vitória!\n")
	     } senao se ((A == 2 e B == 2 e C == 2) ou (D == 2 e E == 2 e F == 2) ou (G == 2 e H == 2 e I == 2) ou (A == 2 e E == 2 e I == 2) ou (C == 2 e E == 2 e G == 2) ou (A == 2 e D == 2 e G == 2) ou (B == 2 e E == 2 e H == 2) ou (C == 2 e F == 2 e I == 2)) {
	          escreva("\n2 : Vitória!\n")
	     } senao {
	          escreva("\nEmpate!\n")
		}
	}
}