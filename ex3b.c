/*
 ============================================================================
 Name        : ex3b.c
 Author      : Martim Silva
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, A-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int NUM_OF_CHAR(char a[], char c);

int main(void)
{
	char string[] = "Hello World";

	int num_of_ls = NUM_OF_CHAR(string, 'l');

	printf("Number os l's = %d\n", num_of_ls);
	return EXIT_SUCCESS;
}
