#include <stdio.h>

int main(int argc, char **argv, char **envp)
{
	size_t i;

	printf("Program has %d command line arguments:\n", argc);

	for (i = 0; i < argc; i++)
		printf("* argument %zu (stored at address %p): %s\n", i, &argv[i], argv[i]);

	printf("\nProgram environment variables:\n");
	i = 0;
	while (1) {
		if (envp[i] == NULL)
			break;
		printf("* (stored at %p) %s\n", &envp[i], envp[i]);
		i++;
	}

	return 0;
}
