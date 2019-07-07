#include <stdio.h>
#include <stdlib.h>

extern int upper_case(char *s);

int main(void)
{
	char s[] = "AbCdE";

	int upper_case_num = upper_case(s);
	printf("Number of upper case letters: %d\n", upper_case_num);
	return EXIT_SUCCESS;
}
