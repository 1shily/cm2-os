#include "globals.h"
#include "util.h"

void kprint_char(char c) {
    *TTY_CHAR = c;
    *TTY_LOC = text_loc++;
    *TTY_WRITE = 1;
}

void kprint(const char* str) 
{
    unsigned char text_loc = 0;
    while (*str)
    {
        *TTY_CHAR = *str;
        *TTY_LOC = ++text_loc;
        *TTY_WRITE = 1;
        str++;
    }
}

void kprint_hex(unsigned int num) {
    const char* hex = "0123456789ABCDEF";
    kprint("0x");
    for (int i = 7; i >= 0; i--) {
        char digit = (num >> (i * 4)) & 0xF;
        kprint_char(hex[digit]);
    }
}