
build/kernel.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000093          	addi	ra,zero,0
   4:	00000113          	addi	sp,zero,0
   8:	00000193          	addi	gp,zero,0
   c:	00000213          	addi	tp,zero,0
  10:	00000293          	addi	t0,zero,0
  14:	00000313          	addi	t1,zero,0
  18:	00000393          	addi	t2,zero,0
  1c:	00000413          	addi	s0,zero,0
  20:	00000493          	addi	s1,zero,0
  24:	00000513          	addi	a0,zero,0
  28:	00000593          	addi	a1,zero,0
  2c:	00000613          	addi	a2,zero,0
  30:	00000693          	addi	a3,zero,0
  34:	00000713          	addi	a4,zero,0
  38:	00000793          	addi	a5,zero,0
  3c:	00000813          	addi	a6,zero,0
  40:	00000893          	addi	a7,zero,0
  44:	00000913          	addi	s2,zero,0
  48:	00000993          	addi	s3,zero,0
  4c:	00000a13          	addi	s4,zero,0
  50:	00000a93          	addi	s5,zero,0
  54:	00000b13          	addi	s6,zero,0
  58:	00000b93          	addi	s7,zero,0
  5c:	00000c13          	addi	s8,zero,0
  60:	00000c93          	addi	s9,zero,0
  64:	00000d13          	addi	s10,zero,0
  68:	00000d93          	addi	s11,zero,0
  6c:	00000e13          	addi	t3,zero,0
  70:	00000e93          	addi	t4,zero,0
  74:	00000f13          	addi	t5,zero,0
  78:	00000f93          	addi	t6,zero,0
  7c:	000102b7          	lui	t0,0x10
  80:	ffe28293          	addi	t0,t0,-2 # fffe <TTY_CHAR>
  84:	00028023          	sb	zero,0(t0)
  88:	000102b7          	lui	t0,0x10
  8c:	ffd28293          	addi	t0,t0,-3 # fffd <TTY_LOC>
  90:	00028023          	sb	zero,0(t0)
  94:	000102b7          	lui	t0,0x10
  98:	ffc28293          	addi	t0,t0,-4 # fffc <AUDIO>
  9c:	00028023          	sb	zero,0(t0)
  a0:	000102b7          	lui	t0,0x10
  a4:	ffb28293          	addi	t0,t0,-5 # fffb <TTY_CLEAR>
  a8:	00028023          	sb	zero,0(t0)
  ac:	00010117          	auipc	sp,0x10
  b0:	f5410113          	addi	sp,sp,-172 # 10000 <_stack_top>
  b4:	3080006f          	jal	zero,3bc <kmain>

000000b8 <hang>:
  b8:	f49ff06f          	jal	zero,0 <_start>

