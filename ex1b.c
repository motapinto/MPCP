/*
 ============================================================================
 Name        : ex1b.c
 Author      : Martim Silva
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, A-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern long SOMA_V64(long *a, int n); //substituir int por long se o vetor tivesse valores de 64 bits.

int main(void)
{
	int dim = 5;
	long v[] = {3, -1, 8, 0, -3}; //substituir int por long
	long res; //substituir int por long
	res = SOMA_V64(v, dim);
	printf("Soma dos elementos = %ld\n", res); //substituir %d por %ld
	return EXIT_SUCCESS;
}
