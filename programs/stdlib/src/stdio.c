#include "stdio.h"
#include "sidos.h"

int putchar(int c)
{
    sidos_putchar((char)c);
    return 0;
}