000000bc <kselftest_args>:
  bc:	fe010113          	addi	sp,sp,-32
  c0:	00812e23          	sw	s0,28(sp)
  c4:	02010413          	addi	s0,sp,32
  c8:	00050313          	addi	t1,a0,0
  cc:	00058893          	addi	a7,a1,0
  d0:	00060513          	addi	a0,a2,0
  d4:	00068593          	addi	a1,a3,0
  d8:	00070613          	addi	a2,a4,0
  dc:	00078693          	addi	a3,a5,0
  e0:	00080713          	addi	a4,a6,0
  e4:	00030793          	addi	a5,t1,0
  e8:	fef407a3          	sb	a5,-17(s0)
  ec:	00088793          	addi	a5,a7,0
  f0:	fef40723          	sb	a5,-18(s0)
  f4:	00050793          	addi	a5,a0,0
  f8:	fef406a3          	sb	a5,-19(s0)
  fc:	00058793          	addi	a5,a1,0
 100:	fef40623          	sb	a5,-20(s0)
 104:	00060793          	addi	a5,a2,0
 108:	fef405a3          	sb	a5,-21(s0)
 10c:	00068793          	addi	a5,a3,0
 110:	fef40523          	sb	a5,-22(s0)
 114:	00070793          	addi	a5,a4,0
 118:	fef404a3          	sb	a5,-23(s0)
 11c:	fef44783          	lbu	a5,-17(s0)
 120:	00078713          	addi	a4,a5,0
 124:	fee44783          	lbu	a5,-18(s0)
 128:	00f707b3          	add	a5,a4,a5
 12c:	0ff7f793          	andi	a5,a5,255
 130:	fed44703          	lbu	a4,-19(s0)
 134:	00e787b3          	add	a5,a5,a4
 138:	0ff7f793          	andi	a5,a5,255
 13c:	fec44703          	lbu	a4,-20(s0)
 140:	00e787b3          	add	a5,a5,a4
 144:	0ff7f793          	andi	a5,a5,255
 148:	feb44703          	lbu	a4,-21(s0)
 14c:	00e787b3          	add	a5,a5,a4
 150:	0ff7f793          	andi	a5,a5,255
 154:	fea44703          	lbu	a4,-22(s0)
 158:	00e787b3          	add	a5,a5,a4
 15c:	0ff7f793          	andi	a5,a5,255
 160:	fe944703          	lbu	a4,-23(s0)
 164:	00e787b3          	add	a5,a5,a4
 168:	0ff7f793          	andi	a5,a5,255
 16c:	00078513          	addi	a0,a5,0
 170:	01c12403          	lw	s0,28(sp)
 174:	02010113          	addi	sp,sp,32
 178:	00008067          	jalr	zero,0(ra)

0000017c <kselftest>:
 17c:	fe010113          	addi	sp,sp,-32
 180:	00112e23          	sw	ra,28(sp)
 184:	00812c23          	sw	s0,24(sp)
 188:	02010413          	addi	s0,sp,32
 18c:	00100793          	addi	a5,zero,1
 190:	fef407a3          	sb	a5,-17(s0)
 194:	00200793          	addi	a5,zero,2
 198:	fef40723          	sb	a5,-18(s0)
 19c:	00300793          	addi	a5,zero,3
 1a0:	fef406a3          	sb	a5,-19(s0)
 1a4:	00400793          	addi	a5,zero,4
 1a8:	fef40623          	sb	a5,-20(s0)
 1ac:	fef44783          	lbu	a5,-17(s0)
 1b0:	00078713          	addi	a4,a5,0
 1b4:	fee44783          	lbu	a5,-18(s0)
 1b8:	00f707b3          	add	a5,a4,a5
 1bc:	0ff7f793          	andi	a5,a5,255
 1c0:	fed44703          	lbu	a4,-19(s0)
 1c4:	00e787b3          	add	a5,a5,a4
 1c8:	0ff7f793          	andi	a5,a5,255
 1cc:	fec44703          	lbu	a4,-20(s0)
 1d0:	00e787b3          	add	a5,a5,a4
 1d4:	fef405a3          	sb	a5,-21(s0)
 1d8:	feb44703          	lbu	a4,-21(s0)
 1dc:	00a00793          	addi	a5,zero,10
 1e0:	00f70e63          	beq	a4,a5,1fc <kselftest+0x80>
 1e4:	000087b7          	lui	a5,0x8
 1e8:	0007c783          	lbu	a5,0(a5) # 8000 <fails.1>
 1ec:	00178793          	addi	a5,a5,1
 1f0:	0ff7f713          	andi	a4,a5,255
 1f4:	000087b7          	lui	a5,0x8
 1f8:	00e78023          	sb	a4,0(a5) # 8000 <fails.1>
 1fc:	00700813          	addi	a6,zero,7
 200:	00600793          	addi	a5,zero,6
 204:	00500713          	addi	a4,zero,5
 208:	00400693          	addi	a3,zero,4
 20c:	00300613          	addi	a2,zero,3
 210:	00200593          	addi	a1,zero,2
 214:	00100513          	addi	a0,zero,1
 218:	ea5ff0ef          	jal	ra,bc <kselftest_args>
 21c:	00050793          	addi	a5,a0,0
 220:	00078713          	addi	a4,a5,0
 224:	01c00793          	addi	a5,zero,28
 228:	00f70e63          	beq	a4,a5,244 <kselftest+0xc8>
 22c:	000087b7          	lui	a5,0x8
 230:	0007c783          	lbu	a5,0(a5) # 8000 <fails.1>
 234:	00178793          	addi	a5,a5,1
 238:	0ff7f713          	andi	a4,a5,255
 23c:	000087b7          	lui	a5,0x8
 240:	00e78023          	sb	a4,0(a5) # 8000 <fails.1>
 244:	000087b7          	lui	a5,0x8
 248:	0007c783          	lbu	a5,0(a5) # 8000 <fails.1>
 24c:	00078513          	addi	a0,a5,0
 250:	01c12083          	lw	ra,28(sp)
 254:	01812403          	lw	s0,24(sp)
 258:	02010113          	addi	sp,sp,32
 25c:	00008067          	jalr	zero,0(ra)

