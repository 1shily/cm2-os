#include "globals.h"
#include "util.h"

void kmain(void) 
{
    /*
        Bootloader has loaded us,
        Our stack is at 0xFFFA
        MMIO Registers are reset
        TTY Display is cleared for us
    */
   //kprint("[LOG]: Kernel Loaded")
   while (1)
   {
    kputc('$');
   }
}