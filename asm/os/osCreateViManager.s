# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osCreateViManager
/* 0CD0B0 800CC4B0 3C0E800F */  lui   $t6, %hi(viMgrMainArgs) # $t6, 0x800f
/* 0CD0B4 800CC4B4 8DCEA600 */  lw    $t6, %lo(viMgrMainArgs)($t6)
/* 0CD0B8 800CC4B8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CD0BC 800CC4BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CD0C0 800CC4C0 15C00059 */  bnez  $t6, .L800CC628
/* 0CD0C4 800CC4C4 AFA40030 */   sw    $a0, 0x30($sp)
/* 0CD0C8 800CC4C8 0C034984 */  jal   __osTimerServicesInit
/* 0CD0CC 800CC4CC 00000000 */   nop   
/* 0CD0D0 800CC4D0 3C048019 */  lui   $a0, %hi(D_80195200) # $a0, 0x8019
/* 0CD0D4 800CC4D4 3C058019 */  lui   $a1, %hi(D_80195218) # $a1, 0x8019
/* 0CD0D8 800CC4D8 24A55218 */  addiu $a1, %lo(D_80195218) # addiu $a1, $a1, 0x5218
/* 0CD0DC 800CC4DC 24845200 */  addiu $a0, %lo(D_80195200) # addiu $a0, $a0, 0x5200
/* 0CD0E0 800CC4E0 0C033358 */  jal   osCreateMesgQueue
/* 0CD0E4 800CC4E4 24060005 */   li    $a2, 5
/* 0CD0E8 800CC4E8 3C018019 */  lui   $at, %hi(D_80195230) # $at, 0x8019
/* 0CD0EC 800CC4EC 240F000D */  li    $t7, 13
/* 0CD0F0 800CC4F0 A42F5230 */  sh    $t7, %lo(D_80195230)($at)
/* 0CD0F4 800CC4F4 A0205232 */  sb    $zero, %lo(D_80195230+0x2)($at)
/* 0CD0F8 800CC4F8 AC205234 */  sw    $zero, %lo(D_80195230+0x4)($at)
/* 0CD0FC 800CC4FC 3C018019 */  lui   $at, %hi(D_80195248) # $at, 0x8019
/* 0CD100 800CC500 2418000E */  li    $t8, 14
/* 0CD104 800CC504 3C058019 */  lui   $a1, %hi(D_80195200) # $a1, 0x8019
/* 0CD108 800CC508 3C068019 */  lui   $a2, %hi(D_80195230) # $a2, 0x8019
/* 0CD10C 800CC50C A4385248 */  sh    $t8, %lo(D_80195248)($at)
/* 0CD110 800CC510 A020524A */  sb    $zero, %lo(D_80195248+0x2)($at)
/* 0CD114 800CC514 AC20524C */  sw    $zero, %lo(D_80195248+0x4)($at)
/* 0CD118 800CC518 24C65230 */  addiu $a2, %lo(D_80195230) # addiu $a2, $a2, 0x5230
/* 0CD11C 800CC51C 24A55200 */  addiu $a1, %lo(D_80195200) # addiu $a1, $a1, 0x5200
/* 0CD120 800CC520 0C033380 */  jal   osSetEventMesg
/* 0CD124 800CC524 24040007 */   li    $a0, 7
/* 0CD128 800CC528 3C058019 */  lui   $a1, %hi(D_80195200) # $a1, 0x8019
/* 0CD12C 800CC52C 3C068019 */  lui   $a2, %hi(D_80195248) # $a2, 0x8019
/* 0CD130 800CC530 24C65248 */  addiu $a2, %lo(D_80195248) # addiu $a2, $a2, 0x5248
/* 0CD134 800CC534 24A55200 */  addiu $a1, %lo(D_80195200) # addiu $a1, $a1, 0x5200
/* 0CD138 800CC538 0C033380 */  jal   osSetEventMesg
/* 0CD13C 800CC53C 24040003 */   li    $a0, 3
/* 0CD140 800CC540 2419FFFF */  li    $t9, -1
/* 0CD144 800CC544 AFB90028 */  sw    $t9, 0x28($sp)
/* 0CD148 800CC548 0C034A84 */  jal   osGetThreadPri
/* 0CD14C 800CC54C 00002025 */   move  $a0, $zero
/* 0CD150 800CC550 AFA20024 */  sw    $v0, 0x24($sp)
/* 0CD154 800CC554 8FA80024 */  lw    $t0, 0x24($sp)
/* 0CD158 800CC558 8FA90030 */  lw    $t1, 0x30($sp)
/* 0CD15C 800CC55C 0109082A */  slt   $at, $t0, $t1
/* 0CD160 800CC560 10200005 */  beqz  $at, .L800CC578
/* 0CD164 800CC564 00000000 */   nop   
/* 0CD168 800CC568 AFA80028 */  sw    $t0, 0x28($sp)
/* 0CD16C 800CC56C 00002025 */  move  $a0, $zero
/* 0CD170 800CC570 0C033320 */  jal   osSetThreadPri
/* 0CD174 800CC574 01202825 */   move  $a1, $t1
.L800CC578:
/* 0CD178 800CC578 0C0346AC */  jal   __osDisableInt
/* 0CD17C 800CC57C 00000000 */   nop   
/* 0CD180 800CC580 3C01800F */  lui   $at, %hi(viMgrMainArgs) # $at, 0x800f
/* 0CD184 800CC584 3C0C8019 */  lui   $t4, %hi(D_80195200) # $t4, 0x8019
/* 0CD188 800CC588 3C0B8019 */  lui   $t3, %hi(D_80194050) # $t3, 0x8019
/* 0CD18C 800CC58C 258C5200 */  addiu $t4, %lo(D_80195200) # addiu $t4, $t4, 0x5200
/* 0CD190 800CC590 240A0001 */  li    $t2, 1
/* 0CD194 800CC594 256B4050 */  addiu $t3, %lo(D_80194050) # addiu $t3, $t3, 0x4050
/* 0CD198 800CC598 AC2AA600 */  sw    $t2, %lo(viMgrMainArgs)($at)
/* 0CD19C 800CC59C AC2BA604 */  sw    $t3, %lo(viMgrMainArgs+0x4)($at)
/* 0CD1A0 800CC5A0 AC2CA608 */  sw    $t4, %lo(viMgrMainArgs+0x8)($at)
/* 0CD1A4 800CC5A4 AC2CA60C */  sw    $t4, %lo(viMgrMainArgs+0xC)($at)
/* 0CD1A8 800CC5A8 3C0D8019 */  lui   $t5, %hi(D_80194200) # $t5, 0x8019
/* 0CD1AC 800CC5AC 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0CD1B0 800CC5B0 3C01800F */  lui   $at, %hi(D_800EA610) # $at, 0x800f
/* 0CD1B4 800CC5B4 25AD4200 */  addiu $t5, %lo(D_80194200) # addiu $t5, $t5, 0x4200
/* 0CD1B8 800CC5B8 25AE1000 */  addiu $t6, $t5, 0x1000
/* 0CD1BC 800CC5BC 3C06800D */  lui   $a2, %hi(__osViDevMgrMain) # $a2, 0x800d
/* 0CD1C0 800CC5C0 3C07800F */  lui   $a3, %hi(viMgrMainArgs) # $a3, 0x800f
/* 0CD1C4 800CC5C4 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0CD1C8 800CC5C8 AC20A610 */  sw    $zero, %lo(D_800EA610)($at)
/* 0CD1CC 800CC5CC AC20A614 */  sw    $zero, %lo(D_800EA610+0x4)($at)
/* 0CD1D0 800CC5D0 AC20A618 */  sw    $zero, %lo(D_800EA610+0x8)($at)
/* 0CD1D4 800CC5D4 24E7A600 */  addiu $a3, %lo(viMgrMainArgs) # addiu $a3, $a3, -0x5a00
/* 0CD1D8 800CC5D8 24C6C638 */  addiu $a2, %lo(__osViDevMgrMain) # addiu $a2, $a2, -0x39c8
/* 0CD1DC 800CC5DC AFAE0010 */  sw    $t6, 0x10($sp)
/* 0CD1E0 800CC5E0 01602025 */  move  $a0, $t3
/* 0CD1E4 800CC5E4 00002825 */  move  $a1, $zero
/* 0CD1E8 800CC5E8 0C032FDC */  jal   osCreateThread
/* 0CD1EC 800CC5EC AFAF0014 */   sw    $t7, 0x14($sp)
/* 0CD1F0 800CC5F0 0C034A8C */  jal   __osViInit
/* 0CD1F4 800CC5F4 00000000 */   nop   
/* 0CD1F8 800CC5F8 3C048019 */  lui   $a0, %hi(D_80194050) # $a0, 0x8019
/* 0CD1FC 800CC5FC 0C0330D8 */  jal   osStartThread
/* 0CD200 800CC600 24844050 */   addiu $a0, %lo(D_80194050) # addiu $a0, $a0, 0x4050
/* 0CD204 800CC604 0C0346B4 */  jal   __osRestoreInt
/* 0CD208 800CC608 8FA4002C */   lw    $a0, 0x2c($sp)
/* 0CD20C 800CC60C 8FB80028 */  lw    $t8, 0x28($sp)
/* 0CD210 800CC610 2401FFFF */  li    $at, -1
/* 0CD214 800CC614 13010004 */  beq   $t8, $at, .L800CC628
/* 0CD218 800CC618 00000000 */   nop   
/* 0CD21C 800CC61C 00002025 */  move  $a0, $zero
/* 0CD220 800CC620 0C033320 */  jal   osSetThreadPri
/* 0CD224 800CC624 03002825 */   move  $a1, $t8
.L800CC628:
/* 0CD228 800CC628 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CD22C 800CC62C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0CD230 800CC630 03E00008 */  jr    $ra
/* 0CD234 800CC634 00000000 */   nop   