00000260 <kprocesscmd>:
 260:	fe010113          	addi	sp,sp,-32
 264:	00112e23          	sw	ra,28(sp)
 268:	00812c23          	sw	s0,24(sp)
 26c:	02010413          	addi	s0,sp,32
 270:	fe042623          	sw	zero,-20(s0)
 274:	000107b7          	lui	a5,0x10
 278:	ff978793          	addi	a5,a5,-7 # fff9 <buf.0+0x7f69>
 27c:	0007c783          	lbu	a5,0(a5)
 280:	0ff7f713          	andi	a4,a5,255
 284:	00100793          	addi	a5,zero,1
 288:	fef716e3          	bne	a4,a5,274 <kprocesscmd+0x14>
 28c:	000107b7          	lui	a5,0x10
 290:	ffa78793          	addi	a5,a5,-6 # fffa <buf.0+0x7f6a>
 294:	0007c783          	lbu	a5,0(a5)
 298:	0ff7f713          	andi	a4,a5,255
 29c:	00d00793          	addi	a5,zero,13
 2a0:	04f71463          	bne	a4,a5,2e8 <kprocesscmd+0x88>
 2a4:	000087b7          	lui	a5,0x8
 2a8:	00478713          	addi	a4,a5,4 # 8004 <cmdbuf.0>
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	00f707b3          	add	a5,a4,a5
 2b4:	00078023          	sb	zero,0(a5)
 2b8:	00000013          	addi	zero,zero,0
 2bc:	000017b7          	lui	a5,0x1
 2c0:	82478513          	addi	a0,a5,-2012 # 824 <kpanic+0x40>
 2c4:	1ec000ef          	jal	ra,4b0 <kputs>
 2c8:	000017b7          	lui	a5,0x1
 2cc:	82878593          	addi	a1,a5,-2008 # 828 <kpanic+0x44>
 2d0:	000087b7          	lui	a5,0x8
 2d4:	00478513          	addi	a0,a5,4 # 8004 <cmdbuf.0>
 2d8:	2dc000ef          	jal	ra,5b4 <strcmp>
 2dc:	00050793          	addi	a5,a0,0
 2e0:	06079863          	bne	a5,zero,350 <kprocesscmd+0xf0>
 2e4:	04c0006f          	jal	zero,330 <kprocesscmd+0xd0>
 2e8:	000107b7          	lui	a5,0x10
 2ec:	ffa78713          	addi	a4,a5,-6 # fffa <buf.0+0x7f6a>
 2f0:	fec42783          	lw	a5,-20(s0)
 2f4:	00178693          	addi	a3,a5,1
 2f8:	fed42623          	sw	a3,-20(s0)
 2fc:	00074703          	lbu	a4,0(a4)
 300:	0ff77713          	andi	a4,a4,255
 304:	000086b7          	lui	a3,0x8
 308:	00468693          	addi	a3,a3,4 # 8004 <cmdbuf.0>
 30c:	00f687b3          	add	a5,a3,a5
 310:	00e78023          	sb	a4,0(a5)
 314:	000107b7          	lui	a5,0x10
 318:	ffa78793          	addi	a5,a5,-6 # fffa <buf.0+0x7f6a>
 31c:	0007c783          	lbu	a5,0(a5)
 320:	0ff7f793          	andi	a5,a5,255
 324:	00078513          	addi	a0,a5,0
 328:	0bc000ef          	jal	ra,3e4 <kputc>
 32c:	f49ff06f          	jal	zero,274 <kprocesscmd+0x14>
 330:	000107b7          	lui	a5,0x10
 334:	ffb78793          	addi	a5,a5,-5 # fffb <TTY_CLEAR>
 338:	00100713          	addi	a4,zero,1
 33c:	00e78023          	sb	a4,0(a5)
 340:	000107b7          	lui	a5,0x10
 344:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 348:	00078023          	sb	zero,0(a5)
 34c:	05c0006f          	jal	zero,3a8 <kprocesscmd+0x148>
 350:	00500613          	addi	a2,zero,5
 354:	000017b7          	lui	a5,0x1
 358:	82c78593          	addi	a1,a5,-2004 # 82c <kpanic+0x48>
 35c:	000087b7          	lui	a5,0x8
 360:	00478513          	addi	a0,a5,4 # 8004 <cmdbuf.0>
 364:	2c8000ef          	jal	ra,62c <strncmp>
 368:	00050793          	addi	a5,a0,0
 36c:	00079c63          	bne	a5,zero,384 <kprocesscmd+0x124>
 370:	000087b7          	lui	a5,0x8
 374:	00978793          	addi	a5,a5,9 # 8009 <cmdbuf.0+0x5>
 378:	00078513          	addi	a0,a5,0
 37c:	134000ef          	jal	ra,4b0 <kputs>
 380:	0280006f          	jal	zero,3a8 <kprocesscmd+0x148>
 384:	000017b7          	lui	a5,0x1
 388:	83478513          	addi	a0,a5,-1996 # 834 <kpanic+0x50>
 38c:	124000ef          	jal	ra,4b0 <kputs>
 390:	000087b7          	lui	a5,0x8
 394:	00478513          	addi	a0,a5,4 # 8004 <cmdbuf.0>
 398:	118000ef          	jal	ra,4b0 <kputs>
 39c:	000017b7          	lui	a5,0x1
 3a0:	84078513          	addi	a0,a5,-1984 # 840 <kpanic+0x5c>
 3a4:	10c000ef          	jal	ra,4b0 <kputs>
 3a8:	00000013          	addi	zero,zero,0
 3ac:	01c12083          	lw	ra,28(sp)
 3b0:	01812403          	lw	s0,24(sp)
 3b4:	02010113          	addi	sp,sp,32
 3b8:	00008067          	jalr	zero,0(ra)

