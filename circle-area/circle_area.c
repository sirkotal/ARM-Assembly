#include <stdio.h>
#include <stdlib.h>

extern double radius(double r);

int main(void)
{
   double a = 3.0;
   double res;

   res = radius(a);
   printf("O valor é %f", res);
   return EXIT_SUCCESS;
}
