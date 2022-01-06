glabel func_8004214C
/* 042D4C 8004214C 44856000 */  mtc1  $a1, $f12
/* 042D50 80042150 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 042D54 80042154 AFBF0014 */  sw    $ra, 0x14($sp)
/* 042D58 80042158 AFA40060 */  sw    $a0, 0x60($sp)
/* 042D5C 8004215C 44066000 */  mfc1  $a2, $f12
/* 042D60 80042160 97A50062 */  lhu   $a1, 0x62($sp)
/* 042D64 80042164 0C0106EF */  jal   func_80041BBC
/* 042D68 80042168 27A40020 */   addiu $a0, $sp, 0x20
/* 042D6C 8004216C 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042D70 80042170 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042D74 80042174 8CCF0000 */  lw    $t7, ($a2)
/* 042D78 80042178 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 042D7C 8004217C 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 042D80 80042180 000FC180 */  sll   $t8, $t7, 6
/* 042D84 80042184 27A50020 */  addiu $a1, $sp, 0x20
/* 042D88 80042188 01D82021 */  addu  $a0, $t6, $t8
/* 042D8C 8004218C 0C008860 */  jal   func_80022180
/* 042D90 80042190 248402C0 */   addiu $a0, $a0, 0x2c0
/* 042D94 80042194 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 042D98 80042198 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 042D9C 8004219C 8C830000 */  lw    $v1, ($a0)
/* 042DA0 800421A0 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 042DA4 800421A4 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 042DA8 800421A8 24790008 */  addiu $t9, $v1, 8
/* 042DAC 800421AC AC990000 */  sw    $t9, ($a0)
/* 042DB0 800421B0 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 042DB4 800421B4 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 042DB8 800421B8 AC680000 */  sw    $t0, ($v1)
/* 042DBC 800421BC 8CCA0000 */  lw    $t2, ($a2)
/* 042DC0 800421C0 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 042DC4 800421C4 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 042DC8 800421C8 000A5980 */  sll   $t3, $t2, 6
/* 042DCC 800421CC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 042DD0 800421D0 012B6021 */  addu  $t4, $t1, $t3
/* 042DD4 800421D4 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 042DD8 800421D8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 042DDC 800421DC 01A17824 */  and   $t7, $t5, $at
/* 042DE0 800421E0 AC6F0004 */  sw    $t7, 4($v1)
/* 042DE4 800421E4 8CCE0000 */  lw    $t6, ($a2)
/* 042DE8 800421E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 042DEC 800421EC 27BD0060 */  addiu $sp, $sp, 0x60
/* 042DF0 800421F0 25D80001 */  addiu $t8, $t6, 1
/* 042DF4 800421F4 03E00008 */  jr    $ra
/* 042DF8 800421F8 ACD80000 */   sw    $t8, ($a2)
