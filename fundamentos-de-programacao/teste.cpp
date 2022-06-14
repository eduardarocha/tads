#include <stdio.h>
char posicao(char jogo[3][3], char p, char xo);

int main(void) {
    char jogo[3][3] = {' ',' ',' ',' ',' ',' ',' ',' ',' '}, p[1] = {' '};
    bool partida = true;

    while (partida == true) {
        printf("(X) Escolha: "); scanf("%s", &p[1]);
        posicao(jogo, p[1], 'X');
        
        printf("\n%s | %s | %s\n---|----|---\n%s | %s | %s\n---|----|---\n%s | %s | %s\n\n", jogo[0][0], jogo[0][1], jogo[0][2], jogo[1][0], jogo[1][1], jogo[1][2], jogo[2][0], jogo[2][1], jogo[2][2]);

        printf("(O) Escolha: "); scanf("%s", &p);
        posicao(jogo, p[1], 'O');

        printf("\n%s | %s | %s\n---|----|---\n%s | %s | %s\n---|----|---\n%s | %s | %s\n\n", jogo[0][0], jogo[0][1], jogo[0][2], jogo[1][0], jogo[1][1], jogo[1][2], jogo[2][0], jogo[2][1], jogo[2][2]);
    }
}

char posicao(char jogo[3][3], char p, char xo) {
    switch (p) {
        case 'a': return jogo[0][0] = xo; break;
        case 'b': return jogo[0][1] = xo; break;
        case 'c': return jogo[0][2] = xo; break;
        case 'd': return jogo[1][0] = xo; break;
        case 'e': return jogo[1][1] = xo; break;
        case 'f': return jogo[1][2] = xo; break;
        case 'g': return jogo[2][0] = xo; break;
        case 'h': return jogo[2][1] = xo; break;
        case 'i': return jogo[2][2] = xo; break;
    }
}

/*

0,0  0,1  0,2
1,0  1,1  1,2
2,0  2,1  2,2


int posicao(int xo, int *i, int *j) {
    int jogo[3][3] = {2, 2, 2, 2, 2, 2, 2, 2, 2};
    if (n == *i && m == *j) { jogo[*i][*j] = xo; }

    printf("\n%d | %d | %d\n---|----|---\n%d | %d | %d\n---|----|---\n%d | %d | %d\n\n", jogo[0][0], jogo[0][1], jogo[0][2], jogo[1][0], jogo[1][1], jogo[1][2], jogo[2][0], jogo[2][1], jogo[2][2]);
}


# include <stdio.h>

int posicao(int x_o, char *p);

int main(void) {
    int jogo[3][3];
    char p, jogoDaVelha[3][3] = {' ',' ',' ',' ',' ',' ',' ',' ',' '};
    bool vitoria = false;

    printf("\nA  |  B  |  C\n---|-----|---\nD  |  E  |  F\n---|-----|---\nG  |  H  |  I\n\n");

    while (vitoria == false) {
        printf("(X) Escolha: "); scanf("%s", &p);
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                if (jogo[i][j] == 2) { jogoDaVelha[i][j] = ' '; }
                if (jogo[i][j] == posicao(1, &p)) { jogo[i][j] = posicao(1, &p); jogoDaVelha[i][j] = 'X'; }
            }
        }
        printf("\n%s  |  %s  |  %s\n---|-----|---\n%s  |  %s  |  %s\n---|-----|---\n%s  |  %s  |  %s\n\n", jogoDaVelha[0][0], jogoDaVelha[0][1], jogoDaVelha[0][2], jogoDaVelha[1][0], jogoDaVelha[1][1], jogoDaVelha[1][2], jogoDaVelha[2][0], jogoDaVelha[2][1], jogoDaVelha[2][2]);

        printf("(O) Escolha: "); scanf("%s", &p);
        for (int i = 0; i <= 2; i++) {
            for (int j = 0; j <= 2; j++) {
                if (jogo[i][j] == posicao(0, &p)) { jogo[i][j] = posicao(1, &p); jogoDaVelha[i][j] = 'O'; }
            }
        }
        printf("\n%s  |  %s  |  %s\n---|-----|---\n%s  |  %s  |  %s\n---|-----|---\n%s  |  %s  |  %s\n\n", jogoDaVelha[0][0], jogoDaVelha[0][1], jogoDaVelha[0][2], jogoDaVelha[1][0], jogoDaVelha[1][1], jogoDaVelha[1][2], jogoDaVelha[2][0], jogoDaVelha[2][1], jogoDaVelha[2][2]);
    }
}

int posicao(int x_o, char *p) {
    int jogo[3][3];
    switch (*p) {
        case 'a': jogo[0][0] = x_o; return jogo[0][0]; break;
        case 'b': jogo[0][1] = x_o; return jogo[0][1]; break;
        case 'c': jogo[0][2] = x_o; return jogo[0][2]; break;
        case 'd': jogo[1][0] = x_o; return jogo[1][0]; break;
        case 'e': jogo[1][1] = x_o; return jogo[1][1]; break;
        case 'f': jogo[1][2] = x_o; return jogo[1][2]; break;
        case 'g': jogo[2][0] = x_o; return jogo[2][0]; break;
        case 'h': jogo[2][1] = x_o; return jogo[2][1]; break;
        case 'i': jogo[2][2] = x_o; return jogo[2][2]; break;
    }
}
*/