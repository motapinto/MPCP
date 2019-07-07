#include <stdio.h>
#include <stdlib.h>

extern long MIN_VEC_DOUBLEWORD(long *a, int n);

int main(void)
{
	int dim = 5;
	long v[] = {3, -1, 8, 0, -3};
	long res;
	res = MIN_VEC_DOUBLEWORD(v, dim);
	printf("Min value = %ld\n", res);
	return EXIT_SUCCESS;
}
