ENTRY(_start)

MEMORY
{
  ROM (rx)  : ORIGIN = 0x0000, LENGTH = 32K
  RAM (rw)  : ORIGIN = 0x8000, LENGTH = 32K
}

SECTIONS
{
  .text : 
  {
    *(.text._start)   /* Entry point */
    *(.text*)         /* All other code */
    *(.rodata*)       /* Read-only constants */
  } > ROM

  .data : 
  {
    *(.data*)         /* Initialized data */
    *(.sdata*)
  } > RAM

  .bss :
  {
    *(.bss*)          /* Uninitialized variables */
    *(COMMON)
  } > RAM
}
