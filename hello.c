/* hello.c */
#include <stdio.h>
#include <string.h>
#include "world.h"


int main (void)
{

		char a[20],b[20];
    	strcpy(a, hello());
        printf("%s", a);
        strcpy(b, goodbye ());
        printf("%s", b);
        return 0;
}