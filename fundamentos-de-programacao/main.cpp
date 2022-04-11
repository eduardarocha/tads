# include <stdio.h>
int main(void) {
    float velocidade;
    printf("Velocidade dos ventos (km/h): "); scanf("%f", &velocidade);

    if (velocidade >= 62 and velocidade <= 119) {
        printf("Tempestade tropical");
    } else {
        if (velocidade > 119 and velocidade <= 154) {
            printf("Furacão de categoria 1");
        } else {
            if (velocidade > 154 and velocidade <= 178) {
                printf("Furacão de categoria 2");
            } else {
                if (velocidade > 178 and velocidade <= 210) {
                    printf("Furacão de categoria 3");
                } else {
                    if (velocidade > 210 and velocidade <= 250) {
                        printf("Furacão de categoria 4");
                    } else {
                        printf("Furacão de categoria 5");
                    }
                }
            }
        }
    }
    return 0;
}