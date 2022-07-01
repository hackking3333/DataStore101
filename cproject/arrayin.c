#include <stdio.h>

int main() {
    char array1[][1000] = {"1234", "test1234"};
    printf("%s\n", array1[1]);
    return 0;
}