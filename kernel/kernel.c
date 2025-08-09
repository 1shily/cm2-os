#include "globals.h"
#include "util.h"

#define FAST_BOOT

u8 kselftest_args(u8 a, u8 b, u8 c, u8 d, u8 e, u8 f, u8 g)
{
    return a + b + c + d + e + f + g;
}

u8 kselftest()
{
    static u8 fails = 0;
    
    u8 one = 1, two = 2, three = 3, four = 4;
    u8 summed = one + two + three + four;
    if (summed != 10)
        fails++;
    if (kselftest_args(1, 2, 3, 4, 5, 6, 7) != 28)
        fails++;

    return fails;
}

void kprocesscmd()
{
    static char cmdbuf[128];
    int i = 0;
    while (1)
    {
        if (*IO_KB_INT == 1)
        {
            if (*IO_KB_ASCII == '\r')
            {
                cmdbuf[i] = '\0';
                break;
            }
            cmdbuf[i++] = *IO_KB_ASCII;
            kputc(*IO_KB_ASCII);
        }
    }

    kputs("\n");
    /* > xxxx
       xxxx */
    if (strcmp(cmdbuf, "clr") ==  0)
    {
        clear_tty
    } else
    if (strncmp(cmdbuf, "echo ", 5) == 0)
    {
        kputs(cmdbuf + 5);
    } else 
    {
        kputs("Uknwn cmd \"");
        kputs(cmdbuf);
        kputs("\"");
    }
}

void kmain(void) 
{
    /*
        Kernel is loaded and is about to perform self test.
        Our stack pointer is set by the bootloader.
        TTY Display is cleared for us, as well as MMIO registers, thanks to bootloader.
        Now the kernel has full control.
    */
#ifndef FAST_BOOT
    kputs(u8_to_hex(kselftest()));
    u32 sp_val;
    asm volatile ("mv %0, sp" : "=r" (sp_val));

    kputs("\nSP at 0x");
    kputs(u32_to_hex(sp_val));
#endif
    while (1)
    {
        kputs("\n> ");
        kprocesscmd();
    }
}