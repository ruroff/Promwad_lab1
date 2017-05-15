/* libgoodbye.c */
#include <stdio.h>
#include <string.h>
#include "world.h"


char* goodbye ()
{
        static char gb[20] = "Goodbye World\n";
        return gb;
}