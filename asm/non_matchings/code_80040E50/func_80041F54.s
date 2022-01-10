glabel func_80041F54
/* 042B54 80041F54 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042B58 80041F58 00A03025 */  move  $a2, $a1
/* 042B5C 80041F5C 00802825 */  move  $a1, $a0
/* 042B60 80041F60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042B64 80041F64 AFA40060 */  sw    $a0, 0x60($sp)
/* 042B68 80041F68 0C01069E */  jal   func_80041A78
/* 042B6C 80041F6C 27A40020 */   addiu $a0, $sp, 0x20
/* 042B70 80041F70 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042B74 80041F74 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042B78 80041F78 8CCF0000 */  lw    $t7, ($a2)
/* 042B7C 80041F7C 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042B80 80041F80 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042B84 80041F84 000FC180 */  sll   $t8, $t7, 6
/* 042B88 80041F88 27A50020 */  addiu $a1, $sp, 0x20
/* 042B8C 80041F8C 01D82021 */  addu  $a0, $t6, $t8
/* 042B90 80041F90 0C008860 */  jal   func_80022180
/* 042B94 80041F94 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042B98 80041F98 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042B9C 80041F9C 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042BA0 80041FA0 8C830000 */  lw    $v1, ($a0)
/* 042BA4 80041FA4 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042BA8 80041FA8 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042BAC 80041FAC 24790008 */  addiu $t9, $v1, 8
/* 042BB0 80041FB0 AC990000 */  sw    $t9, ($a0)
/* 042BB4 80041FB4 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042BB8 80041FB8 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042BBC 80041FBC AC680000 */  sw    $t0, ($v1)
/* 042BC0 80041FC0 8CCA0000 */  lw    $t2, ($a2)
/* 042BC4 80041FC4 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042BC8 80041FC8 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042BCC 80041FCC 000A5980 */  sll   $t3, $t2, 6
/* 042BD0 80041FD0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042BD4 80041FD4 012B6021 */  addu  $t4, $t1, $t3
/* 042BD8 80041FD8 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042BDC 80041FDC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042BE0 80041FE0 01A17824 */  and   $t7, $t5, $at
/* 042BE4 80041FE4 AC6F0004 */  sw    $t7, 4($v1)
/* 042BE8 80041FE8 8CCE0000 */  lw    $t6, ($a2)
/* 042BEC 80041FEC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042BF0 80041FF0 27BD0060 */  addiu $sp, $sp, 0x60
/* 042BF4 80041FF4 25D80001 */  addiu $t8, $t6, 1
/* 042BF8 80041FF8 03E00008 */  jr    $ra
/* 042BFC 80041FFC ACD80000 */   sw    $t8, ($a2)
