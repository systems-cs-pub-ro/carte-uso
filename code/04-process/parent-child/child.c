#include <stdio.h>
#include <signal.h>

int main(void)
{
	sigset_t empty;

	printf("child: Child process started. Now going to sleep ...\n");
	sigemptyset(&empty);
	sigsuspend(&empty);

	return 0;
}
