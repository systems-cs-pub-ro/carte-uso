CFLAGS = -Wall -g

.PHONY: all clean

all: parent child

parent: parent.o

parent.o: parent.c

child: child.o

child.o: child.c

clean:
	-rm -f parent parent.o
	-rm -f child child.o
	-rm -f *~
