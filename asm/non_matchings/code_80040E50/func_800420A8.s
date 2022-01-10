glabel func_800420A8
/* 042CA8 800420A8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042CAC 800420AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 042CB0 800420B0 44056000 */  mfc1  $a1, $f12
/* 042CB4 800420B4 0C0106DA */  jal   func_80041B68
/* 042CB8 800420B8 27A40020 */   addiu $a0, $sp, 0x20
/* 042CBC 800420BC 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042CC0 800420C0 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042CC4 800420C4 8CCF0000 */  lw    $t7, ($a2)
/* 042CC8 800420C8 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042CCC 800420CC 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042CD0 800420D0 000FC180 */  sll   $t8, $t7, 6
/* 042CD4 800420D4 27A50020 */  addiu $a1, $sp, 0x20
/* 042CD8 800420D8 01D82021 */  addu  $a0, $t6, $t8
/* 042CDC 800420DC 0C008860 */  jal   func_80022180
/* 042CE0 800420E0 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042CE4 800420E4 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042CE8 800420E8 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042CEC 800420EC 8C830000 */  lw    $v1, ($a0)
/* 042CF0 800420F0 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042CF4 800420F4 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042CF8 800420F8 24790008 */  addiu $t9, $v1, 8
/* 042CFC 800420FC AC990000 */  sw    $t9, ($a0)
/* 042D00 80042100 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042D04 80042104 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042D08 80042108 AC680000 */  sw    $t0, ($v1)
/* 042D0C 8004210C 8CCA0000 */  lw    $t2, ($a2)
/* 042D10 80042110 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042D14 80042114 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042D18 80042118 000A5980 */  sll   $t3, $t2, 6
/* 042D1C 8004211C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042D20 80042120 012B6021 */  addu  $t4, $t1, $t3
/* 042D24 80042124 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042D28 80042128 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042D2C 8004212C 01A17824 */  and   $t7, $t5, $at
/* 042D30 80042130 AC6F0004 */  sw    $t7, 4($v1)
/* 042D34 80042134 8CCE0000 */  lw    $t6, ($a2)
/* 042D38 80042138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042D3C 8004213C 27BD0060 */  addiu $sp, $sp, 0x60
/* 042D40 80042140 25D80001 */  addiu $t8, $t6, 1
/* 042D44 80042144 03E00008 */  jr    $ra
/* 042D48 80042148 ACD80000 */   sw    $t8, ($a2)
