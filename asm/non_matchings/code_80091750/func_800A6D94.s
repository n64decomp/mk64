glabel func_800A6D94
/* 0A7994 800A6D94 3C0F800E */  lui   $t7, %hi(gPlayerWinningIndex) # $t7, 0x800e
/* 0A7998 800A6D98 8DEFC5E8 */  lw    $t7, %lo(gPlayerWinningIndex)($t7)
/* 0A799C 800A6D9C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A79A0 800A6DA0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A79A4 800A6DA4 AFA40040 */  sw    $a0, 0x40($sp)
/* 0A79A8 800A6DA8 AFA50044 */  sw    $a1, 0x44($sp)
/* 0A79AC 800A6DAC 10AF0002 */  beq   $a1, $t7, .L800A6DB8
/* 0A79B0 800A6DB0 00001025 */   move  $v0, $zero
/* 0A79B4 800A6DB4 24020001 */  li    $v0, 1
.L800A6DB8:
/* 0A79B8 800A6DB8 8FB80044 */  lw    $t8, 0x44($sp)
/* 0A79BC 800A6DBC 3C04800E */  lui   $a0, %hi(gModeSelection)
/* 0A79C0 800A6DC0 00D8C821 */  addu  $t9, $a2, $t8
/* 0A79C4 800A6DC4 93280000 */  lbu   $t0, ($t9)
/* 0A79C8 800A6DC8 10400005 */  beqz  $v0, .L800A6DE0
/* 0A79CC 800A6DCC AFA80024 */   sw    $t0, 0x24($sp)
/* 0A79D0 800A6DD0 0C024C36 */  jal   set_text_color
/* 0A79D4 800A6DD4 00002025 */   move  $a0, $zero
/* 0A79D8 800A6DD8 10000008 */  b     .L800A6DFC
/* 0A79DC 800A6DDC 8FA40024 */   lw    $a0, 0x24($sp)
.L800A6DE0:
/* 0A79E0 800A6DE0 8C84C54C */  lw    $a0, %lo(gModeSelection + 0x10)($a0)
/* 0A79E4 800A6DE4 24010003 */  li    $at, 3
/* 0A79E8 800A6DE8 0081001A */  div   $zero, $a0, $at
/* 0A79EC 800A6DEC 00002010 */  mfhi  $a0
/* 0A79F0 800A6DF0 0C024C36 */  jal   set_text_color
/* 0A79F4 800A6DF4 00000000 */   nop
/* 0A79F8 800A6DF8 8FA40024 */  lw    $a0, 0x24($sp)
.L800A6DFC:
/* 0A79FC 800A6DFC 0C029E7D */  jal   func_800A79F4
/* 0A7A00 800A6E00 27A50030 */   addiu $a1, $sp, 0x30
/* 0A7A04 800A6E04 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A7A08 800A6E08 44810000 */  mtc1  $at, $f0
/* 0A7A0C 800A6E0C 3C014200 */  li    $at, 0x42000000 # 32.000000
/* 0A7A10 800A6E10 44812000 */  mtc1  $at, $f4
/* 0A7A14 800A6E14 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0A7A18 800A6E18 44814000 */  mtc1  $at, $f8
/* 0A7A1C 800A6E1C 46002182 */  mul.s $f6, $f4, $f0
/* 0A7A20 800A6E20 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0A7A24 800A6E24 8FAD0044 */  lw    $t5, 0x44($sp)
/* 0A7A28 800A6E28 3C19800E */  lui   $t9, %hi(D_800E7300) # $t9, 0x800e
/* 0A7A2C 800A6E2C 000B6140 */  sll   $t4, $t3, 5
/* 0A7A30 800A6E30 000D70C0 */  sll   $t6, $t5, 3
/* 0A7A34 800A6E34 018E7821 */  addu  $t7, $t4, $t6
/* 0A7A38 800A6E38 46083283 */  div.s $f10, $f6, $f8
/* 0A7A3C 800A6E3C 25F8FFC0 */  addiu $t8, $t7, -0x40
/* 0A7A40 800A6E40 27397300 */  addiu $t9, %lo(D_800E7300) # addiu $t9, $t9, 0x7300
/* 0A7A44 800A6E44 03191021 */  addu  $v0, $t8, $t9
/* 0A7A48 800A6E48 84480000 */  lh    $t0, ($v0)
/* 0A7A4C 800A6E4C 84450002 */  lh    $a1, 2($v0)
/* 0A7A50 800A6E50 27A60030 */  addiu $a2, $sp, 0x30
/* 0A7A54 800A6E54 25090020 */  addiu $t1, $t0, 0x20
/* 0A7A58 800A6E58 44898000 */  mtc1  $t1, $f16
/* 0A7A5C 800A6E5C 00003825 */  move  $a3, $zero
/* 0A7A60 800A6E60 E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A7A64 800A6E64 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A7A68 800A6E68 24A50075 */  addiu $a1, $a1, 0x75
/* 0A7A6C 800A6E6C 468084A0 */  cvt.s.w $f18, $f16
/* 0A7A70 800A6E70 460A9101 */  sub.s $f4, $f18, $f10
/* 0A7A74 800A6E74 4600218D */  trunc.w.s $f6, $f4
/* 0A7A78 800A6E78 44043000 */  mfc1  $a0, $f6
/* 0A7A7C 800A6E7C 0C024E7F */  jal   text_draw
/* 0A7A80 800A6E80 00000000 */   nop
/* 0A7A84 800A6E84 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A7A88 800A6E88 27BD0040 */  addiu $sp, $sp, 0x40
/* 0A7A8C 800A6E8C 03E00008 */  jr    $ra
/* 0A7A90 800A6E90 00000000 */   nop
