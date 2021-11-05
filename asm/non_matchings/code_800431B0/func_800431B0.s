glabel func_800431B0
/* 043DB0 800431B0 44866000 */  mtc1  $a2, $f12
/* 043DB4 800431B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 043DB8 800431B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 043DBC 800431BC 44066000 */  mfc1  $a2, $f12
/* 043DC0 800431C0 0C010B80 */  jal   func_80042E00
/* 043DC4 800431C4 AFA70024 */   sw    $a3, 0x24($sp)
/* 043DC8 800431C8 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 043DCC 800431CC 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 043DD0 800431D0 8CA20000 */  lw    $v0, ($a1)
/* 043DD4 800431D4 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 043DD8 800431D8 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 043DDC 800431DC 244E0008 */  addiu $t6, $v0, 8
/* 043DE0 800431E0 ACAE0000 */  sw    $t6, ($a1)
/* 043DE4 800431E4 AC4F0000 */  sw    $t7, ($v0)
/* 043DE8 800431E8 8FB80024 */  lw    $t8, 0x24($sp)
/* 043DEC 800431EC 3C090D00 */  lui   $t1, %hi(D_0D006940) # $t1, 0xd00
/* 043DF0 800431F0 25296940 */  addiu $t1, %lo(D_0D006940) # addiu $t1, $t1, 0x6940
/* 043DF4 800431F4 AC580004 */  sw    $t8, 4($v0)
/* 043DF8 800431F8 8CA20000 */  lw    $v0, ($a1)
/* 043DFC 800431FC 3C080600 */  lui   $t0, 0x600
/* 043E00 80043200 24590008 */  addiu $t9, $v0, 8
/* 043E04 80043204 ACB90000 */  sw    $t9, ($a1)
/* 043E08 80043208 AC490004 */  sw    $t1, 4($v0)
/* 043E0C 8004320C AC480000 */  sw    $t0, ($v0)
/* 043E10 80043210 8FBF0014 */  lw    $ra, 0x14($sp)
/* 043E14 80043214 27BD0018 */  addiu $sp, $sp, 0x18
/* 043E18 80043218 03E00008 */  jr    $ra
/* 043E1C 8004321C 00000000 */   nop   
