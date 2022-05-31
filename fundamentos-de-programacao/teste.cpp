#include <stdio.h>
#include <windows.h>

int main(void) {
    int id, h, min;
    do {
        printf("ID: "); scanf("%d", &id);
        if (id != 0) {
            printf("Tempo estacionado: "); scanf("%d", &h); system("cls");
            printf("ID: %d\nTempo estacionado: %dh", id, h); scanf("%d", &min);
        }
    } while (id != 0);
}

