/*
 ============================================================================
 Name        : ex3c.c
 Author      : Martim Silva
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int NUM_OF_CHAR(char *a, char c);

int main(void)
{
	char string[] = "Hello World";

	int num_of_vowels = NUM_OF_CHAR(string, 'a');
	num_of_vowels += NUM_OF_CHAR(string, 'e');
	num_of_vowels += NUM_OF_CHAR(string, 'i');
	num_of_vowels += NUM_OF_CHAR(string, 'o');
	num_of_vowels += NUM_OF_CHAR(string, 'u');

	num_of_vowels += NUM_OF_CHAR(string, 'A');
	num_of_vowels += NUM_OF_CHAR(string, 'E');
	num_of_vowels += NUM_OF_CHAR(string, 'I');
	num_of_vowels += NUM_OF_CHAR(string, 'O');
	num_of_vowels += NUM_OF_CHAR(string, 'U');

	printf("Number os vowels = %d\n", num_of_vowels);

	return EXIT_SUCCESS;
}
