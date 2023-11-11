#ifndef SIDOS_H
#define SIDOS_H
#include <stddef.h>
#include <stdbool.h>

void print(const char* filename);
int sidos_getkey();

void* sidos_malloc(size_t size);
void sidos_free(void* ptr);
void sidos_putchar(char c);
int sidos_getkeyblock();
void sidos_terminal_readline(char* out, int max, bool output_while_typing);


#endif