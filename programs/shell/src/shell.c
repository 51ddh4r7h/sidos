#include "shell.h"
#include "stdio.h"
#include "stdlib.h"
#include "sidos.h"
int main(int argc, char** argv)
{
    print("SidOS v1.0.0\n");
    while(1) 
    {
        print("> ");
        char buf[1024];
        sidos_terminal_readline(buf, sizeof(buf), true);
        sidos_process_load_start(buf);
        
        print("\n");
    }
    return 0;
}