000003bc <kmain>:
 3bc:	ff010113          	addi	sp,sp,-16
 3c0:	00112623          	sw	ra,12(sp)
 3c4:	00812423          	sw	s0,8(sp)
 3c8:	01010413          	addi	s0,sp,16
 3cc:	000017b7          	lui	a5,0x1
 3d0:	84478513          	addi	a0,a5,-1980 # 844 <kpanic+0x60>
 3d4:	0dc000ef          	jal	ra,4b0 <kputs>
 3d8:	e89ff0ef          	jal	ra,260 <kprocesscmd>
 3dc:	00000013          	addi	zero,zero,0
 3e0:	fedff06f          	jal	zero,3cc <kmain+0x10>

000003e4 <kputc>:
 3e4:	fd010113          	addi	sp,sp,-48
 3e8:	02812623          	sw	s0,44(sp)
 3ec:	03010413          	addi	s0,sp,48
 3f0:	00050793          	addi	a5,a0,0
 3f4:	fcf40fa3          	sb	a5,-33(s0)
 3f8:	000107b7          	lui	a5,0x10
 3fc:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 400:	0007c783          	lbu	a5,0(a5)
 404:	0ff7f713          	andi	a4,a5,255
 408:	0ff00793          	addi	a5,zero,255
 40c:	02f71063          	bne	a4,a5,42c <kputc+0x48>
 410:	000107b7          	lui	a5,0x10
 414:	ffb78793          	addi	a5,a5,-5 # fffb <TTY_CLEAR>
 418:	00100713          	addi	a4,zero,1
 41c:	00e78023          	sb	a4,0(a5)
 420:	000107b7          	lui	a5,0x10
 424:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 428:	00078023          	sb	zero,0(a5)
 42c:	000107b7          	lui	a5,0x10
 430:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 434:	0007c783          	lbu	a5,0(a5)
 438:	fef407a3          	sb	a5,-17(s0)
 43c:	fdf44703          	lbu	a4,-33(s0)
 440:	00a00793          	addi	a5,zero,10
 444:	02f71463          	bne	a4,a5,46c <kputc+0x88>
 448:	fef44783          	lbu	a5,-17(s0)
 44c:	02078793          	addi	a5,a5,32
 450:	0ff7f713          	andi	a4,a5,255
 454:	000107b7          	lui	a5,0x10
 458:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 45c:	fe077713          	andi	a4,a4,-32
 460:	0ff77713          	andi	a4,a4,255
 464:	00e78023          	sb	a4,0(a5)
 468:	03c0006f          	jal	zero,4a4 <kputc+0xc0>
 46c:	000107b7          	lui	a5,0x10
 470:	ffe78793          	addi	a5,a5,-2 # fffe <TTY_CHAR>
 474:	fdf44703          	lbu	a4,-33(s0)
 478:	00e78023          	sb	a4,0(a5)
 47c:	000107b7          	lui	a5,0x10
 480:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 484:	fef44703          	lbu	a4,-17(s0)
 488:	00170713          	addi	a4,a4,1
 48c:	0ff77713          	andi	a4,a4,255
 490:	00e78023          	sb	a4,0(a5)
 494:	000107b7          	lui	a5,0x10
 498:	fff78793          	addi	a5,a5,-1 # ffff <TTY_WRITE>
 49c:	00100713          	addi	a4,zero,1
 4a0:	00e78023          	sb	a4,0(a5)
 4a4:	02c12403          	lw	s0,44(sp)
 4a8:	03010113          	addi	sp,sp,48
 4ac:	00008067          	jalr	zero,0(ra)

