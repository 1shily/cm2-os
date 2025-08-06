void kmain(void) 
{
    for (int i = 0; i < 255; i++) {
        (*(volatile unsigned char*)0xFFFC) = i;
    }
}