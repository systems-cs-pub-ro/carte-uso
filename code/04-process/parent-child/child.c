#include <stdio.h>
#include <signal.h>

int main(void)
{
	printf("child: Child process started. Now going to sleep ...\n");
	sigsuspend(NULL);
}
