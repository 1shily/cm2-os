
build/kernel.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	00000093          	addi	ra,zero,0
   10078:	00000113          	addi	sp,zero,0
   1007c:	00000193          	addi	gp,zero,0
   10080:	00000213          	addi	tp,zero,0
   10084:	00000293          	addi	t0,zero,0
   10088:	00000313          	addi	t1,zero,0
   1008c:	00000393          	addi	t2,zero,0
   10090:	00000413          	addi	s0,zero,0
   10094:	00000493          	addi	s1,zero,0
   10098:	00000513          	addi	a0,zero,0
   1009c:	00000593          	addi	a1,zero,0
   100a0:	00000613          	addi	a2,zero,0
   100a4:	00000693          	addi	a3,zero,0
   100a8:	00000713          	addi	a4,zero,0
   100ac:	00000793          	addi	a5,zero,0
   100b0:	00000813          	addi	a6,zero,0
   100b4:	00000893          	addi	a7,zero,0
   100b8:	00000913          	addi	s2,zero,0
   100bc:	00000993          	addi	s3,zero,0
   100c0:	00000a13          	addi	s4,zero,0
   100c4:	00000a93          	addi	s5,zero,0
   100c8:	00000b13          	addi	s6,zero,0
   100cc:	00000b93          	addi	s7,zero,0
   100d0:	00000c13          	addi	s8,zero,0
   100d4:	00000c93          	addi	s9,zero,0
   100d8:	00000d13          	addi	s10,zero,0
   100dc:	00000d93          	addi	s11,zero,0
   100e0:	00000e13          	addi	t3,zero,0
   100e4:	00000e93          	addi	t4,zero,0
   100e8:	00000f13          	addi	t5,zero,0
   100ec:	00000f93          	addi	t6,zero,0
   100f0:	000102b7          	lui	t0,0x10
   100f4:	ffe28293          	addi	t0,t0,-2 # fffe <TTY_CHAR>
   100f8:	00028023          	sb	zero,0(t0)
   100fc:	000102b7          	lui	t0,0x10
   10100:	ffd28293          	addi	t0,t0,-3 # fffd <TTY_LOC>
   10104:	00028023          	sb	zero,0(t0)
   10108:	000102b7          	lui	t0,0x10
   1010c:	ffc28293          	addi	t0,t0,-4 # fffc <AUDIO>
   10110:	00028023          	sb	zero,0(t0)
   10114:	000102b7          	lui	t0,0x10
   10118:	ffb28293          	addi	t0,t0,-5 # fffb <TTY_CLEAR>
   1011c:	00028023          	sb	zero,0(t0)
   10120:	00010137          	lui	sp,0x10
   10124:	ffa10113          	addi	sp,sp,-6 # fffa <STACK_TOP>
   10128:	0080006f          	jal	zero,10130 <kmain>

0001012c <hang>:
   1012c:	ed5ef06f          	jal	zero,0 <STACK_TOP-0xfffa>

00010130 <kmain>:
   10130:	ff010113          	addi	sp,sp,-16
   10134:	00112623          	sw	ra,12(sp)
   10138:	00812423          	sw	s0,8(sp)
   1013c:	01010413          	addi	s0,sp,16
   10140:	02400513          	addi	a0,zero,36
   10144:	008000ef          	jal	ra,1014c <kputc>
   10148:	ff9ff06f          	jal	zero,10140 <kmain+0x10>

