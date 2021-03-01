glabel func_80039DA4
/* 03A9A4 80039DA4 3C0F800E */  lui   $t7, %hi(D_800E4360) # $t7, 0x800e
/* 03A9A8 80039DA8 25EF4360 */  addiu $t7, %lo(D_800E4360) # addiu $t7, $t7, 0x4360
/* 03A9AC 80039DAC 8DE10000 */  lw    $at, ($t7)
/* 03A9B0 80039DB0 8DE80004 */  lw    $t0, 4($t7)
/* 03A9B4 80039DB4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 03A9B8 80039DB8 27AE002C */  addiu $t6, $sp, 0x2c
/* 03A9BC 80039DBC ADC10000 */  sw    $at, ($t6)
/* 03A9C0 80039DC0 ADC80004 */  sw    $t0, 4($t6)
/* 03A9C4 80039DC4 8DE8000C */  lw    $t0, 0xc($t7)
/* 03A9C8 80039DC8 8DE10008 */  lw    $at, 8($t7)
/* 03A9CC 80039DCC 3C09800E */  lui   $t1, %hi(D_800E4380) # $t1, 0x800e
/* 03A9D0 80039DD0 ADC8000C */  sw    $t0, 0xc($t6)
/* 03A9D4 80039DD4 ADC10008 */  sw    $at, 8($t6)
/* 03A9D8 80039DD8 8DE10010 */  lw    $at, 0x10($t7)
/* 03A9DC 80039DDC 8DE80014 */  lw    $t0, 0x14($t7)
/* 03A9E0 80039DE0 25294380 */  addiu $t1, %lo(D_800E4380) # addiu $t1, $t1, 0x4380
/* 03A9E4 80039DE4 ADC10010 */  sw    $at, 0x10($t6)
/* 03A9E8 80039DE8 ADC80014 */  sw    $t0, 0x14($t6)
/* 03A9EC 80039DEC 8DE8001C */  lw    $t0, 0x1c($t7)
/* 03A9F0 80039DF0 8DE10018 */  lw    $at, 0x18($t7)
/* 03A9F4 80039DF4 27A5000C */  addiu $a1, $sp, 0xc
/* 03A9F8 80039DF8 ADC8001C */  sw    $t0, 0x1c($t6)
/* 03A9FC 80039DFC ADC10018 */  sw    $at, 0x18($t6)
/* 03AA00 80039E00 8D210000 */  lw    $at, ($t1)
/* 03AA04 80039E04 3C0D8019 */  lui   $t5, %hi(gCourseSelection) # $t5, 0x8019
/* 03AA08 80039E08 3C198016 */  lui   $t9, %hi(D_8016556E) # $t9, 0x8016
/* 03AA0C 80039E0C ACA10000 */  sw    $at, ($a1)
/* 03AA10 80039E10 8D2C0004 */  lw    $t4, 4($t1)
/* 03AA14 80039E14 3C18800E */  lui   $t8, %hi(D_800DC51C) # $t8, 0x800e
/* 03AA18 80039E18 ACAC0004 */  sw    $t4, 4($a1)
/* 03AA1C 80039E1C 8D210008 */  lw    $at, 8($t1)
/* 03AA20 80039E20 ACA10008 */  sw    $at, 8($a1)
/* 03AA24 80039E24 8D2C000C */  lw    $t4, 0xc($t1)
/* 03AA28 80039E28 ACAC000C */  sw    $t4, 0xc($a1)
/* 03AA2C 80039E2C 8D210010 */  lw    $at, 0x10($t1)
/* 03AA30 80039E30 ACA10010 */  sw    $at, 0x10($a1)
/* 03AA34 80039E34 8D2C0014 */  lw    $t4, 0x14($t1)
/* 03AA38 80039E38 ACAC0014 */  sw    $t4, 0x14($a1)
/* 03AA3C 80039E3C 8D210018 */  lw    $at, 0x18($t1)
/* 03AA40 80039E40 ACA10018 */  sw    $at, 0x18($a1)
/* 03AA44 80039E44 8D2C001C */  lw    $t4, 0x1c($t1)
/* 03AA48 80039E48 ACAC001C */  sw    $t4, 0x1c($a1)
/* 03AA4C 80039E4C 81ADEE0B */  lb    $t5, %lo(gCourseSelection)($t5)
/* 03AA50 80039E50 15A00004 */  bnez  $t5, .L80039E64
/* 03AA54 80039E54 00000000 */   nop   
/* 03AA58 80039E58 8739556E */  lh    $t9, %lo(D_8016556E)($t9)
/* 03AA5C 80039E5C 1320000B */  beqz  $t9, .L80039E8C
/* 03AA60 80039E60 00000000 */   nop   
.L80039E64:
/* 03AA64 80039E64 9718C51C */  lhu   $t8, %lo(D_800DC51C)($t8)
/* 03AA68 80039E68 24010001 */  li    $at, 1
/* 03AA6C 80039E6C 3C0E8019 */  lui   $t6, %hi(D_8018EDEF) # $t6, 0x8019
/* 03AA70 80039E70 13010006 */  beq   $t8, $at, .L80039E8C
/* 03AA74 80039E74 00000000 */   nop   
/* 03AA78 80039E78 81CEEDEF */  lb    $t6, %lo(D_8018EDEF)($t6)
/* 03AA7C 80039E7C 24010040 */  li    $at, 64
/* 03AA80 80039E80 3C038016 */  lui   $v1, %hi(D_80165270) # $v1, 0x8016
/* 03AA84 80039E84 15C10012 */  bne   $t6, $at, .L80039ED0
/* 03AA88 80039E88 24635270 */   addiu $v1, %lo(D_80165270) # addiu $v1, $v1, 0x5270
.L80039E8C:
/* 03AA8C 80039E8C 3C038016 */  lui   $v1, %hi(D_80165270) # $v1, 0x8016
/* 03AA90 80039E90 24635270 */  addiu $v1, %lo(D_80165270) # addiu $v1, $v1, 0x5270
/* 03AA94 80039E94 27A4002C */  addiu $a0, $sp, 0x2c
/* 03AA98 80039E98 27A2004C */  addiu $v0, $sp, 0x4c
.L80039E9C:
/* 03AA9C 80039E9C 8C880004 */  lw    $t0, 4($a0)
/* 03AAA0 80039EA0 8C8B0008 */  lw    $t3, 8($a0)
/* 03AAA4 80039EA4 8C8A000C */  lw    $t2, 0xc($a0)
/* 03AAA8 80039EA8 8C8F0000 */  lw    $t7, ($a0)
/* 03AAAC 80039EAC 24840010 */  addiu $a0, $a0, 0x10
/* 03AAB0 80039EB0 24630008 */  addiu $v1, $v1, 8
/* 03AAB4 80039EB4 A468FFFA */  sh    $t0, -6($v1)
/* 03AAB8 80039EB8 A46BFFFC */  sh    $t3, -4($v1)
/* 03AABC 80039EBC A46AFFFE */  sh    $t2, -2($v1)
/* 03AAC0 80039EC0 1482FFF6 */  bne   $a0, $v0, .L80039E9C
/* 03AAC4 80039EC4 A46FFFF8 */   sh    $t7, -8($v1)
/* 03AAC8 80039EC8 1000001C */  b     .L80039F3C
/* 03AACC 80039ECC 00000000 */   nop   
.L80039ED0:
/* 03AAD0 80039ED0 3C048016 */  lui   $a0, %hi(D_801643B8) # $a0, 0x8016
/* 03AAD4 80039ED4 3C028016 */  lui   $v0, %hi(D_801643D8) # $v0, 0x8016
/* 03AAD8 80039ED8 244243D8 */  addiu $v0, %lo(D_801643D8) # addiu $v0, $v0, 0x43d8
/* 03AADC 80039EDC 248443B8 */  addiu $a0, %lo(D_801643B8) # addiu $a0, $a0, 0x43b8
.L80039EE0:
/* 03AAE0 80039EE0 8C890000 */  lw    $t1, ($a0)
/* 03AAE4 80039EE4 8C980004 */  lw    $t8, 4($a0)
/* 03AAE8 80039EE8 8C8B0008 */  lw    $t3, 8($a0)
/* 03AAEC 80039EEC 00096080 */  sll   $t4, $t1, 2
/* 03AAF0 80039EF0 00AC6821 */  addu  $t5, $a1, $t4
/* 03AAF4 80039EF4 8DB90000 */  lw    $t9, ($t5)
/* 03AAF8 80039EF8 8C8D000C */  lw    $t5, 0xc($a0)
/* 03AAFC 80039EFC 00187080 */  sll   $t6, $t8, 2
/* 03AB00 80039F00 A4790000 */  sh    $t9, ($v1)
/* 03AB04 80039F04 00AE7821 */  addu  $t7, $a1, $t6
/* 03AB08 80039F08 000B5080 */  sll   $t2, $t3, 2
/* 03AB0C 80039F0C 000DC880 */  sll   $t9, $t5, 2
/* 03AB10 80039F10 00B9C021 */  addu  $t8, $a1, $t9
/* 03AB14 80039F14 00AA4821 */  addu  $t1, $a1, $t2
/* 03AB18 80039F18 8D2C0000 */  lw    $t4, ($t1)
/* 03AB1C 80039F1C 8F0E0000 */  lw    $t6, ($t8)
/* 03AB20 80039F20 8DE80000 */  lw    $t0, ($t7)
/* 03AB24 80039F24 24840010 */  addiu $a0, $a0, 0x10
/* 03AB28 80039F28 24630008 */  addiu $v1, $v1, 8
/* 03AB2C 80039F2C A46CFFFC */  sh    $t4, -4($v1)
/* 03AB30 80039F30 A46EFFFE */  sh    $t6, -2($v1)
/* 03AB34 80039F34 1482FFEA */  bne   $a0, $v0, .L80039EE0
/* 03AB38 80039F38 A468FFFA */   sh    $t0, -6($v1)
.L80039F3C:
/* 03AB3C 80039F3C 03E00008 */  jr    $ra
/* 03AB40 80039F40 27BD0050 */   addiu $sp, $sp, 0x50
