#include <stdio.h>
#include <stdlib.h>

extern long int prodintV(int* R, int* S, int n);

int main(void) {
	int n = 4;
	int R[4] = {1,2,3,4};
	int S[4] = {2,3,4,5};
	long int res = prodintV(R,S,n);
	printf("A soma é %d\n", res);
	return 0;
}
