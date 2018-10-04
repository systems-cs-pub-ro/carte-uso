CFLAGS = -Wall -g

.PHONY: all clean

all: main_args main_args_environ

main_args: main_args.o

main_args.o: main_args.c

main_args_environ: main_args_environ.o

main_args_environ.o: main_args_environ.c

clean:
	-rm -f main_args main_args.o
	-rm -f main_args_environ main_args_environ.o
	-rm -f *~
