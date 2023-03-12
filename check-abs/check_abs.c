#include <stdio.h>
#include <stdlib.h>

extern int CheckABS(int x, int sz, int *seq);

int main(void)
{
   int x = 20, sz = 8;
   int ve[] = {7, -8, -23, 56, 20, -10, 0, 40};
   int res;

   res = CheckABS(x, sz, ve);
   printf("Foram modificados %d elementos da sequencia ve[]", res);
   // for the provided example, the result output should be 3
   return EXIT_SUCCESS;
}
