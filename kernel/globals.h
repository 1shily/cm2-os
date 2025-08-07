#pragma once
#include "globals.h"

#define TTY_WRITE ((volatile unsigned char*)0xFFFF)
#define TTY_CHAR  ((volatile unsigned char*)0xFFFE)
#define TTY_LOC   ((volatile unsigned char*)0xFFFD)
#define TTY_CLEAR ((volatile unsigned char*)0xFFFB)
#define AUDIO     ((volatile unsigned char*)0xFFFC)