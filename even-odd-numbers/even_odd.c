#include <stdio.h>
#include <stdlib.h>

extern int even_odd_vect(int v[], int nelem);

int main(void) {
   int vct[3] = {0, 0, 1};
   double len = 3;

   int res = even_odd_vect(vct, len);
   if (res > 0) {
    printf("There are more even numbers -> %d", abs(res));
   }
   else {
    printf("There are more odd numbers -> %d", abs(res));
   }
   return EXIT_SUCCESS;
}