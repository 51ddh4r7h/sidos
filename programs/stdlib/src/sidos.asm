[BITS 32]

section .asm

global print:function
global sidos_getkey:function
global sidos_malloc:function
global sidos_free:function
global sidos_putchar:function
global sidos_process_load_start:function
global sidos_process_get_arguments:function 
global sidos_system:function
global sidos_exit:function

; void print(const char* filename)
print:
    push ebp
    mov ebp, esp
    push dword[ebp+8]
    mov eax, 1 ; Command print
    int 0x80
    add esp, 4
    pop ebp
    ret

; int sidos_getkey()
sidos_getkey:
    push ebp
    mov ebp, esp
    mov eax, 2 ; Command getkey
    int 0x80
    pop ebp
    ret

; void sidos_putchar(char c)
sidos_putchar:
    push ebp
    mov ebp, esp
    mov eax, 3 ; Command putchar
    push dword [ebp+8] ; Variable "c"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void* sidos_malloc(size_t size)
sidos_malloc:
    push ebp
    mov ebp, esp
    mov eax, 4 ; Command malloc (Allocates memory for the process)
    push dword[ebp+8] ; Variable "size"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void sidos_free(void* ptr)
sidos_free:
    push ebp
    mov ebp, esp
    mov eax, 5 ; Command 5 free (Frees the allocated memory for this process)
    push dword[ebp+8] ; Variable "ptr"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void sidos_process_load_start(const char* filename)
sidos_process_load_start:
    push ebp
    mov ebp, esp
    mov eax, 6 ; Command 6 process load start ( stars a process )
    push dword[ebp+8] ; Variable "filename"
    int 0x80
    add esp, 4
    pop ebp
    ret

; int sidos_system(struct command_argument* arguments)
sidos_system:
    push ebp
    mov ebp, esp
    mov eax, 7 ; Command 7 process_system ( runs a system command based on the arguments)
    push dword[ebp+8] ; Variable "arguments"
    int 0x80
    add esp, 4
    pop ebp
    ret


; void sidos_process_get_arguments(struct process_arguments* arguments)
sidos_process_get_arguments:
    push ebp
    mov ebp, esp
    mov eax, 8 ; Command 8 Gets the process arguments
    push dword[ebp+8] ; Variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret

; void sidos_exit()
sidos_exit:
    push ebp
    mov ebp, esp
    mov eax, 9 ; Command 9 process exit
    int 0x80
    pop ebp
    ret