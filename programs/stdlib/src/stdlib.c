#include "stdlib.h"
#include "sidos.h"

void* malloc(size_t size)
{
    return sidos_malloc(size);
}

void free(void* ptr)
{
    sidos_free(ptr);
}