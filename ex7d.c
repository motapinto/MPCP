/*
 ============================================================================
 Name        : ex7d.c
 Author      : Martim Silva
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int PROD_INT(int vec1[], int vec2[], int n);

int main(void)
{
	int vec1[] = {5, 4, 3, 2, 1};
	int vec2[] = {1, 2, 3, 4, 5};
	int res = PROD_INT(vec1, vec2, 5);

	printf("produto interno = %d\n", res);

	return EXIT_SUCCESS;
}
