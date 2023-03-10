#include <stdio.h>
#include <stdlib.h>

extern double dist(double px, double py, double qx, double qy);

int main(void)
{
   double px = 3.0, py = 1.5, qx = 4.0, qy = 2.75;
   double res;

   res = dist(px,py,qx,qy);
   printf("O valor � %f", res);
   return EXIT_SUCCESS;
}
