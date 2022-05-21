# include <stdio.h>
int calc_minutos(int h1, int m1, int h2, int m2);

int main(void) {
    int h1, m1, h2, m2;
    printf("Hora 1: "); scanf("%d", h1);
    printf("Minuto 1: "); scanf("%d", m1);
    printf("Hora 2: "); scanf("%d", h2);
    printf("Minuto 2: "); scanf("%d", m2);
    calc_minutos(h1, m1, h2, m2);
return 0; }

int calc_minutos(int h1, int m1, int h2, int m2) {
    int minutos = ((h2 - h1) * 60) + (m2 - m1);
return minutos; }