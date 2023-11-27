[BITS 32]

global _start
extern c_start
extern sidos_exit

section .asm

_start:
    call c_start
    call sidos_exit
    ret