glabel func_80000E00
/* 001A00 80000E00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001A04 80000E04 3C028015 */  lui   $v0, %hi(gGfxPool) # $v0, 0x8015
/* 001A08 80000E08 3C0E8010 */  lui   $t6, %hi(D_800FD860) # 0x8010
/* 001A0C 80000E0C 2442EF40 */  addiu $v0, %lo(gGfxPool) # addiu $v0, $v0, -0x10c0
/* 001A10 80000E10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001A14 80000E14 25C5D860 */  addiu $a1, $t6, %lo(D_800FD860) # -0x27a0
/* 001A18 80000E18 AC450000 */  sw    $a1, ($v0)
/* 001A1C 80000E1C 0C0A9EE5 */  jal   set_segment_base_addr
/* 001A20 80000E20 24040001 */   li    $a0, 1
/* 001A24 80000E24 3C028015 */  lui   $v0, %hi(gGfxPool) # $v0, 0x8015
/* 001A28 80000E28 8C42EF40 */  lw    $v0, %lo(gGfxPool)($v0)
/* 001A2C 80000E2C 3C010002 */  lui   $at, (0x00028B20 >> 16) # lui $at, 2
/* 001A30 80000E30 34218B20 */  ori   $at, (0x00028B20 & 0xFFFF) # ori $at, $at, 0x8b20
/* 001A34 80000E34 00417821 */  addu  $t7, $v0, $at
/* 001A38 80000E38 3C018015 */  lui   $at, %hi(D_8015029C) # $at, 0x8015
/* 001A3C 80000E3C AC2F029C */  sw    $t7, %lo(D_8015029C)($at)
/* 001A40 80000E40 3C010001 */  lui   $at, (0x0001A0C0 >> 16) # lui $at, 1
/* 001A44 80000E44 3421A0C0 */  ori   $at, (0x0001A0C0 & 0xFFFF) # ori $at, $at, 0xa0c0
/* 001A48 80000E48 0041C021 */  addu  $t8, $v0, $at
/* 001A4C 80000E4C 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 001A50 80000E50 0C00032A */  jal   func_80000CA8
/* 001A54 80000E54 AC380298 */   sw    $t8, %lo(gDisplayListHead)($at)
/* 001A58 80000E58 0C00034F */  jal   func_80000D3C
/* 001A5C 80000E5C 00002025 */   move  $a0, $zero
/* 001A60 80000E60 0C00033A */  jal   func_80000CE8
/* 001A64 80000E64 00000000 */   nop   
/* 001A68 80000E68 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 001A6C 80000E6C 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 001A70 80000E70 3C010002 */  lui   $at, (0x00028B20 >> 16) # lui $at, 2
/* 001A74 80000E74 34218B20 */  ori   $at, (0x00028B20 & 0xFFFF) # ori $at, $at, 0x8b20
/* 001A78 80000E78 0C000310 */  jal   func_80000C40
/* 001A7C 80000E7C 00812021 */   addu  $a0, $a0, $at
/* 001A80 80000E80 3C02800E */  lui   $v0, %hi(D_800DC560) # $v0, 0x800e
/* 001A84 80000E84 3C03800E */  lui   $v1, %hi(D_800DC54C) # $v1, 0x800e
/* 001A88 80000E88 2463C54C */  addiu $v1, %lo(D_800DC54C) # addiu $v1, $v1, -0x3ab4
/* 001A8C 80000E8C 2442C560 */  addiu $v0, %lo(D_800DC560) # addiu $v0, $v0, -0x3aa0
/* 001A90 80000E90 94590000 */  lhu   $t9, ($v0)
/* 001A94 80000E94 8C690000 */  lw    $t1, ($v1)
/* 001A98 80000E98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001A9C 80000E9C 27280001 */  addiu $t0, $t9, 1
/* 001AA0 80000EA0 252A0001 */  addiu $t2, $t1, 1
/* 001AA4 80000EA4 A4480000 */  sh    $t0, ($v0)
/* 001AA8 80000EA8 AC6A0000 */  sw    $t2, ($v1)
/* 001AAC 80000EAC 03E00008 */  jr    $ra
/* 001AB0 80000EB0 27BD0018 */   addiu $sp, $sp, 0x18
