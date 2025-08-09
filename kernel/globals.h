#pragma once
#include "globals.h"

#define IO_TTY_WRITE        ((volatile unsigned char*)0xFFFF)
#define IO_TTY_CHAR         ((volatile unsigned char*)0xFFFE)
#define IO_TTY_LOC          ((volatile unsigned char*)0xFFFD)
#define IO_TTY_CLEAR        ((volatile unsigned char*)0xFFFB)
#define IO_AUDIO            ((volatile unsigned char*)0xFFFC)
#define IO_KB_INT      ((volatile unsigned char*)65529)
#define IO_KB_ASCII    ((volatile unsigned char*)65530)

#define clear_tty *IO_TTY_CLEAR = 1; *IO_TTY_LOC = 0;

typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;