#include <stdio.h>

int main() {
    float num1, num2, num3 = 0.0f;
    printf("Enter the first number: ");
    scanf("%f", num1);
    printf("Enter the second number: ");
    scanf("%f", num2);
    printf("Enter the third number: ");
    scanf("%f", num3);
    if (num1 >= num2 && num1 <= num3) {
        printf("The minimum number is: %f", num1);
    } else if (num2 >= num3 && num2 <= num3) {
        printf("The minimum number is: %f", num2);
    } else if (num3 >= num1 && num3 <= num1) {
        printf("The minimum number is: %f", num2);
    };
    return 0;
};