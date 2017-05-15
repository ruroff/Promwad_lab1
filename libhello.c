/* libhello.c */
#include <stdio.h>
#include "world.h"
#include <string.h>

char* hello ()
{
       
		static char hello_world[20] = "Hello World\n";
        return hello_world;
}