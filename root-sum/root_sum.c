#include <stdio.h>
#include <stdlib.h>

extern double s2sum(int a, double b);

int main(void)
{
   int x = 7; double y = 7.1;
   double res;

   res = s2sum(x,y);
   printf("O valor é %f", res);
   return EXIT_SUCCESS;
}
