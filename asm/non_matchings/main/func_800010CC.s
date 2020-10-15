glabel func_800010CC
/* 001CCC 800010CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001CD0 800010D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001CD4 800010D4 3C048028 */  lui   $a0, (0x8028DF00 >> 16) # lui $a0, 0x8028
/* 001CD8 800010D8 3C050002 */  lui   $a1, (0x0002C470 >> 16) # lui $a1, 2
/* 001CDC 800010DC 34A5C470 */  ori   $a1, (0x0002C470 & 0xFFFF) # ori $a1, $a1, 0xc470
/* 001CE0 800010E0 0C033698 */  jal   bzero
/* 001CE4 800010E4 3484DF00 */   ori   $a0, (0x8028DF00 & 0xFFFF) # ori $a0, $a0, 0xdf00
/* 001CE8 800010E8 0C033624 */  jal   osWritebackDCacheAll
/* 001CEC 800010EC 00000000 */   nop   
/* 001CF0 800010F0 3C05000F */  lui   $a1, %hi(_code_8028DF00SegmentRomStart) # $a1, 0xf
/* 001CF4 800010F4 3C0E0012 */  lui   $t6, %hi(_code_8028DF00SegmentRomEnd) # $t6, 0x12
/* 001CF8 800010F8 24A57510 */  addiu $a1, %lo(_code_8028DF00SegmentRomStart) # addiu $a1, $a1, 0x7510
/* 001CFC 800010FC 25CE3640 */  addiu $t6, %lo(_code_8028DF00SegmentRomEnd) # addiu $t6, $t6, 0x3640
/* 001D00 80001100 01C53023 */  subu  $a2, $t6, $a1
/* 001D04 80001104 24C6000F */  addiu $a2, $a2, 0xf
/* 001D08 80001108 2401FFF0 */  li    $at, -16
/* 001D0C 8000110C 00C17824 */  and   $t7, $a2, $at
/* 001D10 80001110 3C048028 */  lui   $a0, (0x8028DF00 >> 16) # lui $a0, 0x8028
/* 001D14 80001114 3484DF00 */  ori   $a0, (0x8028DF00 & 0xFFFF) # ori $a0, $a0, 0xdf00
/* 001D18 80001118 0C000456 */  jal   dma_copy
/* 001D1C 8000111C 01E03025 */   move  $a2, $t7
/* 001D20 80001120 3C048028 */  lui   $a0, (0x8028DF00 >> 16) # lui $a0, 0x8028
/* 001D24 80001124 3C050002 */  lui   $a1, (0x0002C470 >> 16) # lui $a1, 2
/* 001D28 80001128 34A5C470 */  ori   $a1, (0x0002C470 & 0xFFFF) # ori $a1, $a1, 0xc470
/* 001D2C 8000112C 0C0336C0 */  jal   osInvalCache
/* 001D30 80001130 3484DF00 */   ori   $a0, (0x8028DF00 & 0xFFFF) # ori $a0, $a0, 0xdf00
/* 001D34 80001134 3C048028 */  lui   $a0, (0x8028DF00 >> 16) # lui $a0, 0x8028
/* 001D38 80001138 3C050002 */  lui   $a1, (0x0002C470 >> 16) # lui $a1, 2
/* 001D3C 8000113C 34A5C470 */  ori   $a1, (0x0002C470 & 0xFFFF) # ori $a1, $a1, 0xc470
/* 001D40 80001140 0C0336E0 */  jal   osInvalDCache
/* 001D44 80001144 3484DF00 */   ori   $a0, (0x8028DF00 & 0xFFFF) # ori $a0, $a0, 0xdf00
/* 001D48 80001148 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001D4C 8000114C 27BD0018 */  addiu $sp, $sp, 0x18
/* 001D50 80001150 03E00008 */  jr    $ra
/* 001D54 80001154 00000000 */   nop   
