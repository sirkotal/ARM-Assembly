#include <stdio.h>
#include <stdlib.h>

unsigned int split (unsigned int dim , int *I, int *N, unsigned int *P);

int main(void) {
    int vct[5] = {2, -76, 120, -1, 5};
    int n[5] = {0};
    int p[5] = {0};
    double len = 5;

    unsigned int res = split(len, vct, n, p);
    
    printf("There are %u negative numbers.", res);
    
    return EXIT_SUCCESS;
}