000004b0 <kputs>:
 4b0:	fe010113          	addi	sp,sp,-32
 4b4:	00812e23          	sw	s0,28(sp)
 4b8:	02010413          	addi	s0,sp,32
 4bc:	fea42623          	sw	a0,-20(s0)
 4c0:	0d40006f          	jal	zero,594 <kputs+0xe4>
 4c4:	000107b7          	lui	a5,0x10
 4c8:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 4cc:	0007c783          	lbu	a5,0(a5)
 4d0:	0ff7f713          	andi	a4,a5,255
 4d4:	0ff00793          	addi	a5,zero,255
 4d8:	02f71063          	bne	a4,a5,4f8 <kputs+0x48>
 4dc:	000107b7          	lui	a5,0x10
 4e0:	ffb78793          	addi	a5,a5,-5 # fffb <TTY_CLEAR>
 4e4:	00100713          	addi	a4,zero,1
 4e8:	00e78023          	sb	a4,0(a5)
 4ec:	000107b7          	lui	a5,0x10
 4f0:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 4f4:	00078023          	sb	zero,0(a5)
 4f8:	fec42783          	lw	a5,-20(s0)
 4fc:	0007c703          	lbu	a4,0(a5)
 500:	00a00793          	addi	a5,zero,10
 504:	04f71063          	bne	a4,a5,544 <kputs+0x94>
 508:	000107b7          	lui	a5,0x10
 50c:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 510:	0007c783          	lbu	a5,0(a5)
 514:	0ff7f793          	andi	a5,a5,255
 518:	02078793          	addi	a5,a5,32
 51c:	0ff7f713          	andi	a4,a5,255
 520:	000107b7          	lui	a5,0x10
 524:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 528:	fe077713          	andi	a4,a4,-32
 52c:	0ff77713          	andi	a4,a4,255
 530:	00e78023          	sb	a4,0(a5)
 534:	fec42783          	lw	a5,-20(s0)
 538:	00178793          	addi	a5,a5,1
 53c:	fef42623          	sw	a5,-20(s0)
 540:	0540006f          	jal	zero,594 <kputs+0xe4>
 544:	fec42783          	lw	a5,-20(s0)
 548:	00178713          	addi	a4,a5,1
 54c:	fee42623          	sw	a4,-20(s0)
 550:	00010737          	lui	a4,0x10
 554:	ffe70713          	addi	a4,a4,-2 # fffe <TTY_CHAR>
 558:	0007c783          	lbu	a5,0(a5)
 55c:	00f70023          	sb	a5,0(a4)
 560:	000107b7          	lui	a5,0x10
 564:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 568:	0007c783          	lbu	a5,0(a5)
 56c:	0ff7f713          	andi	a4,a5,255
 570:	000107b7          	lui	a5,0x10
 574:	ffd78793          	addi	a5,a5,-3 # fffd <TTY_LOC>
 578:	00170713          	addi	a4,a4,1
 57c:	0ff77713          	andi	a4,a4,255
 580:	00e78023          	sb	a4,0(a5)
 584:	000107b7          	lui	a5,0x10
 588:	fff78793          	addi	a5,a5,-1 # ffff <TTY_WRITE>
 58c:	00100713          	addi	a4,zero,1
 590:	00e78023          	sb	a4,0(a5)
 594:	fec42783          	lw	a5,-20(s0)
 598:	0007c783          	lbu	a5,0(a5)
 59c:	f20794e3          	bne	a5,zero,4c4 <kputs+0x14>
 5a0:	00000013          	addi	zero,zero,0
 5a4:	00000013          	addi	zero,zero,0
 5a8:	01c12403          	lw	s0,28(sp)
 5ac:	02010113          	addi	sp,sp,32
 5b0:	00008067          	jalr	zero,0(ra)

