glabel func_8006ED60
/* 06F960 8006ED60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06F964 8006ED64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06F968 8006ED68 3C048016 */  lui   $a0, %hi(D_80165C18) # $a0, 0x8016
/* 06F96C 8006ED6C 3C050001 */  lui   $a1, (0x0001E140 >> 16) # lui $a1, 1
/* 06F970 8006ED70 34A5E140 */  ori   $a1, (0x0001E140 & 0xFFFF) # ori $a1, $a1, 0xe140
/* 06F974 8006ED74 0C033698 */  jal   bzero
/* 06F978 8006ED78 24845C18 */   addiu $a0, %lo(D_80165C18) # addiu $a0, $a0, 0x5c18
/* 06F97C 8006ED7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06F980 8006ED80 240EFFFF */  li    $t6, -1
/* 06F984 8006ED84 3C018018 */  lui   $at, %hi(D_80183D5C) # $at, 0x8018
/* 06F988 8006ED88 AC2E3D5C */  sw    $t6, %lo(D_80183D5C)($at)
/* 06F98C 8006ED8C 03E00008 */  jr    $ra
/* 06F990 8006ED90 27BD0018 */   addiu $sp, $sp, 0x18
