#ifndef SIDOS_H
#define SIDOS_H
#include <stddef.h>
#include <stdbool.h>


struct command_argument
{
    char argument[512];
    struct command_argument* next;
};

void print(const char* filename);
int sidos_getkey();

void* sidos_malloc(size_t size);
void sidos_free(void* ptr);
void sidos_putchar(char c);
int sidos_getkeyblock();
void sidos_terminal_readline(char* out, int max, bool output_while_typing);
void sidos_process_load_start(const char* filename);
struct command_argument* sidos_parse_command(const char* command, int max);

#endif