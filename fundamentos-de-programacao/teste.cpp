# include <stdio.h>
int maior(int *a, int *b);

int main(void) {
	static int a, b;
	printf("a = "); scanf("%d", &a);
	printf("b = "); scanf("%d", &b);
	numeros(&a, &b);
}

int numeros( int *a, int *b) {
	if (a % 5 == 0) {
		a++;
	} else {
		a -= 2;
	}
	if (b % 3 == 0) {
		b += 7;
	}
}
