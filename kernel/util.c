#include "globals.h"
#include "util.h"

extern void hang(void);

void kputc(char ch) 
{
    u8 old_text_loc = *IO_TTY_LOC;
    *IO_TTY_CHAR = (u8)ch;
    *IO_TTY_LOC = old_text_loc + 1;
    *IO_TTY_WRITE = 1;
}

void kputs(const char* str) 
{
    u8 OLD_TTY_LOC = *IO_TTY_LOC;
    while (*str++)
    {
        *IO_TTY_CHAR = *str;
        *IO_TTY_LOC = ++OLD_TTY_LOC;
        *IO_TTY_WRITE = 1;
    }
}

void kpanic(const char* cause)
{
    *IO_AUDIO = 255;
    kputs(cause);
    asm volatile("j hang");
}