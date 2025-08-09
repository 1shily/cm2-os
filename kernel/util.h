#include "globals.h"

void kputc(char ch);
void kputs(const char* str); 
void kpanic(const char* cause);
char *u32_to_hex(u32 value);
char *u8_to_hex(u8 value);
int strcmp(const char *s1, const char *s2);
int strncmp(const char *s1, const char *s2, unsigned int n);