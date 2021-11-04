glabel func_80043050
/* 043C50 80043050 44866000 */  mtc1  $a2, $f12
/* 043C54 80043054 27BDFF98 */  addiu $sp, $sp, -0x68
/* 043C58 80043058 AFBF001C */  sw    $ra, 0x1c($sp)
/* 043C5C 8004305C AFA40068 */  sw    $a0, 0x68($sp)
/* 043C60 80043060 00803025 */  move  $a2, $a0
/* 043C64 80043064 27A40028 */  addiu $a0, $sp, 0x28
/* 043C68 80043068 00003825 */  move  $a3, $zero
/* 043C6C 8004306C 0C010A88 */  jal   func_80042A20
/* 043C70 80043070 E7AC0010 */   swc1  $f12, 0x10($sp)
/* 043C74 80043074 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043C78 80043078 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043C7C 8004307C 8CCF0000 */  lw    $t7, ($a2)
/* 043C80 80043080 3C0E8015 */  lui   $t6, %hi(gGfxPool) # $t6, 0x8015
/* 043C84 80043084 8DCEEF40 */  lw    $t6, %lo(gGfxPool)($t6)
/* 043C88 80043088 000FC180 */  sll   $t8, $t7, 6
/* 043C8C 8004308C 27A50028 */  addiu $a1, $sp, 0x28
/* 043C90 80043090 01D82021 */  addu  $a0, $t6, $t8
/* 043C94 80043094 0C008860 */  jal   func_80022180
/* 043C98 80043098 248402C0 */   addiu $a0, $a0, 0x2c0
/* 043C9C 8004309C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 043CA0 800430A0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 043CA4 800430A4 8C830000 */  lw    $v1, ($a0)
/* 043CA8 800430A8 3C080102 */  lui   $t0, (0x01020040 >> 16) # lui $t0, 0x102
/* 043CAC 800430AC 3C068019 */  lui   $a2, %hi(D_8018D120) # $a2, 0x8019
/* 043CB0 800430B0 24790008 */  addiu $t9, $v1, 8
/* 043CB4 800430B4 AC990000 */  sw    $t9, ($a0)
/* 043CB8 800430B8 35080040 */  ori   $t0, (0x01020040 & 0xFFFF) # ori $t0, $t0, 0x40
/* 043CBC 800430BC 24C6D120 */  addiu $a2, %lo(D_8018D120) # addiu $a2, $a2, -0x2ee0
/* 043CC0 800430C0 AC680000 */  sw    $t0, ($v1)
/* 043CC4 800430C4 8CCA0000 */  lw    $t2, ($a2)
/* 043CC8 800430C8 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 043CCC 800430CC 8D29EF40 */  lw    $t1, %lo(gGfxPool)($t1)
/* 043CD0 800430D0 000A5980 */  sll   $t3, $t2, 6
/* 043CD4 800430D4 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 043CD8 800430D8 012B6021 */  addu  $t4, $t1, $t3
/* 043CDC 800430DC 258D02C0 */  addiu $t5, $t4, 0x2c0
/* 043CE0 800430E0 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 043CE4 800430E4 01A17824 */  and   $t7, $t5, $at
/* 043CE8 800430E8 AC6F0004 */  sw    $t7, 4($v1)
/* 043CEC 800430EC 8CCE0000 */  lw    $t6, ($a2)
/* 043CF0 800430F0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 043CF4 800430F4 27BD0068 */  addiu $sp, $sp, 0x68
/* 043CF8 800430F8 25D80001 */  addiu $t8, $t6, 1
/* 043CFC 800430FC 03E00008 */  jr    $ra
/* 043D00 80043100 ACD80000 */   sw    $t8, ($a2)
