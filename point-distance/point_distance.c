#include <stdio.h>
#include <stdlib.h>

extern double dist(double x1, double y1, double x2, double y2);

int main(void)
{
   double x1 = 3.0, y1 = 1.5, x2 = 4.0, y2 = 2.75;
   double res;

   res = dist(x1,y1,x2,y2);
   printf("O valor � %f", res);
   return EXIT_SUCCESS;
}
