# include <stdio.h>
int numeros(int *a, int *b);
int main(void) {
	for (int i = 0; i < 2; i++) {
		static int a, b;
		printf("a = "); scanf("%d", &a);
		printf("b = "); scanf("%d", &b);
		printf("Retorno de numeros(&a, &b): %d\n", numeros(&a, &b));
		int maior, menor;
		if (a > b) {maior = a; menor = b;} else {maior = b; menor = a;}
		printf("%d maior que %d", maior, menor);
	}
return 0; }
int numeros(int *a, int *b) {
	if (*a % 5 == 0) {*a += 1;} else {*a -= 2;}
	if (*b % 3 == 0) {*b += 7;}
	if (*a > *b) {return *a;} else {return *b;}
}