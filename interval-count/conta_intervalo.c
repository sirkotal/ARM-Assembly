#include <stdio.h>
#include <stdlib.h>

extern long int conta_intervalo(float *V, long int n, float a, float b);

int main(void)
{
   float V[6]= {2.0, 3.0, 4.0, 5.0, 1.0, 9.0};
   long int n = 6;
   float a = 3.0;
   float b = 5.5;

   long int res;
   res = conta_intervalo(V, n, a, b);
   printf("O valor é %ld", res);
   return EXIT_SUCCESS;
}
