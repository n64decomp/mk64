glabel func_80000EB4
/* 001AB4 80000EB4 3C0E800E */  lui   $t6, %hi(D_800DC54C) # $t6, 0x800e
/* 001AB8 80000EB8 8DCEC54C */  lw    $t6, %lo(D_800DC54C)($t6)
/* 001ABC 80000EBC 3C010002 */  lui   $at, (0x00028B70 >> 16) # lui $at, 2
/* 001AC0 80000EC0 34218B70 */  ori   $at, (0x00028B70 & 0xFFFF) # ori $at, $at, 0x8b70
/* 001AC4 80000EC4 31CF0001 */  andi  $t7, $t6, 1
/* 001AC8 80000EC8 01E10019 */  multu $t7, $at
/* 001ACC 80000ECC 3C198010 */  lui   $t9, %hi(gGfxPools) # $t9, 0x8010
/* 001AD0 80000ED0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001AD4 80000ED4 3C028015 */  lui   $v0, %hi(gGfxPool) # $v0, 0x8015
/* 001AD8 80000ED8 2739D860 */  addiu $t9, %lo(gGfxPools) # addiu $t9, $t9, -0x27a0
/* 001ADC 80000EDC 2442EF40 */  addiu $v0, %lo(gGfxPool) # addiu $v0, $v0, -0x10c0
/* 001AE0 80000EE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001AE4 80000EE4 24040001 */  li    $a0, 1
/* 001AE8 80000EE8 0000C012 */  mflo  $t8
/* 001AEC 80000EEC 03192821 */  addu  $a1, $t8, $t9
/* 001AF0 80000EF0 0C0A9EE5 */  jal   set_segment_base_addr
/* 001AF4 80000EF4 AC450000 */   sw    $a1, ($v0)
/* 001AF8 80000EF8 3C028015 */  lui   $v0, %hi(gGfxPool) # $v0, 0x8015
/* 001AFC 80000EFC 8C42EF40 */  lw    $v0, %lo(gGfxPool)($v0)
/* 001B00 80000F00 3C010001 */  lui   $at, (0x0001A0C0 >> 16) # lui $at, 1
/* 001B04 80000F04 3421A0C0 */  ori   $at, (0x0001A0C0 & 0xFFFF) # ori $at, $at, 0xa0c0
/* 001B08 80000F08 00414821 */  addu  $t1, $v0, $at
/* 001B0C 80000F0C 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 001B10 80000F10 AC290298 */  sw    $t1, %lo(gDisplayListHead)($at)
/* 001B14 80000F14 3C010002 */  lui   $at, (0x00028B20 >> 16) # lui $at, 2
/* 001B18 80000F18 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001B1C 80000F1C 34218B20 */  ori   $at, (0x00028B20 & 0xFFFF) # ori $at, $at, 0x8b20
/* 001B20 80000F20 00415021 */  addu  $t2, $v0, $at
/* 001B24 80000F24 3C018015 */  lui   $at, %hi(gGfxSPTask) # $at, 0x8015
/* 001B28 80000F28 AC2A029C */  sw    $t2, %lo(gGfxSPTask)($at)
/* 001B2C 80000F2C 03E00008 */  jr    $ra
/* 001B30 80000F30 27BD0018 */   addiu $sp, $sp, 0x18
