#include "globals.h"
#include "util.h"

void kmain(void) 
{
    /*
        Bootloader has loaded us,
        Our stack is at 0x08000000
        MMIO Registers are reset
        TTY Display is cleared for us
    */
    kprint("[LOG]: Kernel Loaded");
}