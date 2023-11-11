#ifndef SIDOS_H
#define SIDOS_H
#include <stddef.h>

void print(const char* filename);
int getkey();

void* sidos_malloc(size_t size);
void sidos_free(void* ptr);
void sidos_putchar(char c);

#endif