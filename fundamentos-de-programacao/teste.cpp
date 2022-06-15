#include <stdio.h>

int main(void) {
    char jogo[3][3], p, x_o;
    bool partida = true;

    for (int n = 1; n <= 9; n++) {
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                jogo[i][j] = char(n);
                printf("%s ", jogo[i][j]);
            }
        }
    }

    while (partida == true) {
        printf("(X) Escolha: "); scanf("%s", &p);
        x_o = 'X';
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                if (jogo[i][j] == p) {
                    jogo[i][j] = x_o;
                }
            }
        }
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                printf("%s ", jogo[i][j]);
            }
        }

        printf("(O) Escolha: "); scanf("%d", &p);
        x_o = 'O';
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                if (jogo[i][j] == p) {
                    jogo[i][j] = x_o;
                }
            }
        }
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                printf("%s ", jogo[i][j]);
            }
        }
    }
}