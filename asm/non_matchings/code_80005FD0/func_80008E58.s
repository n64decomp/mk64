glabel func_80008E58
/* 009A58 80008E58 000478C0 */  sll   $t7, $a0, 3
/* 009A5C 80008E5C 01E47823 */  subu  $t7, $t7, $a0
/* 009A60 80008E60 000F7900 */  sll   $t7, $t7, 4
/* 009A64 80008E64 01E47823 */  subu  $t7, $t7, $a0
/* 009A68 80008E68 000F7880 */  sll   $t7, $t7, 2
/* 009A6C 80008E6C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 009A70 80008E70 01E47823 */  subu  $t7, $t7, $a0
/* 009A74 80008E74 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 009A78 80008E78 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 009A7C 80008E7C 000F78C0 */  sll   $t7, $t7, 3
/* 009A80 80008E80 01F81021 */  addu  $v0, $t7, $t8
/* 009A84 80008E84 C4440014 */  lwc1  $f4, 0x14($v0)
/* 009A88 80008E88 C4460018 */  lwc1  $f6, 0x18($v0)
/* 009A8C 80008E8C C448001C */  lwc1  $f8, 0x1c($v0)
/* 009A90 80008E90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 009A94 80008E94 AFA40040 */  sw    $a0, 0x40($sp)
/* 009A98 80008E98 AFA50044 */  sw    $a1, 0x44($sp)
/* 009A9C 80008E9C AFA50028 */  sw    $a1, 0x28($sp)
/* 009AA0 80008EA0 AFA50044 */  sw    $a1, 0x44($sp)
/* 009AA4 80008EA4 9444011A */  lhu   $a0, 0x11a($v0)
/* 009AA8 80008EA8 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 009AAC 80008EAC E7A60038 */  swc1  $f6, 0x38($sp)
/* 009AB0 80008EB0 0C0AAF50 */  jal   func_802ABD40
/* 009AB4 80008EB4 E7A80034 */   swc1  $f8, 0x34($sp)
/* 009AB8 80008EB8 8FA50040 */  lw    $a1, 0x40($sp)
/* 009ABC 80008EBC 3C018016 */  lui   $at, %hi(D_80163318) # 0x8016
/* 009AC0 80008EC0 27A80044 */  addiu $t0, $sp, 0x44
/* 009AC4 80008EC4 0005C840 */  sll   $t9, $a1, 1
/* 009AC8 80008EC8 00390821 */  addu  $at, $at, $t9
/* 009ACC 80008ECC A4223318 */  sh    $v0, %lo(D_80163318)($at) # 0x3318($at)
/* 009AD0 80008ED0 AFB90024 */  sw    $t9, 0x24($sp)
/* 009AD4 80008ED4 AFA80010 */  sw    $t0, 0x10($sp)
/* 009AD8 80008ED8 C7AC003C */  lwc1  $f12, 0x3c($sp)
/* 009ADC 80008EDC C7AE0038 */  lwc1  $f14, 0x38($sp)
/* 009AE0 80008EE0 8FA60034 */  lw    $a2, 0x34($sp)
/* 009AE4 80008EE4 0C00302F */  jal   func_8000C0BC
/* 009AE8 80008EE8 3047FFFF */   andi  $a3, $v0, 0xffff
/* 009AEC 80008EEC 3C038016 */  lui   $v1, %hi(D_80162FCE) # $v1, 0x8016
/* 009AF0 80008EF0 24632FCE */  addiu $v1, %lo(D_80162FCE) # addiu $v1, $v1, 0x2fce
/* 009AF4 80008EF4 8FA50024 */  lw    $a1, 0x24($sp)
/* 009AF8 80008EF8 A4620000 */  sh    $v0, ($v1)
/* 009AFC 80008EFC 84690000 */  lh    $t1, ($v1)
/* 009B00 80008F00 3C018016 */  lui   $at, %hi(D_80164438) # 0x8016
/* 009B04 80008F04 00250821 */  addu  $at, $at, $a1
/* 009B08 80008F08 8FA40044 */  lw    $a0, 0x44($sp)
/* 009B0C 80008F0C A4294438 */  sh    $t1, %lo(D_80164438)($at) # 0x4438($at)
/* 009B10 80008F10 3C018016 */  lui   $at, %hi(D_801645B0) # 0x8016
/* 009B14 80008F14 00250821 */  addu  $at, $at, $a1
/* 009B18 80008F18 A42445B0 */  sh    $a0, %lo(D_801645B0)($at) # 0x45b0($at)
/* 009B1C 80008F1C 0C002370 */  jal   func_80008DC0
/* 009B20 80008F20 AFA40044 */   sw    $a0, 0x44($sp)
/* 009B24 80008F24 8FBF001C */  lw    $ra, 0x1c($sp)
/* 009B28 80008F28 8FA20044 */  lw    $v0, 0x44($sp)
/* 009B2C 80008F2C 27BD0040 */  addiu $sp, $sp, 0x40
/* 009B30 80008F30 03E00008 */  jr    $ra
/* 009B34 80008F34 00000000 */   nop   