000005b4 <strcmp>:
 5b4:	fe010113          	addi	sp,sp,-32
 5b8:	00812e23          	sw	s0,28(sp)
 5bc:	02010413          	addi	s0,sp,32
 5c0:	fea42623          	sw	a0,-20(s0)
 5c4:	feb42423          	sw	a1,-24(s0)
 5c8:	01c0006f          	jal	zero,5e4 <strcmp+0x30>
 5cc:	fec42783          	lw	a5,-20(s0)
 5d0:	00178793          	addi	a5,a5,1
 5d4:	fef42623          	sw	a5,-20(s0)
 5d8:	fe842783          	lw	a5,-24(s0)
 5dc:	00178793          	addi	a5,a5,1
 5e0:	fef42423          	sw	a5,-24(s0)
 5e4:	fec42783          	lw	a5,-20(s0)
 5e8:	0007c783          	lbu	a5,0(a5)
 5ec:	00078c63          	beq	a5,zero,604 <strcmp+0x50>
 5f0:	fec42783          	lw	a5,-20(s0)
 5f4:	0007c703          	lbu	a4,0(a5)
 5f8:	fe842783          	lw	a5,-24(s0)
 5fc:	0007c783          	lbu	a5,0(a5)
 600:	fcf706e3          	beq	a4,a5,5cc <strcmp+0x18>
 604:	fec42783          	lw	a5,-20(s0)
 608:	0007c783          	lbu	a5,0(a5)
 60c:	00078713          	addi	a4,a5,0
 610:	fe842783          	lw	a5,-24(s0)
 614:	0007c783          	lbu	a5,0(a5)
 618:	40f707b3          	sub	a5,a4,a5
 61c:	00078513          	addi	a0,a5,0
 620:	01c12403          	lw	s0,28(sp)
 624:	02010113          	addi	sp,sp,32
 628:	00008067          	jalr	zero,0(ra)

