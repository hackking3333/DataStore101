#include <stdio.h>

int chat(char sender[], char str[]) {
    char strscanf[] = "";
    printf("%s: ", sender);
    scanf("%d", strscanf);
    chat(sender, strscanf);
};

int main() {
    char sender[] = "Pum";
    char strscanf[] = "";
    printf("%s: ", sender);
    scanf("%d", strscanf);
    chat(sender, strscanf);
    return 0;
};