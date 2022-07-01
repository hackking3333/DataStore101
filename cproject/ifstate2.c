#include <stdio.h>
#include <math.h>

int main() {
    int number;
    printf("Enter number value: ");
    scanf("%d", &number);
    if (number%2 == 0) {
        printf("%d is an even number. %d^2 = %.0f\n", number, number, pow((float)number, 2.0));
    } else {
        printf("%d is an odd number.  %d^3 = %.0f\n", number, number, pow((float)number, 3.0));
    };
};