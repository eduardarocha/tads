programa {
inclua biblioteca Matematica --> mat

	cadeia x = " ", o = " ", jogo[] = {" "," "," "," "," "," "," "," "," "}
	inteiro jogadas = 0
	logico ganhou = falso, empatou = falso

	funcao vazio X() {
		se (x == "A" ou x == "a") {
			jogo[0] = "X"
		} senao se (x == "B" ou x == "b") {
			jogo[1] = "X"
		} senao se (x == "C" ou x == "c") {
			jogo[2] = "X"
		} senao se (x == "D" ou x == "d") {
			jogo[3] = "X"
		} senao se (x == "E" ou x == "e") {
			jogo[4] = "X"
		} senao se (x == "F" ou x == "f") {
			jogo[5] = "X"
		} senao se (x == "G" ou x == "g") {
			jogo[6] = "X"
		} senao se (x == "H" ou x == "h") {
			jogo[7] = "X"
		} senao se (x == "I" ou x == "i") {
			jogo[8] = "X"
		} senao {
			limpa() escreva("(!) Erro de entrada. O programa recomeçou.\n\n")
			inicio()
		}
	}
		
	funcao vazio O(){
		se (o == "A" ou o == "a") {
			jogo[0] = "O"
		} senao se (o == "B" ou o == "b") {
			jogo[1] = "O"
		} senao se (o == "C" ou o == "c") {
			jogo[2] = "O"
		} senao se (o == "D" ou o == "d") {
			jogo[3] = "O"
		} senao se (o == "E" ou o == "e") {
			jogo[4] = "O"
		} senao se (o == "F" ou o == "f") {
			jogo[5] = "O"
		} senao se (o == "G" ou o == "g") {
			jogo[6] = "O"
		} senao se (o == "H" ou o == "h") {
			jogo[7] = "O"
		} senao se (o == "I" ou o == "i") {
			jogo[8] = "O"
		} senao {
			limpa() escreva("(!) Erro de entrada. O programa recomeçou.\n\n")
			inicio()
		}
	}

	funcao vazio vitoria() {
		se ((jogo[0] == "X" e jogo[1] == "X" e jogo[2] == "X") ou (jogo[0] == "O" e jogo[1] == "O" e jogo[2] == "O")) {
			ganhou = verdadeiro
			se (jogo[0] == "X" e jogo[1] == "X" e jogo[2] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[0] == "O" e jogo[1] == "O" e jogo[2] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[3] == "X" e jogo[4] == "X" e jogo[5] == "X") ou (jogo[3] == "O" e jogo[4] == "O" e jogo[5] == "O")) {
			ganhou = verdadeiro
			se (jogo[3] == "X" e jogo[4] == "X" e jogo[5] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[3] == "O" e jogo[4] == "O" e jogo[5] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[6] == "X" e jogo[7] == "X" e jogo[8] == "X") ou (jogo[6] == "O" e jogo[7] == "O" e jogo[8] == "O")) {
			ganhou = verdadeiro
			se (jogo[6] == "X" e jogo[7] == "X" e jogo[8] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[6] == "O" e jogo[7] == "O" e jogo[8] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[0] == "X" e jogo[4] == "X" e jogo[8] == "X") ou (jogo[0] == "O" e jogo[4] == "O" e jogo[8] == "O")) {
			ganhou = verdadeiro
			se (jogo[0] == "X" e jogo[4] == "X" e jogo[8] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[0] == "O" e jogo[4] == "O" e jogo[8] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[2] == "X" e jogo[4] == "X" e jogo[6] == "X") ou (jogo[2] == "O" e jogo[4] == "O" e jogo[6] == "O")) {
			ganhou = verdadeiro
			se (jogo[2] == "X" e jogo[4] == "X" e jogo[6] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[2] == "O" e jogo[4] == "O" e jogo[6] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[0] == "X" e jogo[3] == "X" e jogo[6] == "X") ou (jogo[0] == "O" e jogo[3] == "O" e jogo[6] == "O")) {
			ganhou = verdadeiro
			se (jogo[0] == "X" e jogo[3] == "X" e jogo[6] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[0] == "O" e jogo[3] == "O" e jogo[6] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[1] == "X" e jogo[4] == "X" e jogo[7] == "X") ou (jogo[1] == "O" e jogo[4] == "O" e jogo[7] == "O")) {
			ganhou = verdadeiro
			se (jogo[1] == "X" e jogo[4] == "X" e jogo[7] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[1] == "O" e jogo[4] == "O" e jogo[7] == "O") {
				escreva("O : Vitória!\n")
			}
		} senao se ((jogo[2] == "X" e jogo[5] == "X" e jogo[8] == "X") ou (jogo[2] == "O" e jogo[5] == "O" e jogo[8] == "O")) {
			ganhou = verdadeiro
			se (jogo[2] == "X" e jogo[5] == "X" e jogo[8] == "X") {
				escreva("X : Vitória!\n")
			} senao se (jogo[2] == "O" e jogo[5] == "O" e jogo[8] == "O") {
				escreva("O : Vitória!\n")
			}
		}
	}

	funcao vazio empate() {
		jogadas++
		se (ganhou == falso e jogadas > 9) {
			empatou = verdadeiro
			limpa() escreva("As jogadas acabaram... Empate!\n\n")
		}
	}
	
	funcao inicio() {
		escreva("A | B | C\n--|---|--\nD | E | F\n--|---|--\nG | H | I\n\n")
		enquanto (ganhou == falso e empatou == falso) {
			empate()
			se (ganhou == falso e empatou == falso) {
				escreva("Escolha uma posição.\nX : ") leia(x) X()
				limpa() escreva(jogo[0], " | ", jogo[1], " | ", jogo[2], "\n--|---|--\n", jogo[3], " | ", jogo[4], " | ", jogo[5], "\n--|---|--\n", jogo[6], " | ", jogo[7], " | ", jogo[8], "\n\n")
				vitoria()
			}
			empate()
			se (ganhou == falso e empatou == falso) {
				escreva("Escolha uma posição.\nO : ") leia(o) O()
				limpa() escreva(jogo[0], " | ", jogo[1], " | ", jogo[2], "\n--|---|--\n", jogo[3], " | ", jogo[4], " | ", jogo[5], "\n--|---|--\n", jogo[6], " | ", jogo[7], " | ", jogo[8], "\n\n")
				vitoria()
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */