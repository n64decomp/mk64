glabel func_8008FDF4
/* 0909F4 8008FDF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0909F8 8008FDF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0909FC 8008FDFC AFA5001C */  sw    $a1, 0x1c($sp)
/* 090A00 8008FE00 00057600 */  sll   $t6, $a1, 0x18
/* 090A04 8008FE04 000E2E03 */  sra   $a1, $t6, 0x18
/* 090A08 8008FE08 0C0230D5 */  jal   func_8008C354
/* 090A0C 8008FE0C AFA40018 */   sw    $a0, 0x18($sp)
/* 090A10 8008FE10 8FA40018 */  lw    $a0, 0x18($sp)
/* 090A14 8008FE14 2401FFEF */  li    $at, -17
/* 090A18 8008FE18 44803000 */  mtc1  $zero, $f6
/* 090A1C 8008FE1C 8C9800BC */  lw    $t8, 0xbc($a0)
/* 090A20 8008FE20 94820254 */  lhu   $v0, 0x254($a0)
/* 090A24 8008FE24 8C89000C */  lw    $t1, 0xc($a0)
/* 090A28 8008FE28 0301C824 */  and   $t9, $t8, $at
/* 090A2C 8008FE2C 3C01800E */  lui   $at, %hi(D_800E37F0)
/* 090A30 8008FE30 00024080 */  sll   $t0, $v0, 2
/* 090A34 8008FE34 00280821 */  addu  $at, $at, $t0
/* 090A38 8008FE38 AC9900BC */  sw    $t9, 0xbc($a0)
/* 090A3C 8008FE3C C42437F0 */  lwc1  $f4, %lo(D_800E37F0)($at)
/* 090A40 8008FE40 3C01800E */  lui   $at, %hi(D_800E37D0)
/* 090A44 8008FE44 00280821 */  addu  $at, $at, $t0
/* 090A48 8008FE48 E48600F4 */  swc1  $f6, 0xf4($a0)
/* 090A4C 8008FE4C E48400F0 */  swc1  $f4, 0xf0($a0)
/* 090A50 8008FE50 C42837D0 */  lwc1  $f8, %lo(D_800E37D0)($at)
/* 090A54 8008FE54 3C01FFEF */  lui   $at, (0xFFEFFFFF >> 16) # lui $at, 0xffef
/* 090A58 8008FE58 3421FFFF */  ori   $at, (0xFFEFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 090A5C 8008FE5C 01215024 */  and   $t2, $t1, $at
/* 090A60 8008FE60 3C011000 */  lui   $at, 0x1000
/* 090A64 8008FE64 03216025 */  or    $t4, $t9, $at
/* 090A68 8008FE68 AC8A000C */  sw    $t2, 0xc($a0)
/* 090A6C 8008FE6C AC8C00BC */  sw    $t4, 0xbc($a0)
/* 090A70 8008FE70 E48800EC */  swc1  $f8, 0xec($a0)
/* 090A74 8008FE74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 090A78 8008FE78 27BD0018 */  addiu $sp, $sp, 0x18
/* 090A7C 8008FE7C 03E00008 */  jr    $ra
/* 090A80 8008FE80 00000000 */   nop   
