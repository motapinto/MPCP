#include <stdio.h>
#include <stdlib.h>

extern int pal(char *s);

int main(void)
{
	char s[] = "ANANA";

	int pal_return_val = pal(s);

	if(pal_return_val == 1)
		printf("The word is a palindromo\n\n");
	else
		printf("The word is not a palindromo\n\n");

	return EXIT_SUCCESS;
}
