#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int main(void)
{
	pid_t pid;

	printf("parent: Parent process started. Creating child process ...\n");

	pid = fork();
	switch (pid) {
	case -1:	/* error */
		perror("fork");
		exit(EXIT_FAILURE);
	case 0:		/* child process */
		execl("./child", "./child", NULL);
		exit(EXIT_FAILURE); /* in case execve() fails */
	}

	/* parent process */
	printf("parent: Child process created. Now going to sleep ...\n");
	sigsuspend(NULL);

	return 0;
}
