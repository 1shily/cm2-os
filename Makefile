RISCV_PREFIX = riscv64-unknown-elf-
AS = $(RISCV_PREFIX)as
LD = $(RISCV_PREFIX)ld
GCC = $(RISCV_PREFIX)gcc
OBJCOPY = $(RISCV_PREFIX)objcopy

BUILD_DIR = build
CFLAGS = -march=rv32i -mabi=ilp32
CCFLAGS = -march=rv32i -mabi=ilp32 -nostdlib -ffreestanding -fno-exceptions -fno-builtin -Wall -Wextra -T linker.ld
S_SOURCE = bootloader.s
C_SOURCE = kernel/kernel.c kernel/util.c

all: clean bootloader.s kernelc dump

dump:
	$(RISCV_PREFIX)objdump -d -M no-aliases $(BUILD_DIR)/kernel.elf >> $(BUILD_DIR)/kernel_dump.s

bootloader.s:
	$(AS) $(CFLAGS) -o $(BUILD_DIR)/bootloader.o $(S_SOURCE)

kernelc:
	$(GCC) $(CCFLAGS) -o $(BUILD_DIR)/kernel.elf $(BUILD_DIR)/bootloader.o $(C_SOURCE)
	$(OBJCOPY) -O binary $(BUILD_DIR)/kernel.elf $(BUILD_DIR)/kernel.bin

clean:
	rm -rf $(BUILD_DIR)/bootloader.o $(BUILD_DIR)/kernel_dump.s $(BUILD_DIR)/kernel.bin $(BUILD_DIR)/kernel.elf

.PHONY: dump all bootloader.s kernelc clean