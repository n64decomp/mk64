glabel play_sound2
/* 0C9A10 800C8E10 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C9A14 800C8E14 3C014900 */  lui   $at, (0x49008018 >> 16) # lui $at, 0x4900
/* 0C9A18 800C8E18 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C9A1C 800C8E1C 34218018 */  ori   $at, (0x49008018 & 0xFFFF) # ori $at, $at, 0x8018
/* 0C9A20 800C8E20 03A0F025 */  move  $fp, $sp
/* 0C9A24 800C8E24 14810008 */  bne   $a0, $at, .L800C8E48
/* 0C9A28 800C8E28 AFBF0034 */   sw    $ra, 0x34($sp)
/* 0C9A2C 800C8E2C 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 0C9A30 800C8E30 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 0C9A34 800C8E34 24010012 */  li    $at, 18
/* 0C9A38 800C8E38 55C10004 */  bnel  $t6, $at, .L800C8E4C
/* 0C9A3C 800C8E3C 3C014900 */   lui   $at, 0x4900
/* 0C9A40 800C8E40 3C044900 */  lui   $a0, (0x49008027 >> 16) # lui $a0, 0x4900
/* 0C9A44 800C8E44 34848027 */  ori   $a0, (0x49008027 & 0xFFFF) # ori $a0, $a0, 0x8027
.L800C8E48:
/* 0C9A48 800C8E48 3C014900 */  lui   $at, (0x49008019 >> 16) # lui $at, 0x4900
.L800C8E4C:
/* 0C9A4C 800C8E4C 34218019 */  ori   $at, (0x49008019 & 0xFFFF) # ori $at, $at, 0x8019
/* 0C9A50 800C8E50 14810008 */  bne   $a0, $at, .L800C8E74
/* 0C9A54 800C8E54 3C07800F */   lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C9A58 800C8E58 3C0F800E */  lui   $t7, %hi(gCurrentCourseId) # $t7, 0x800e
/* 0C9A5C 800C8E5C 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 0C9A60 800C8E60 24010012 */  li    $at, 18
/* 0C9A64 800C8E64 15E10003 */  bne   $t7, $at, .L800C8E74
/* 0C9A68 800C8E68 00000000 */   nop   
/* 0C9A6C 800C8E6C 3C044900 */  lui   $a0, (0x49008028 >> 16) # lui $a0, 0x4900
/* 0C9A70 800C8E70 34848028 */  ori   $a0, (0x49008028 & 0xFFFF) # ori $a0, $a0, 0x8028
.L800C8E74:
/* 0C9A74 800C8E74 3C18800F */  lui   $t8, %hi(D_800EA1DC) # $t8, 0x800f
/* 0C9A78 800C8E78 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C9A7C 800C8E7C 2718A1DC */  addiu $t8, %lo(D_800EA1DC) # addiu $t8, $t8, -0x5e24
/* 0C9A80 800C8E80 3C05800F */  lui   $a1, %hi(D_800EA1C8) # $a1, 0x800f
/* 0C9A84 800C8E84 24A5A1C8 */  addiu $a1, %lo(D_800EA1C8) # addiu $a1, $a1, -0x5e38
/* 0C9A88 800C8E88 AFB80014 */  sw    $t8, 0x14($sp)
/* 0C9A8C 800C8E8C AFA70010 */  sw    $a3, 0x10($sp)
/* 0C9A90 800C8E90 0C031052 */  jal   play_sound
/* 0C9A94 800C8E94 24060004 */   li    $a2, 4
/* 0C9A98 800C8E98 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0C9A9C 800C8E9C 03C0E825 */  move  $sp, $fp
/* 0C9AA0 800C8EA0 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C9AA4 800C8EA4 03E00008 */  jr    $ra
/* 0C9AA8 800C8EA8 27BD0038 */   addiu $sp, $sp, 0x38
