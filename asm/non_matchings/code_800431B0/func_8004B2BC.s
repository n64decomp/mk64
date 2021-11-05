glabel func_8004B2BC
/* 04BEBC 8004B2BC 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 04BEC0 8004B2C0 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 04BEC4 8004B2C4 8CC30000 */  lw    $v1, ($a2)
/* 04BEC8 8004B2C8 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* 04BECC 8004B2CC 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* 04BED0 8004B2D0 246E0008 */  addiu $t6, $v1, 8
/* 04BED4 8004B2D4 ACCE0000 */  sw    $t6, ($a2)
/* 04BED8 8004B2D8 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 04BEDC 8004B2DC 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* 04BEE0 8004B2E0 AC6F0000 */  sw    $t7, ($v1)
/* 04BEE4 8004B2E4 AC780004 */  sw    $t8, 4($v1)
/* 04BEE8 8004B2E8 8CC30000 */  lw    $v1, ($a2)
/* 04BEEC 8004B2EC 308900FF */  andi  $t1, $a0, 0xff
/* 04BEF0 8004B2F0 2401FF00 */  li    $at, -256
/* 04BEF4 8004B2F4 24790008 */  addiu $t9, $v1, 8
/* 04BEF8 8004B2F8 ACD90000 */  sw    $t9, ($a2)
/* 04BEFC 8004B2FC 01215025 */  or    $t2, $t1, $at
/* 04BF00 8004B300 3C08FA00 */  lui   $t0, 0xfa00
/* 04BF04 8004B304 AC680000 */  sw    $t0, ($v1)
/* 04BF08 8004B308 03E00008 */  jr    $ra
/* 04BF0C 8004B30C AC6A0004 */   sw    $t2, 4($v1)
