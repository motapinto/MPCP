/*
 ============================================================================
 Name        : ex5c.c
 Author      : Martim Silva
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int CAPICUA(int num);

int main(void)
{
	int num = 76767;
	int cap = CAPICUA(num);

	if(cap == 0)
		printf("Numero %d n�o � capicua!\n", num);
	else
		printf("Numero %d � capicua!\n", num);

	return EXIT_SUCCESS;
}
