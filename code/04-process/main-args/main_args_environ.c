#include <stdio.h>

extern char **environ;

int main(int argc, char **argv)
{
	size_t i;

	printf("Program has %d command line arguments:\n", argc);

	for (i = 0; i < argc; i++)
		printf("* argument %zu (stored at address %p): %s\n", i, &argv[i], argv[i]);

	printf("\nProgram environment variables:\n");
	i = 0;
	while (1) {
		if (environ[i] == NULL)
			break;
		printf("* (stored at %p) %s\n", &environ[i], environ[i]);
		i++;
	}

	return 0;
}
