#include <stdio.h>

int main() {
    int valuecheck=0;
    printf("Enter your age: ");
    scanf("%d", &valuecheck);
    if (valuecheck >= 13)
    {
        printf("Success\n");
    } else {
        printf("You age is under 13\n");
    };
    return 0;
};