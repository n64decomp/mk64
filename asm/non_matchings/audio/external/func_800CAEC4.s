glabel func_800CAEC4
/* 0CBAC4 800CAEC4 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CBAC8 800CAEC8 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CBACC 800CAECC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CBAD0 800CAED0 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CBAD4 800CAED4 44856000 */  mtc1  $a1, $f12
/* 0CBAD8 800CAED8 03A0F025 */  move  $fp, $sp
/* 0CBADC 800CAEDC AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CBAE0 800CAEE0 AFA40038 */  sw    $a0, 0x38($sp)
/* 0CBAE4 800CAEE4 15C00031 */  bnez  $t6, .L800CAFAC
/* 0CBAE8 800CAEE8 308600FF */   andi  $a2, $a0, 0xff
/* 0CBAEC 800CAEEC 3C0F800F */  lui   $t7, %hi(D_800EA0EC) # $t7, 0x800f
/* 0CBAF0 800CAEF0 25EFA0EC */  addiu $t7, %lo(D_800EA0EC) # addiu $t7, $t7, -0x5f14
/* 0CBAF4 800CAEF4 00CF1821 */  addu  $v1, $a2, $t7
/* 0CBAF8 800CAEF8 90620000 */  lbu   $v0, ($v1)
/* 0CBAFC 800CAEFC 24010002 */  li    $at, 2
/* 0CBB00 800CAF00 0006C880 */  sll   $t9, $a2, 2
/* 0CBB04 800CAF04 10400004 */  beqz  $v0, .L800CAF18
/* 0CBB08 800CAF08 3C08800F */   lui   $t0, %hi(D_800EA120) # $t0, 0x800f
/* 0CBB0C 800CAF0C 14410027 */  bne   $v0, $at, .L800CAFAC
/* 0CBB10 800CAF10 24180001 */   li    $t8, 1
/* 0CBB14 800CAF14 A0780000 */  sb    $t8, ($v1)
.L800CAF18:
/* 0CBB18 800CAF18 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CBB1C 800CAF1C 44810000 */  mtc1  $at, $f0
/* 0CBB20 800CAF20 3C01800F */  lui   $at, %hi(D_800F39B0) # $at, 0x800f
/* 0CBB24 800CAF24 C42439B0 */  lwc1  $f4, %lo(D_800F39B0)($at)
/* 0CBB28 800CAF28 3C01800F */  lui   $at, %hi(D_800F39B4) # $at, 0x800f
/* 0CBB2C 800CAF2C C42839B4 */  lwc1  $f8, %lo(D_800F39B4)($at)
/* 0CBB30 800CAF30 46046182 */  mul.s $f6, $f12, $f4
/* 0CBB34 800CAF34 00064900 */  sll   $t1, $a2, 4
/* 0CBB38 800CAF38 01264823 */  subu  $t1, $t1, $a2
/* 0CBB3C 800CAF3C 3C0A800F */  lui   $t2, %hi(D_800E9F7C) # $t2, 0x800f
/* 0CBB40 800CAF40 2508A120 */  addiu $t0, %lo(D_800EA120) # addiu $t0, $t0, -0x5ee0
/* 0CBB44 800CAF44 254A9F7C */  addiu $t2, %lo(D_800E9F7C) # addiu $t2, $t2, -0x6084
/* 0CBB48 800CAF48 00094880 */  sll   $t1, $t1, 2
/* 0CBB4C 800CAF4C 46083300 */  add.s $f12, $f6, $f8
/* 0CBB50 800CAF50 3C011900 */  lui   $at, (0x19007020 >> 16) # lui $at, 0x1900
/* 0CBB54 800CAF54 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0CBB58 800CAF58 03281021 */  addu  $v0, $t9, $t0
/* 0CBB5C 800CAF5C 460C003C */  c.lt.s $f0, $f12
/* 0CBB60 800CAF60 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0CBB64 800CAF64 34217020 */  ori   $at, (0x19007020 & 0xFFFF) # ori $at, $at, 0x7020
/* 0CBB68 800CAF68 012A2821 */  addu  $a1, $t1, $t2
/* 0CBB6C 800CAF6C 45000002 */  bc1f  .L800CAF78
/* 0CBB70 800CAF70 3C04800E */   lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 0CBB74 800CAF74 46000306 */  mov.s $f12, $f0
.L800CAF78:
/* 0CBB78 800CAF78 44800000 */  mtc1  $zero, $f0
/* 0CBB7C 800CAF7C 24AB0014 */  addiu $t3, $a1, 0x14
/* 0CBB80 800CAF80 4600603C */  c.lt.s $f12, $f0
/* 0CBB84 800CAF84 00000000 */  nop   
/* 0CBB88 800CAF88 45020003 */  bc1fl .L800CAF98
/* 0CBB8C 800CAF8C E44C0000 */   swc1  $f12, ($v0)
/* 0CBB90 800CAF90 46000306 */  mov.s $f12, $f0
/* 0CBB94 800CAF94 E44C0000 */  swc1  $f12, ($v0)
.L800CAF98:
/* 0CBB98 800CAF98 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 0CBB9C 800CAF9C AFA20010 */  sw    $v0, 0x10($sp)
/* 0CBBA0 800CAFA0 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0CBBA4 800CAFA4 0C031052 */  jal   play_sound
/* 0CBBA8 800CAFA8 00812021 */   addu  $a0, $a0, $at
.L800CAFAC:
/* 0CBBAC 800CAFAC 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0CBBB0 800CAFB0 03C0E825 */  move  $sp, $fp
/* 0CBBB4 800CAFB4 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CBBB8 800CAFB8 03E00008 */  jr    $ra
/* 0CBBBC 800CAFBC 27BD0038 */   addiu $sp, $sp, 0x38
