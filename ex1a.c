/*
 ============================================================================
 Name        : ex1.c
 Author      : Martim Silva
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, A-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int SOMA_V32(int *a, int n);

int main(void)
{
	int dim = 5;
	int v[] = {3, -1, 8, 0, -3};
	int res;
	res = SOMA_V32(v, dim);
	printf("Soma dos elementos = %d\n", res);
	return EXIT_SUCCESS;
}
