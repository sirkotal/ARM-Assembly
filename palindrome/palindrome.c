#include <stdio.h>
#include <stdlib.h>

extern int palindrome(char *v);

int main() {
    char str[] = "level"; 
    int result = palindrome(str);

    if (result == 1) {
        printf("The string is a palindrome.\n");
    } 
    else {
        printf("The string is not a palindrome.\n");
    }

    return 0;
}