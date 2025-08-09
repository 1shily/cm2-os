#include "globals.h"
#include "util.h"

//extern void hang(void);

void kputc(char ch) 
{
    if (*IO_TTY_LOC == 255)
    {
        clear_tty
    }
    
    u8 old_text_loc = *IO_TTY_LOC;
    
    if (ch == '\n')
    {
        *IO_TTY_LOC = (old_text_loc + 32) & 0b11100000; 
        return;
    }

    *IO_TTY_CHAR = (u8)ch;
    *IO_TTY_LOC = old_text_loc + 1;
    *IO_TTY_WRITE = 1;
}

void kputs(const char* str) 
{
    while (*str)
    {
        if (*IO_TTY_LOC == 255) 
        {
            clear_tty
        }

        if (*str == '\n')
        {
            *IO_TTY_LOC = ((*IO_TTY_LOC + 32) & 0b11100000);
            str++;
            continue;
        }

        *IO_TTY_CHAR = (u8)(*str++);
        *IO_TTY_LOC = *IO_TTY_LOC + 1;
        *IO_TTY_WRITE = 1;
    }
}

int strcmp(const char *s1, const char *s2) 
{
    while (*s1 && (*s1 == *s2)) {
        s1++;
        s2++;
    }
    return (unsigned char)*s1 - (unsigned char)*s2;
}

int strncmp(const char *s1, const char *s2, unsigned int n)
{
    for (unsigned int i = 0; i < n; i++)
    {
        unsigned char c1 = (unsigned char)s1[i];
        unsigned char c2 = (unsigned char)s2[i];

        if (c1 != c2)
            return c1 - c2;

        if (c1 == '\0')
            return 0;
    }
    return 0;
}

char *u32_to_hex(u32 value) 
{
    static char buf[9];
    static const char hex[] = "0123456789ABCDEF";

    for (int i = 0; i < 8; i++) {
        buf[7 - i] = hex[value & 0xF];
        value >>= 4;
    }
    buf[8] = '\0';
    return buf;
}

char *u8_to_hex(u8 value) 
{
    static char buf[3];
    static const char hex[] = "0123456789ABCDEF";

    buf[0] = hex[(value >> 4) & 0xF];
    buf[1] = hex[value & 0xF];
    buf[2] = '\0';

    return buf;
}


void kpanic(const char* cause)
{
    *IO_AUDIO = 0b00011111;
    kputs("PANIC:");
    kputs(cause);
    //asm volatile("j hang");
    while (1);
}
