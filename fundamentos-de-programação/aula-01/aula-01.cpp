/*
Preprocessadores:
	#include <stdio.h> : Biblioteca input/output.
	#include <windows.h> : Biblioteca com declarações para todas as funções na API do Windows.
		system("pause"); : Pausar programa.
*/
#include <stdio.h>
// Subprograma ou função principal
int main(void) {
	/*
	Especificador de formato:
		"%d" : Inteiro.
		"%f" : float.
		"%c" : Caracter.
	& : Endereço de memória.
	*/
	int n1, n2, soma;
	printf("n1: "); scanf("%d", &n1);
	printf("n2: "); scanf("%d", &n2);
	soma = n1 + n2;
	printf("Soma = %d", soma);
	return 0;
}

