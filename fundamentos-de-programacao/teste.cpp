# include <stdio.h>
int main(void) {
    int idade = 1, pessoas = 0, soma = 0, menor, maior;
    float media;
    printf("Idade: "); scanf("%d", &idade);
    maior = idade; menor = idade;
    while (idade != 0) {
        printf("Idade: "); scanf("%d", &idade);
        if (idade != 0) {
            soma += idade; pessoas += 1;
            if (maior < idade) {maior = idade;}
            if (idade < menor) {menor = idade;}
        }
    }
    media = soma / pessoas;
    printf("\nTotal: %d\nMedia: %.2f\nMaior: %d\nMenor: %d", pessoas, media, maior, menor);
}