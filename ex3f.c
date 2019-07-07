#include <stdio.h>
#include <stdlib.h>

extern int num_of_words(char *a);

int main(void)
{
	char s[] = "ANANAB ASDAS AD A";

	int word_count = num_of_words(s);

	printf("Number of words: %d\n\n", word_count);

	return EXIT_SUCCESS;
}