0001014c <kputc>:
   1014c:	fd010113          	addi	sp,sp,-48
   10150:	02812623          	sw	s0,44(sp)
   10154:	03010413          	addi	s0,sp,48
   10158:	00050793          	addi	a5,a0,0
   1015c:	fcf40fa3          	sb	a5,-33(s0)
   10160:	000107b7          	lui	a5,0x10
   10164:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
   10168:	0007c783          	lbu	a5,0(a5)
   1016c:	fef407a3          	sb	a5,-17(s0)
   10170:	000107b7          	lui	a5,0x10
   10174:	ffe78793          	addi	a5,a5,-2 # fffe <TTY_CHAR>
   10178:	fdf44703          	lbu	a4,-33(s0)
   1017c:	00e78023          	sb	a4,0(a5)
   10180:	000107b7          	lui	a5,0x10
   10184:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
   10188:	fef44703          	lbu	a4,-17(s0)
   1018c:	00170713          	addi	a4,a4,1
   10190:	0ff77713          	andi	a4,a4,255
   10194:	00e78023          	sb	a4,0(a5)
   10198:	000107b7          	lui	a5,0x10
   1019c:	fff78793          	addi	a5,a5,-1 # ffff <TTY_WRITE>
   101a0:	00100713          	addi	a4,zero,1
   101a4:	00e78023          	sb	a4,0(a5)
   101a8:	00000013          	addi	zero,zero,0
   101ac:	02c12403          	lw	s0,44(sp)
   101b0:	03010113          	addi	sp,sp,48
   101b4:	00008067          	jalr	zero,0(ra)

000101b8 <kputs>:
   101b8:	fd010113          	addi	sp,sp,-48
   101bc:	02812623          	sw	s0,44(sp)
   101c0:	03010413          	addi	s0,sp,48
   101c4:	fca42e23          	sw	a0,-36(s0)
   101c8:	000107b7          	lui	a5,0x10
   101cc:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
   101d0:	0007c783          	lbu	a5,0(a5)
   101d4:	fef407a3          	sb	a5,-17(s0)
   101d8:	0440006f          	jal	zero,1021c <kputs+0x64>
   101dc:	000107b7          	lui	a5,0x10
   101e0:	ffe78793          	addi	a5,a5,-2 # fffe <TTY_CHAR>
   101e4:	fdc42703          	lw	a4,-36(s0)
   101e8:	00074703          	lbu	a4,0(a4)
   101ec:	00e78023          	sb	a4,0(a5)
   101f0:	fef44783          	lbu	a5,-17(s0)
   101f4:	00178793          	addi	a5,a5,1
   101f8:	fef407a3          	sb	a5,-17(s0)
   101fc:	000107b7          	lui	a5,0x10
   10200:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
   10204:	fef44703          	lbu	a4,-17(s0)
   10208:	00e78023          	sb	a4,0(a5)
   1020c:	000107b7          	lui	a5,0x10
   10210:	fff78793          	addi	a5,a5,-1 # ffff <TTY_WRITE>
   10214:	00100713          	addi	a4,zero,1
   10218:	00e78023          	sb	a4,0(a5)
   1021c:	fdc42783          	lw	a5,-36(s0)
   10220:	00178713          	addi	a4,a5,1
   10224:	fce42e23          	sw	a4,-36(s0)
   10228:	0007c783          	lbu	a5,0(a5)
   1022c:	fa0798e3          	bne	a5,zero,101dc <kputs+0x24>
   10230:	00000013          	addi	zero,zero,0
   10234:	00000013          	addi	zero,zero,0
   10238:	02c12403          	lw	s0,44(sp)
   1023c:	03010113          	addi	sp,sp,48
   10240:	00008067          	jalr	zero,0(ra)

00010244 <kpanic>:
   10244:	fe010113          	addi	sp,sp,-32
   10248:	00112e23          	sw	ra,28(sp)
   1024c:	00812c23          	sw	s0,24(sp)
   10250:	02010413          	addi	s0,sp,32
   10254:	fea42623          	sw	a0,-20(s0)
   10258:	000107b7          	lui	a5,0x10
   1025c:	ffc78793          	addi	a5,a5,-4 # fffc <AUDIO>
   10260:	fff00713          	addi	a4,zero,-1
   10264:	00e78023          	sb	a4,0(a5)
   10268:	fec42503          	lw	a0,-20(s0)
   1026c:	f4dff0ef          	jal	ra,101b8 <kputs>
   10270:	ebdff06f          	jal	zero,1012c <hang>
   10274:	00000013          	addi	zero,zero,0
   10278:	01c12083          	lw	ra,28(sp)
   1027c:	01812403          	lw	s0,24(sp)
   10280:	02010113          	addi	sp,sp,32
   10284:	00008067          	jalr	zero,0(ra)