glabel __osViDevMgrMain
/* 0CD238 800CC638 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CD23C 800CC63C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CD240 800CC640 AFA40038 */  sw    $a0, 0x38($sp)
/* 0CD244 800CC644 AFB00018 */  sw    $s0, 0x18($sp)
/* 0CD248 800CC648 AFA0002C */  sw    $zero, 0x2c($sp)
/* 0CD24C 800CC64C 0C034AE0 */  jal   __osViGetCurrentContext
/* 0CD250 800CC650 AFA00028 */   sw    $zero, 0x28($sp)
/* 0CD254 800CC654 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CD258 800CC658 8FAE0034 */  lw    $t6, 0x34($sp)
/* 0CD25C 800CC65C 3C018019 */  lui   $at, %hi(D_80195260) # $at, 0x8019
/* 0CD260 800CC660 95CF0002 */  lhu   $t7, 2($t6)
/* 0CD264 800CC664 15E00004 */  bnez  $t7, .L800CC678
/* 0CD268 800CC668 A42F5260 */   sh    $t7, %lo(D_80195260)($at)
/* 0CD26C 800CC66C 24180001 */  li    $t8, 1
/* 0CD270 800CC670 3C018019 */  lui   $at, %hi(D_80195260) # $at, 0x8019
/* 0CD274 800CC674 A4385260 */  sh    $t8, %lo(D_80195260)($at)
.L800CC678:
/* 0CD278 800CC678 8FB90038 */  lw    $t9, 0x38($sp)
/* 0CD27C 800CC67C AFB90030 */  sw    $t9, 0x30($sp)
.L800CC680:
/* 0CD280 800CC680 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CD284 800CC684 27A5002C */  addiu $a1, $sp, 0x2c
/* 0CD288 800CC688 24060001 */  li    $a2, 1
/* 0CD28C 800CC68C 0C0335D4 */  jal   osRecvMesg
/* 0CD290 800CC690 8D04000C */   lw    $a0, 0xc($t0)
/* 0CD294 800CC694 8FA9002C */  lw    $t1, 0x2c($sp)
/* 0CD298 800CC698 2401000D */  li    $at, 13
/* 0CD29C 800CC69C 95300000 */  lhu   $s0, ($t1)
/* 0CD2A0 800CC6A0 12010005 */  beq   $s0, $at, .L800CC6B8
/* 0CD2A4 800CC6A4 2401000E */   li    $at, 14
/* 0CD2A8 800CC6A8 12010047 */  beq   $s0, $at, .L800CC7C8
/* 0CD2AC 800CC6AC 00000000 */   nop   
/* 0CD2B0 800CC6B0 1000FFF3 */  b     .L800CC680
/* 0CD2B4 800CC6B4 00000000 */   nop   
.L800CC6B8:
/* 0CD2B8 800CC6B8 0C034AE4 */  jal   __osViSwapContext
/* 0CD2BC 800CC6BC 00000000 */   nop   
/* 0CD2C0 800CC6C0 3C0A8019 */  lui   $t2, %hi(D_80195260) # $t2, 0x8019
/* 0CD2C4 800CC6C4 954A5260 */  lhu   $t2, %lo(D_80195260)($t2)
/* 0CD2C8 800CC6C8 3C018019 */  lui   $at, %hi(D_80195260) # $at, 0x8019
/* 0CD2CC 800CC6CC 254BFFFF */  addiu $t3, $t2, -1
/* 0CD2D0 800CC6D0 316CFFFF */  andi  $t4, $t3, 0xffff
/* 0CD2D4 800CC6D4 15800010 */  bnez  $t4, .L800CC718
/* 0CD2D8 800CC6D8 A42B5260 */   sh    $t3, %lo(D_80195260)($at)
/* 0CD2DC 800CC6DC 0C034AE0 */  jal   __osViGetCurrentContext
/* 0CD2E0 800CC6E0 00000000 */   nop   
/* 0CD2E4 800CC6E4 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CD2E8 800CC6E8 8FAD0034 */  lw    $t5, 0x34($sp)
/* 0CD2EC 800CC6EC 8DAE0010 */  lw    $t6, 0x10($t5)
/* 0CD2F0 800CC6F0 11C00005 */  beqz  $t6, .L800CC708
/* 0CD2F4 800CC6F4 00000000 */   nop   
/* 0CD2F8 800CC6F8 01C02025 */  move  $a0, $t6
/* 0CD2FC 800CC6FC 8DA50014 */  lw    $a1, 0x14($t5)
/* 0CD300 800CC700 0C033630 */  jal   osSendMesg
/* 0CD304 800CC704 00003025 */   move  $a2, $zero
.L800CC708:
/* 0CD308 800CC708 8FAF0034 */  lw    $t7, 0x34($sp)
/* 0CD30C 800CC70C 3C018019 */  lui   $at, %hi(D_80195260) # $at, 0x8019
/* 0CD310 800CC710 95F80002 */  lhu   $t8, 2($t7)
/* 0CD314 800CC714 A4385260 */  sh    $t8, %lo(D_80195260)($at)
.L800CC718:
/* 0CD318 800CC718 3C198019 */  lui   $t9, %hi(__osViIntrCount) # $t9, 0x8019
/* 0CD31C 800CC71C 8F39760C */  lw    $t9, %lo(__osViIntrCount)($t9)
/* 0CD320 800CC720 8FA90028 */  lw    $t1, 0x28($sp)
/* 0CD324 800CC724 3C018019 */  lui   $at, %hi(__osViIntrCount) # $at, 0x8019
/* 0CD328 800CC728 27280001 */  addiu $t0, $t9, 1
/* 0CD32C 800CC72C 1120000C */  beqz  $t1, .L800CC760
/* 0CD330 800CC730 AC28760C */   sw    $t0, %lo(__osViIntrCount)($at)
/* 0CD334 800CC734 0C034468 */  jal   osGetCount
/* 0CD338 800CC738 00000000 */   nop   
/* 0CD33C 800CC73C AFA20024 */  sw    $v0, 0x24($sp)
/* 0CD340 800CC740 8FAA0024 */  lw    $t2, 0x24($sp)
/* 0CD344 800CC744 240C0000 */  li    $t4, 0
/* 0CD348 800CC748 3C018019 */  lui   $at, %hi(__osCurrentTime) # $at, 0x8019
/* 0CD34C 800CC74C AC2C7600 */  sw    $t4, %lo(__osCurrentTime)($at)
/* 0CD350 800CC750 3C018019 */  lui   $at, %hi(__osCurrentTime) # $at, 0x8019
/* 0CD354 800CC754 01406825 */  move  $t5, $t2
/* 0CD358 800CC758 AC2D7604 */  sw    $t5, %lo(__osCurrentTime+ 4)($at)
/* 0CD35C 800CC75C AFA00028 */  sw    $zero, 0x28($sp)
.L800CC760:
/* 0CD360 800CC760 3C0B8019 */  lui   $t3, %hi(__osBaseCounter) # $t3, 0x8019
/* 0CD364 800CC764 8D6B7608 */  lw    $t3, %lo(__osBaseCounter)($t3)
/* 0CD368 800CC768 0C034468 */  jal   osGetCount
/* 0CD36C 800CC76C AFAB0024 */   sw    $t3, 0x24($sp)
/* 0CD370 800CC770 3C018019 */  lui   $at, %hi(__osBaseCounter) # $at, 0x8019
/* 0CD374 800CC774 AC227608 */  sw    $v0, %lo(__osBaseCounter)($at)
/* 0CD378 800CC778 3C0E8019 */  lui   $t6, %hi(__osBaseCounter) # $t6, 0x8019
/* 0CD37C 800CC77C 8DCE7608 */  lw    $t6, %lo(__osBaseCounter)($t6)
/* 0CD380 800CC780 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0CD384 800CC784 3C0B8019 */  lui   $t3, %hi(__osCurrentTime) # $t3, 0x8019
/* 0CD388 800CC788 8D6B7604 */  lw    $t3, %lo(__osCurrentTime + 4)($t3)
/* 0CD38C 800CC78C 01CFC023 */  subu  $t8, $t6, $t7
/* 0CD390 800CC790 03004825 */  move  $t1, $t8
/* 0CD394 800CC794 3C0A8019 */  lui   $t2, %hi(__osCurrentTime) # $t2, 0x8019
/* 0CD398 800CC798 012B6821 */  addu  $t5, $t1, $t3
/* 0CD39C 800CC79C 8D4A7600 */  lw    $t2, %lo(__osCurrentTime)($t2)
/* 0CD3A0 800CC7A0 24080000 */  li    $t0, 0
/* 0CD3A4 800CC7A4 01AB082B */  sltu  $at, $t5, $t3
/* 0CD3A8 800CC7A8 00286021 */  addu  $t4, $at, $t0
/* 0CD3AC 800CC7AC 3C018019 */  lui   $at, %hi(__osCurrentTime) # $at, 0x8019
/* 0CD3B0 800CC7B0 018A6021 */  addu  $t4, $t4, $t2
/* 0CD3B4 800CC7B4 AC2C7600 */  sw    $t4, %lo(__osCurrentTime)($at)
/* 0CD3B8 800CC7B8 3C018019 */  lui   $at, %hi(__osCurrentTime) # $at, 0x8019
/* 0CD3BC 800CC7BC AFB80024 */  sw    $t8, 0x24($sp)
/* 0CD3C0 800CC7C0 1000FFAF */  b     .L800CC680
/* 0CD3C4 800CC7C4 AC2D7604 */   sw    $t5, %lo(__osCurrentTime + 4)($at)
.L800CC7C8:
/* 0CD3C8 800CC7C8 0C0349A7 */  jal   __osTimerInterrupt
/* 0CD3CC 800CC7CC 00000000 */   nop   
/* 0CD3D0 800CC7D0 1000FFAB */  b     .L800CC680
/* 0CD3D4 800CC7D4 00000000 */   nop   
/* 0CD3D8 800CC7D8 00000000 */  nop   
/* 0CD3DC 800CC7DC 00000000 */  nop   
/* 0CD3E0 800CC7E0 00000000 */  nop   
/* 0CD3E4 800CC7E4 00000000 */  nop   
/* 0CD3E8 800CC7E8 00000000 */  nop   
/* 0CD3EC 800CC7EC 00000000 */  nop   
/* 0CD3F0 800CC7F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CD3F4 800CC7F4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0CD3F8 800CC7F8 27BD0038 */  addiu $sp, $sp, 0x38
/* 0CD3FC 800CC7FC 03E00008 */  jr    $ra
/* 0CD400 800CC800 00000000 */   nop   

/* 0CD404 800CC804 00000000 */  nop   
/* 0CD408 800CC808 00000000 */  nop   
/* 0CD40C 800CC80C 00000000 */  nop   
/* 0CD410 800CC810 00000000 */  nop   
/* 0CD414 800CC814 00000000 */  nop   
/* 0CD418 800CC818 00000000 */  nop   
/* 0CD41C 800CC81C 00000000 */  nop   
/* 0CD420 800CC820 00000000 */  nop   
/* 0CD424 800CC824 00000000 */  nop   
/* 0CD428 800CC828 00000000 */  nop   
/* 0CD42C 800CC82C 00000000 */  nop   
/* 0CD430 800CC830 00000000 */  nop   
/* 0CD434 800CC834 00000000 */  nop   
/* 0CD438 800CC838 00000000 */  nop   
/* 0CD43C 800CC83C 00000000 */  nop   
/* 0CD440 800CC840 00000000 */  nop   
/* 0CD444 800CC844 00000000 */  nop   
/* 0CD448 800CC848 00000000 */  nop   
/* 0CD44C 800CC84C 00000000 */  nop   