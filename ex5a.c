/*
 ============================================================================
 Name        : ex5a.c
 Author      : Martim Silva
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int POS_1_MSB(int num);

int main(void)
{
	int num = 47;
	int pos = POS_1_MSB(47);
	printf("posição do bit 1 mais significativo : %d\n", pos);

	return EXIT_SUCCESS;
}
