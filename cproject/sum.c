#include <stdio.h>

int main() {
    int a=0, b=0, sum=0;
    printf("Enter a value for a: ");
    scanf("%d", &a);
    printf("Enter a value for b: ");
    scanf("%d", &b);
    sum = a + b;
    printf("sum = %d.\n", sum);
    return 0;
}