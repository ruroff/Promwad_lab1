# Makefile 

binary: hello.o libgoodbye.a libhello.a
	gcc -o binary hello.o -L. -lgoodbye -lhello

hello.o: hello.c
	gcc -c hello.c

libhello.a: libhello.o
	ar cr libhello.a libhello.o

libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o

libhello.o: libhello.c
	gcc -c -fPIC libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

all: binary
	

libs: libgoodbye.a libhello.a


clean:
	rm -f *.a *.o *.so binary



