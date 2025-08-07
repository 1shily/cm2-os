.section .text
.extern kmain
.globl _start
.globl hang

# MMIO
.equ TTY_WRITE, 0xFFFF
.equ TTY_CHAR,  0xFFFE
.equ TTY_LOC,   0xFFFD
.equ TTY_CLEAR, 0xFFFB
.equ AUDIO,     0xFFFC
# STACK
.equ STACK_TOP, 0xFFFA

_start:
    # Reset all registers
    li x1, 0
    li x2, 0
    li x3, 0
    li x4, 0
    li x5, 0
    li x6, 0
    li x7, 0
    li x8, 0
    li x9, 0
    li x10, 0
    li x11, 0
    li x12, 0
    li x13, 0
    li x14, 0
    li x15, 0
    li x16, 0
    li x17, 0
    li x18, 0
    li x19, 0
    li x20, 0
    li x21, 0
    li x22, 0
    li x23, 0
    li x24, 0
    li x25, 0
    li x26, 0
    li x27, 0
    li x28, 0
    li x29, 0
    li x30, 0
    li x31, 0
    # Reset IO
    li t0, TTY_CHAR
    sb x0, 0(t0)
    li t0, TTY_LOC
    sb x0, 0(t0)
    li t0, AUDIO
    sb x0, 0(t0)
    li t0, TTY_CLEAR
    sb x0, 0(t0)
    # IO has been Reset
    li sp, STACK_TOP
    jal x0, kmain
hang:
    jal x0, 0
