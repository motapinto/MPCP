/*
 ============================================================================
 Name        : ex3a.c
 Author      : Martim Silva
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, A-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int STRING_SIZE(char *a);

int main(void)
{
	char string[] = "Hello World";
	int str_size;
	str_size = STRING_SIZE(string);
	printf("String size = %d\n", str_size);
	return EXIT_SUCCESS;
}
