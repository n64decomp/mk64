glabel func_80091298
/* 091E98 80091298 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 091E9C 8009129C 3C18800E */  lui   $t8, %hi(D_800E706C) # $t8, 0x800e
/* 091EA0 800912A0 AFA50024 */  sw    $a1, 0x24($sp)
/* 091EA4 800912A4 2718706C */  addiu $t8, %lo(D_800E706C) # addiu $t8, $t8, 0x706c
/* 091EA8 800912A8 8F010000 */  lw    $at, ($t8)
/* 091EAC 800912AC 27A7000C */  addiu $a3, $sp, 0xc
/* 091EB0 800912B0 00057600 */  sll   $t6, $a1, 0x18
/* 091EB4 800912B4 ACE10000 */  sw    $at, ($a3)
/* 091EB8 800912B8 8F090004 */  lw    $t1, 4($t8)
/* 091EBC 800912BC 000E2E03 */  sra   $a1, $t6, 0x18
/* 091EC0 800912C0 00057040 */  sll   $t6, $a1, 1
/* 091EC4 800912C4 ACE90004 */  sw    $t1, 4($a3)
/* 091EC8 800912C8 8F010008 */  lw    $at, 8($t8)
/* 091ECC 800912CC 3C0F8019 */  lui   $t7, %hi(D_8018D920) # $t7, 0x8019
/* 091ED0 800912D0 ACE10008 */  sw    $at, 8($a3)
/* 091ED4 800912D4 848A0044 */  lh    $t2, 0x44($a0)
/* 091ED8 800912D8 848200B2 */  lh    $v0, 0xb2($a0)
/* 091EDC 800912DC 354B2000 */  ori   $t3, $t2, 0x2000
/* 091EE0 800912E0 14400003 */  bnez  $v0, .L800912F0
/* 091EE4 800912E4 A48B0044 */   sh    $t3, 0x44($a0)
/* 091EE8 800912E8 10000010 */  b     .L8009132C
/* 091EEC 800912EC 00001825 */   move  $v1, $zero
.L800912F0:
/* 091EF0 800912F0 848C002E */  lh    $t4, 0x2e($a0)
/* 091EF4 800912F4 25EFD920 */  addiu $t7, %lo(D_8018D920) # addiu $t7, $t7, -0x26e0
/* 091EF8 800912F8 01CF3021 */  addu  $a2, $t6, $t7
/* 091EFC 800912FC 258DF1C8 */  addiu $t5, $t4, -0xe38
/* 091F00 80091300 A48D002E */  sh    $t5, 0x2e($a0)
/* 091F04 80091304 84C80000 */  lh    $t0, ($a2)
/* 091F08 80091308 24010E38 */  li    $at, 3640
/* 091F0C 8009130C 2519F1C8 */  addiu $t9, $t0, -0xe38
/* 091F10 80091310 3323FFFF */  andi  $v1, $t9, 0xffff
/* 091F14 80091314 0061001A */  div   $zero, $v1, $at
/* 091F18 80091318 0000C012 */  mflo  $t8
/* 091F1C 8009131C A4D90000 */  sh    $t9, ($a2)
/* 091F20 80091320 00184C00 */  sll   $t1, $t8, 0x10
/* 091F24 80091324 00091C03 */  sra   $v1, $t1, 0x10
/* 091F28 80091328 848200B2 */  lh    $v0, 0xb2($a0)
.L8009132C:
/* 091F2C 8009132C 24010009 */  li    $at, 9
/* 091F30 80091330 14610003 */  bne   $v1, $at, .L80091340
/* 091F34 80091334 24010001 */   li    $at, 1
/* 091F38 80091338 50410007 */  beql  $v0, $at, .L80091358
/* 091F3C 8009133C 244BFFFF */   addiu $t3, $v0, -1
.L80091340:
/* 091F40 80091340 14600003 */  bnez  $v1, .L80091350
/* 091F44 80091344 24010002 */   li    $at, 2
/* 091F48 80091348 50410003 */  beql  $v0, $at, .L80091358
/* 091F4C 8009134C 244BFFFF */   addiu $t3, $v0, -1
.L80091350:
/* 091F50 80091350 14400039 */  bnez  $v0, .L80091438
/* 091F54 80091354 244BFFFF */   addiu $t3, $v0, -1
.L80091358:
/* 091F58 80091358 A48B00B2 */  sh    $t3, 0xb2($a0)
/* 091F5C 8009135C 848200B2 */  lh    $v0, 0xb2($a0)
/* 091F60 80091360 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 091F64 80091364 1C400003 */  bgtz  $v0, .L80091374
/* 091F68 80091368 00000000 */   nop   
/* 091F6C 8009136C A48000B2 */  sh    $zero, 0xb2($a0)
/* 091F70 80091370 848200B2 */  lh    $v0, 0xb2($a0)
.L80091374:
/* 091F74 80091374 14400030 */  bnez  $v0, .L80091438
/* 091F78 80091378 00000000 */   nop   
/* 091F7C 8009137C C4820070 */  lwc1  $f2, 0x70($a0)
/* 091F80 80091380 44813000 */  mtc1  $at, $f6
/* 091F84 80091384 C4840018 */  lwc1  $f4, 0x18($a0)
/* 091F88 80091388 00056080 */  sll   $t4, $a1, 2
/* 091F8C 8009138C 46061200 */  add.s $f8, $f2, $f6
/* 091F90 80091390 00EC6821 */  addu  $t5, $a3, $t4
/* 091F94 80091394 C5A00000 */  lwc1  $f0, ($t5)
/* 091F98 80091398 3C01800F */  lui   $at, %hi(D_800EF680)
/* 091F9C 8009139C 46082281 */  sub.s $f10, $f4, $f8
/* 091FA0 800913A0 4600503E */  c.le.s $f10, $f0
/* 091FA4 800913A4 00000000 */  nop   
/* 091FA8 800913A8 45000023 */  bc1f  .L80091438
/* 091FAC 800913AC 00000000 */   nop   
/* 091FB0 800913B0 46020400 */  add.s $f16, $f0, $f2
/* 091FB4 800913B4 D426F680 */  ldc1  $f6, %lo(D_800EF680)($at)
/* 091FB8 800913B8 848E0044 */  lh    $t6, 0x44($a0)
/* 091FBC 800913BC 94880254 */  lhu   $t0, 0x254($a0)
/* 091FC0 800913C0 460084A1 */  cvt.d.s $f18, $f16
/* 091FC4 800913C4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 091FC8 800913C8 46269100 */  add.d $f4, $f18, $f6
/* 091FCC 800913CC 44815000 */  mtc1  $at, $f10
/* 091FD0 800913D0 3C01800E */  lui   $at, %hi(gKartGravityTable)
/* 091FD4 800913D4 31CFF7FF */  andi  $t7, $t6, 0xf7ff
/* 091FD8 800913D8 46202220 */  cvt.s.d $f8, $f4
/* 091FDC 800913DC 0008C880 */  sll   $t9, $t0, 2
/* 091FE0 800913E0 A4800DCC */  sh    $zero, 0xdcc($a0)
/* 091FE4 800913E4 A48000A8 */  sh    $zero, 0xa8($a0)
/* 091FE8 800913E8 E4880018 */  swc1  $f8, 0x18($a0)
/* 091FEC 800913EC AC80007C */  sw    $zero, 0x7c($a0)
/* 091FF0 800913F0 A48000C0 */  sh    $zero, 0xc0($a0)
/* 091FF4 800913F4 A48F0044 */  sh    $t7, 0x44($a0)
/* 091FF8 800913F8 00390821 */  addu  $at, $at, $t9
/* 091FFC 800913FC E48A0DC0 */  swc1  $f10, 0xdc0($a0)
/* 092000 80091400 C4302650 */  lwc1  $f16, %lo(gKartGravityTable)($at)
/* 092004 80091404 44806000 */  mtc1  $zero, $f12
/* 092008 80091408 94980000 */  lhu   $t8, ($a0)
/* 09200C 8009140C A48000D4 */  sh    $zero, 0xd4($a0)
/* 092010 80091410 E4900100 */  swc1  $f16, 0x100($a0)
/* 092014 80091414 37092000 */  ori   $t1, $t8, 0x2000
/* 092018 80091418 A4890000 */  sh    $t1, ($a0)
/* 09201C 8009141C E48C0094 */  swc1  $f12, 0x94($a0)
/* 092020 80091420 E48C008C */  swc1  $f12, 0x8c($a0)
/* 092024 80091424 14A00004 */  bnez  $a1, .L80091438
/* 092028 80091428 E48C009C */   swc1  $f12, 0x9c($a0)
/* 09202C 8009142C 240A0001 */  li    $t2, 1
/* 092030 80091430 3C018016 */  lui   $at, %hi(D_801658BC) # $at, 0x8016
/* 092034 80091434 A02A58BC */  sb    $t2, %lo(D_801658BC)($at)
.L80091438:
/* 092038 80091438 03E00008 */  jr    $ra
/* 09203C 8009143C 27BD0020 */   addiu $sp, $sp, 0x20
