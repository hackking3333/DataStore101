#include <stdio.h>

int main() {
    int n1=0, n2=0, n3=0, n4=0;
    float avg=0;
    printf("Enter for n1 value: ");
    scanf("%d", &n1);
    printf("Enter for n2 value: ");
    scanf("%d", &n2);
    printf("Enter for n3 value: ");
    scanf("%d", &n3);
    printf("Enter for n4 value: ");
    scanf("%d", &n4);
    avg = (((float)n1 + (float)n2 + (float)n3 + (float)n4) / (float)n4);
    printf("avg = %.1f\n", avg);
    return 0;
}