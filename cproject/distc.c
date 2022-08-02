#include <stdio.h>
#include <math.h>

int main() {
    float a1,a2,a3,a4 = 0.0f;
    printf("Enter for linear x1: ");
    scanf("%f", &a1);
    printf("Enter for linear y1: ");
    scanf("%f", &a2);
    printf("Enter for linear x2: ");
    scanf("%f", &a3);
    printf("Enter for linear y2: ");
    scanf("%f", &a4);
    float caculatex = a2-a4;
    float caculatey = a1-a3;
    printf("Linear is: %.2f//%.2f\n", caculatex, caculatey);
    return 0;
}