0000062c <strncmp>:
 62c:	fd010113          	addi	sp,sp,-48
 630:	02812623          	sw	s0,44(sp)
 634:	03010413          	addi	s0,sp,48
 638:	fca42e23          	sw	a0,-36(s0)
 63c:	fcb42c23          	sw	a1,-40(s0)
 640:	fcc42a23          	sw	a2,-44(s0)
 644:	fe042623          	sw	zero,-20(s0)
 648:	0640006f          	jal	zero,6ac <strncmp+0x80>
 64c:	fdc42703          	lw	a4,-36(s0)
 650:	fec42783          	lw	a5,-20(s0)
 654:	00f707b3          	add	a5,a4,a5
 658:	0007c783          	lbu	a5,0(a5)
 65c:	fef405a3          	sb	a5,-21(s0)
 660:	fd842703          	lw	a4,-40(s0)
 664:	fec42783          	lw	a5,-20(s0)
 668:	00f707b3          	add	a5,a4,a5
 66c:	0007c783          	lbu	a5,0(a5)
 670:	fef40523          	sb	a5,-22(s0)
 674:	feb44703          	lbu	a4,-21(s0)
 678:	fea44783          	lbu	a5,-22(s0)
 67c:	00f70a63          	beq	a4,a5,690 <strncmp+0x64>
 680:	feb44703          	lbu	a4,-21(s0)
 684:	fea44783          	lbu	a5,-22(s0)
 688:	40f707b3          	sub	a5,a4,a5
 68c:	0300006f          	jal	zero,6bc <strncmp+0x90>
 690:	feb44783          	lbu	a5,-21(s0)
 694:	00079663          	bne	a5,zero,6a0 <strncmp+0x74>
 698:	00000793          	addi	a5,zero,0
 69c:	0200006f          	jal	zero,6bc <strncmp+0x90>
 6a0:	fec42783          	lw	a5,-20(s0)
 6a4:	00178793          	addi	a5,a5,1
 6a8:	fef42623          	sw	a5,-20(s0)
 6ac:	fec42703          	lw	a4,-20(s0)
 6b0:	fd442783          	lw	a5,-44(s0)
 6b4:	f8f76ce3          	bltu	a4,a5,64c <strncmp+0x20>
 6b8:	00000793          	addi	a5,zero,0
 6bc:	00078513          	addi	a0,a5,0
 6c0:	02c12403          	lw	s0,44(sp)
 6c4:	03010113          	addi	sp,sp,48
 6c8:	00008067          	jalr	zero,0(ra)

000006cc <u32_to_hex>:
 6cc:	fd010113          	addi	sp,sp,-48
 6d0:	02812623          	sw	s0,44(sp)
 6d4:	03010413          	addi	s0,sp,48
 6d8:	fca42e23          	sw	a0,-36(s0)
 6dc:	fe042623          	sw	zero,-20(s0)
 6e0:	0500006f          	jal	zero,730 <u32_to_hex+0x64>
 6e4:	fdc42783          	lw	a5,-36(s0)
 6e8:	00f7f713          	andi	a4,a5,15
 6ec:	00700693          	addi	a3,zero,7
 6f0:	fec42783          	lw	a5,-20(s0)
 6f4:	40f687b3          	sub	a5,a3,a5
 6f8:	000016b7          	lui	a3,0x1
 6fc:	85068693          	addi	a3,a3,-1968 # 850 <hex.3>
 700:	00e68733          	add	a4,a3,a4
 704:	00074703          	lbu	a4,0(a4)
 708:	000086b7          	lui	a3,0x8
 70c:	08468693          	addi	a3,a3,132 # 8084 <buf.2>
 710:	00f687b3          	add	a5,a3,a5
 714:	00e78023          	sb	a4,0(a5)
 718:	fdc42783          	lw	a5,-36(s0)
 71c:	0047d793          	srli	a5,a5,0x4
 720:	fcf42e23          	sw	a5,-36(s0)
 724:	fec42783          	lw	a5,-20(s0)
 728:	00178793          	addi	a5,a5,1
 72c:	fef42623          	sw	a5,-20(s0)
 730:	fec42703          	lw	a4,-20(s0)
 734:	00700793          	addi	a5,zero,7
 738:	fae7d6e3          	bge	a5,a4,6e4 <u32_to_hex+0x18>
 73c:	000087b7          	lui	a5,0x8
 740:	08478793          	addi	a5,a5,132 # 8084 <buf.2>
 744:	00078423          	sb	zero,8(a5)
 748:	000087b7          	lui	a5,0x8
 74c:	08478793          	addi	a5,a5,132 # 8084 <buf.2>
 750:	00078513          	addi	a0,a5,0
 754:	02c12403          	lw	s0,44(sp)
 758:	03010113          	addi	sp,sp,48
 75c:	00008067          	jalr	zero,0(ra)

