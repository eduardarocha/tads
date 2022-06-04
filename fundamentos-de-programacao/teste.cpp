# include <stdio.h>
int main(void) {
    int m[3][3], dp[3], ds[3], a = 0, b = 0;

    for (int i = 0; i <= 2; i++) {
        for (int j = 0; j <= 2; j++) {
            printf("(%d, %d): ", i, j); scanf("%d", &m[i][j]);
            if (i == j) {dp[a] = m[i][j]; a++;}
            if (i + j == 2) {ds[b] = m[i][j]; b++;}
        }
    }
    
    printf("\nDiagonal principal\n");
    for (int i = a; i > 0; i--) {
        printf("%d\n", dp[i]);
    }
    printf("\nDiagonal secundaria\n");
    for (int i = b; i > 0; i--) {
        printf("%d\n", ds[i]);
    }
}