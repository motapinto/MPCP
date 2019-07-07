#include <stdio.h>
#include <stdlib.h>

extern long MED_VEC_DOUBLEWORD(long *a, int n, long *resto);

int main(void)
{
	long dim = 5, quoc, resto, soma;
	long v[] = {3, -1, 8, 0, -3};

	quoc = MED_VEC_DOUBLEWORD(v, dim, &resto);
	soma = quoc*dim + resto;

	printf("Quociente = %ld\n", quoc);
	printf("Resto = %ld\n", resto);
	printf("Media = %f\n\n", (float)soma/dim);
	return EXIT_SUCCESS;
}
