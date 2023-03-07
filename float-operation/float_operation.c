#include <stdio.h>
#include <stdlib.h>

extern float equation(float a, float b, float c, float d);

int main(void)
{
   float a = 4.0, b = 2.2, c = 3.1, d = 5.0;
   float res;

   res = equation(a,b,c,d);
   printf("O valor é %f", res);
   return EXIT_SUCCESS;
}
