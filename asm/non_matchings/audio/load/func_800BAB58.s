glabel func_800BAB58
/* 0BB758 800BAB58 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BB75C 800BAB5C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0BB760 800BAB60 AFB00028 */  sw    $s0, 0x28($sp)
/* 0BB764 800BAB64 AFA40030 */  sw    $a0, 0x30($sp)
/* 0BB768 800BAB68 AFA50034 */  sw    $a1, 0x34($sp)
/* 0BB76C 800BAB6C AFA7003C */  sw    $a3, 0x3c($sp)
/* 0BB770 800BAB70 8CC20000 */  lw    $v0, ($a2)
/* 0BB774 800BAB74 28411000 */  slti  $at, $v0, 0x1000
/* 0BB778 800BAB78 14200003 */  bnez  $at, .L800BAB88
/* 0BB77C 800BAB7C 00408025 */   move  $s0, $v0
/* 0BB780 800BAB80 10000001 */  b     .L800BAB88
/* 0BB784 800BAB84 24101000 */   li    $s0, 4096
.L800BAB88:
/* 0BB788 800BAB88 00507023 */  subu  $t6, $v0, $s0
/* 0BB78C 800BAB8C ACCE0000 */  sw    $t6, ($a2)
/* 0BB790 800BAB90 8FAF0034 */  lw    $t7, 0x34($sp)
/* 0BB794 800BAB94 02002825 */  move  $a1, $s0
/* 0BB798 800BAB98 0C0336E0 */  jal   osInvalDCache
/* 0BB79C 800BAB9C 8DE40000 */   lw    $a0, ($t7)
/* 0BB7A0 800BABA0 8FB80030 */  lw    $t8, 0x30($sp)
/* 0BB7A4 800BABA4 8FB90034 */  lw    $t9, 0x34($sp)
/* 0BB7A8 800BABA8 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0BB7AC 800BABAC 8F070000 */  lw    $a3, ($t8)
/* 0BB7B0 800BABB0 8F280000 */  lw    $t0, ($t9)
/* 0BB7B4 800BABB4 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BB7B8 800BABB8 8FA40040 */  lw    $a0, 0x40($sp)
/* 0BB7BC 800BABBC 00002825 */  move  $a1, $zero
/* 0BB7C0 800BABC0 00003025 */  move  $a2, $zero
/* 0BB7C4 800BABC4 AFA90018 */  sw    $t1, 0x18($sp)
/* 0BB7C8 800BABC8 0C03370C */  jal   osPiStartDma
/* 0BB7CC 800BABCC AFA80010 */   sw    $t0, 0x10($sp)
/* 0BB7D0 800BABD0 8FA30030 */  lw    $v1, 0x30($sp)
/* 0BB7D4 800BABD4 8FA20034 */  lw    $v0, 0x34($sp)
/* 0BB7D8 800BABD8 8C6A0000 */  lw    $t2, ($v1)
/* 0BB7DC 800BABDC 01505821 */  addu  $t3, $t2, $s0
/* 0BB7E0 800BABE0 AC6B0000 */  sw    $t3, ($v1)
/* 0BB7E4 800BABE4 8C4C0000 */  lw    $t4, ($v0)
/* 0BB7E8 800BABE8 01906821 */  addu  $t5, $t4, $s0
/* 0BB7EC 800BABEC AC4D0000 */  sw    $t5, ($v0)
/* 0BB7F0 800BABF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0BB7F4 800BABF4 8FB00028 */  lw    $s0, 0x28($sp)
/* 0BB7F8 800BABF8 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BB7FC 800BABFC 03E00008 */  jr    $ra
/* 0BB800 800BAC00 00000000 */   nop   