00000760 <u8_to_hex>:
 760:	fe010113          	addi	sp,sp,-32
 764:	00812e23          	sw	s0,28(sp)
 768:	02010413          	addi	s0,sp,32
 76c:	00050793          	addi	a5,a0,0
 770:	fef407a3          	sb	a5,-17(s0)
 774:	fef44783          	lbu	a5,-17(s0)
 778:	0047d793          	srli	a5,a5,0x4
 77c:	0ff7f793          	andi	a5,a5,255
 780:	00f7f793          	andi	a5,a5,15
 784:	00001737          	lui	a4,0x1
 788:	86470713          	addi	a4,a4,-1948 # 864 <hex.1>
 78c:	00f707b3          	add	a5,a4,a5
 790:	0007c703          	lbu	a4,0(a5)
 794:	000087b7          	lui	a5,0x8
 798:	08e78823          	sb	a4,144(a5) # 8090 <buf.0>
 79c:	fef44783          	lbu	a5,-17(s0)
 7a0:	00f7f793          	andi	a5,a5,15
 7a4:	00001737          	lui	a4,0x1
 7a8:	86470713          	addi	a4,a4,-1948 # 864 <hex.1>
 7ac:	00f707b3          	add	a5,a4,a5
 7b0:	0007c703          	lbu	a4,0(a5)
 7b4:	000087b7          	lui	a5,0x8
 7b8:	09078793          	addi	a5,a5,144 # 8090 <buf.0>
 7bc:	00e780a3          	sb	a4,1(a5)
 7c0:	000087b7          	lui	a5,0x8
 7c4:	09078793          	addi	a5,a5,144 # 8090 <buf.0>
 7c8:	00078123          	sb	zero,2(a5)
 7cc:	000087b7          	lui	a5,0x8
 7d0:	09078793          	addi	a5,a5,144 # 8090 <buf.0>
 7d4:	00078513          	addi	a0,a5,0
 7d8:	01c12403          	lw	s0,28(sp)
 7dc:	02010113          	addi	sp,sp,32
 7e0:	00008067          	jalr	zero,0(ra)

000007e4 <kpanic>:
 7e4:	fe010113          	addi	sp,sp,-32
 7e8:	00112e23          	sw	ra,28(sp)
 7ec:	00812c23          	sw	s0,24(sp)
 7f0:	02010413          	addi	s0,sp,32
 7f4:	fea42623          	sw	a0,-20(s0)
 7f8:	000107b7          	lui	a5,0x10
 7fc:	ffc78793          	addi	a5,a5,-4 # fffc <AUDIO>
 800:	01f00713          	addi	a4,zero,31
 804:	00e78023          	sb	a4,0(a5)
 808:	000017b7          	lui	a5,0x1
 80c:	84878513          	addi	a0,a5,-1976 # 848 <kpanic+0x64>
 810:	ca1ff0ef          	jal	ra,4b0 <kputs>
 814:	fec42503          	lw	a0,-20(s0)
 818:	c99ff0ef          	jal	ra,4b0 <kputs>
 81c:	00000013          	addi	zero,zero,0
 820:	ffdff06f          	jal	zero,81c <kpanic+0x38>
