/*
 ============================================================================
 Name        : ex2a.c
 Author      : Martim Silva
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, A-style
 ============================================================================
 */

//word : int(C) 32 bits
//2a)o valor máximo de um vetor com dados do tipo word.

#include <stdio.h>
#include <stdlib.h>

extern int MAX_VEC_WORD(int *a, int n);

int main(void)
{
	int dim = 5;
	int v[] = {3, -1, 8, 0, -3};
	int res;
	res = MAX_VEC_WORD(v, dim);
	printf("Valor minimo = %d\n", res);
	return EXIT_SUCCESS;
}
