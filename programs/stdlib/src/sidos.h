#ifndef SIDOS_H
#define SIDOS_H
#include <stddef.h>

void print(const char* filename);
int getkey();

void* sidos_malloc(size_t size);

#endif