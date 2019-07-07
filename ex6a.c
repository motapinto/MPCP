/*
 ============================================================================
 Name        : ex6a.c
 Author      : Martim Silva
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int LSL_8(int num);

int main(void)
{
	int num = 24;
	int res = LSL_8(24);

	printf("LSL_8 de 24 = %d\n", res);

	return EXIT_SUCCESS;
}
