# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osCreatePiManager
/* 0CD6F0 800CCAF0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CD6F4 800CCAF4 3C0E800F */  lui   $t6, %hi(__osPiDevMgr) # $t6, 0x800f
/* 0CD6F8 800CCAF8 8DCEB340 */  lw    $t6, %lo(__osPiDevMgr)($t6)
/* 0CD6FC 800CCAFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CD700 800CCB00 AFA40030 */  sw    $a0, 0x30($sp)
/* 0CD704 800CCB04 AFA50034 */  sw    $a1, 0x34($sp)
/* 0CD708 800CCB08 AFA60038 */  sw    $a2, 0x38($sp)
/* 0CD70C 800CCB0C 15C00056 */  bnez  $t6, .L800CCC68
/* 0CD710 800CCB10 AFA7003C */   sw    $a3, 0x3c($sp)
/* 0CD714 800CCB14 8FA40034 */  lw    $a0, 0x34($sp)
/* 0CD718 800CCB18 8FA50038 */  lw    $a1, 0x38($sp)
/* 0CD71C 800CCB1C 0C033358 */  jal   osCreateMesgQueue
/* 0CD720 800CCB20 8FA6003C */   lw    $a2, 0x3c($sp)
/* 0CD724 800CCB24 3C048019 */  lui   $a0, %hi(D_80196420) # $a0, 0x8019
/* 0CD728 800CCB28 3C058019 */  lui   $a1, %hi(D_80196438) # $a1, 0x8019
/* 0CD72C 800CCB2C 24A56438 */  addiu $a1, %lo(D_80196438) # addiu $a1, $a1, 0x6438
/* 0CD730 800CCB30 24846420 */  addiu $a0, %lo(D_80196420) # addiu $a0, $a0, 0x6420
/* 0CD734 800CCB34 0C033358 */  jal   osCreateMesgQueue
/* 0CD738 800CCB38 24060001 */   li    $a2, 1
/* 0CD73C 800CCB3C 3C0F800F */  lui   $t7, %hi(D_800EB440) # $t7, 0x800f
/* 0CD740 800CCB40 8DEFB440 */  lw    $t7, %lo(D_800EB440)($t7)
/* 0CD744 800CCB44 15E00003 */  bnez  $t7, .L800CCB54
/* 0CD748 800CCB48 00000000 */   nop   
/* 0CD74C 800CCB4C 0C034BBC */  jal   __osPiCreateAccessQueue
/* 0CD750 800CCB50 00000000 */   nop   
.L800CCB54:
/* 0CD754 800CCB54 3C058019 */  lui   $a1, %hi(D_80196420) # $a1, 0x8019
/* 0CD758 800CCB58 3C062222 */  lui   $a2, (0x22222222 >> 16) # lui $a2, 0x2222
/* 0CD75C 800CCB5C 34C62222 */  ori   $a2, (0x22222222 & 0xFFFF) # ori $a2, $a2, 0x2222
/* 0CD760 800CCB60 24A56420 */  addiu $a1, %lo(D_80196420) # addiu $a1, $a1, 0x6420
/* 0CD764 800CCB64 0C033380 */  jal   osSetEventMesg
/* 0CD768 800CCB68 24040008 */   li    $a0, 8
/* 0CD76C 800CCB6C 2418FFFF */  li    $t8, -1
/* 0CD770 800CCB70 AFB80028 */  sw    $t8, 0x28($sp)
/* 0CD774 800CCB74 0C034A84 */  jal   osGetThreadPri
/* 0CD778 800CCB78 00002025 */   move  $a0, $zero
/* 0CD77C 800CCB7C AFA20024 */  sw    $v0, 0x24($sp)
/* 0CD780 800CCB80 8FB90024 */  lw    $t9, 0x24($sp)
/* 0CD784 800CCB84 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CD788 800CCB88 0328082A */  slt   $at, $t9, $t0
/* 0CD78C 800CCB8C 10200005 */  beqz  $at, .L800CCBA4
/* 0CD790 800CCB90 00000000 */   nop   
/* 0CD794 800CCB94 AFB90028 */  sw    $t9, 0x28($sp)
/* 0CD798 800CCB98 00002025 */  move  $a0, $zero
/* 0CD79C 800CCB9C 0C033320 */  jal   osSetThreadPri
/* 0CD7A0 800CCBA0 01002825 */   move  $a1, $t0
.L800CCBA4:
/* 0CD7A4 800CCBA4 0C0346AC */  jal   __osDisableInt
/* 0CD7A8 800CCBA8 00000000 */   nop   
/* 0CD7AC 800CCBAC 3C01800F */  lui   $at, %hi(__osPiDevMgr) # $at, 0x800f
/* 0CD7B0 800CCBB0 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0CD7B4 800CCBB4 3C0A8019 */  lui   $t2, %hi(D_80195270) # $t2, 0x8019
/* 0CD7B8 800CCBB8 3C0C8019 */  lui   $t4, %hi(D_80196420) # $t4, 0x8019
/* 0CD7BC 800CCBBC 24090001 */  li    $t1, 1
/* 0CD7C0 800CCBC0 254A5270 */  addiu $t2, %lo(D_80195270) # addiu $t2, $t2, 0x5270
/* 0CD7C4 800CCBC4 258C6420 */  addiu $t4, %lo(D_80196420) # addiu $t4, $t4, 0x6420
/* 0CD7C8 800CCBC8 AC29B340 */  sw    $t1, %lo(__osPiDevMgr)($at)
/* 0CD7CC 800CCBCC AC2AB344 */  sw    $t2, %lo(__osPiDevMgr+0x4)($at)
/* 0CD7D0 800CCBD0 AC2CB34C */  sw    $t4, %lo(__osPiDevMgr+0xC)($at)
/* 0CD7D4 800CCBD4 3C188019 */  lui   $t8, %hi(D_80195420) # $t8, 0x8019
/* 0CD7D8 800CCBD8 AC2BB348 */  sw    $t3, %lo(__osPiDevMgr+0x8)($at)
/* 0CD7DC 800CCBDC 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CD7E0 800CCBE0 3C01800F */  lui   $at, %hi(__osPiDevMgr+0x18) # $at, 0x800f
/* 0CD7E4 800CCBE4 3C0D8019 */  lui   $t5, %hi(D_80197628) # $t5, 0x8019
/* 0CD7E8 800CCBE8 3C0E800D */  lui   $t6, %hi(osPiRawStartDma) # $t6, 0x800d
/* 0CD7EC 800CCBEC 3C0F800D */  lui   $t7, %hi(osEPiRawStartDma) # $t7, 0x800d
/* 0CD7F0 800CCBF0 27185420 */  addiu $t8, %lo(D_80195420) # addiu $t8, $t8, 0x5420
/* 0CD7F4 800CCBF4 25AD7628 */  addiu $t5, %lo(D_80197628) # addiu $t5, $t5, 0x7628
/* 0CD7F8 800CCBF8 25CE2FB0 */  addiu $t6, %lo(osPiRawStartDma) # addiu $t6, $t6, 0x2fb0
/* 0CD7FC 800CCBFC 25EF3090 */  addiu $t7, %lo(osEPiRawStartDma) # addiu $t7, $t7, 0x3090
/* 0CD800 800CCC00 27191000 */  addiu $t9, $t8, 0x1000
/* 0CD804 800CCC04 3C06800D */  lui   $a2, %hi(D_800D3170) # $a2, 0x800d
/* 0CD808 800CCC08 3C07800F */  lui   $a3, %hi(__osPiDevMgr) # $a3, 0x800f
/* 0CD80C 800CCC0C AFA2002C */  sw    $v0, 0x2c($sp)
/* 0CD810 800CCC10 AC2DB350 */  sw    $t5, %lo(__osPiDevMgr+0x10)($at)
/* 0CD814 800CCC14 AC2EB354 */  sw    $t6, %lo(__osPiDevMgr+0x14)($at)
/* 0CD818 800CCC18 AC2FB358 */  sw    $t7, %lo(__osPiDevMgr+0x18)($at)
/* 0CD81C 800CCC1C 24E7B340 */  addiu $a3, %lo(__osPiDevMgr) # addiu $a3, $a3, -0x4cc0
/* 0CD820 800CCC20 24C63170 */  addiu $a2, %lo(D_800D3170) # addiu $a2, $a2, 0x3170
/* 0CD824 800CCC24 AFB90010 */  sw    $t9, 0x10($sp)
/* 0CD828 800CCC28 01402025 */  move  $a0, $t2
/* 0CD82C 800CCC2C 00002825 */  move  $a1, $zero
/* 0CD830 800CCC30 0C032FDC */  jal   osCreateThread
/* 0CD834 800CCC34 AFA80014 */   sw    $t0, 0x14($sp)
/* 0CD838 800CCC38 3C048019 */  lui   $a0, %hi(D_80195270) # $a0, 0x8019
/* 0CD83C 800CCC3C 0C0330D8 */  jal   osStartThread
/* 0CD840 800CCC40 24845270 */   addiu $a0, %lo(D_80195270) # addiu $a0, $a0, 0x5270
/* 0CD844 800CCC44 0C0346B4 */  jal   __osRestoreInt
/* 0CD848 800CCC48 8FA4002C */   lw    $a0, 0x2c($sp)
/* 0CD84C 800CCC4C 8FA90028 */  lw    $t1, 0x28($sp)
/* 0CD850 800CCC50 2401FFFF */  li    $at, -1
/* 0CD854 800CCC54 11210004 */  beq   $t1, $at, .L800CCC68
/* 0CD858 800CCC58 00000000 */   nop   
/* 0CD85C 800CCC5C 00002025 */  move  $a0, $zero
/* 0CD860 800CCC60 0C033320 */  jal   osSetThreadPri
/* 0CD864 800CCC64 01202825 */   move  $a1, $t1
.L800CCC68:
/* 0CD868 800CCC68 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CD86C 800CCC6C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0CD870 800CCC70 03E00008 */  jr    $ra
/* 0CD874 800CCC74 00000000 */   nop   

/* 0CD878 800CCC78 00000000 */  nop   
/* 0CD87C 800CCC7C 00000000 */  nop   