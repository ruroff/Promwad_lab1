# Makefile 

binary: hello.o libgoodbye.a libhello.so
	gcc -o binary hello.o -L. -lgoodbye -lhello -Wl,-rpath,.

hello.o: hello.c
	gcc -c hello.c

libhello.so: libhello.o
	gcc -shared -o libhello.so libhello.o

libgoodbye.a: libgoodbye.o
	ar cr libgoodbye.a libgoodbye.o

libhello.o: libhello.c
	gcc -c -fPIC libhello.c

libgoodbye.o: libgoodbye.c
	gcc -c libgoodbye.c

all: binary
	

libs: libgoodbye.a libhello.so


clean:
	rm -f *.a *.o *.so binary



