glabel func_802911C4
/* 0FA7D4 802911C4 3C0E800E */  lui   $t6, %hi(D_800DC530) # $t6, 0x800e
/* 0FA7D8 802911C8 8DCEC530 */  lw    $t6, %lo(D_800DC530)($t6)
/* 0FA7DC 802911CC 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0FA7E0 802911D0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0FA7E4 802911D4 15C0000C */  bnez  $t6, .L80291208
/* 0FA7E8 802911D8 3C090600 */   lui   $t1, 0x600
/* 0FA7EC 802911DC 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0FA7F0 802911E0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0FA7F4 802911E4 8C830000 */  lw    $v1, ($a0)
/* 0FA7F8 802911E8 3C190700 */  lui   $t9, (0x070008E8 >> 16) # lui $t9, 0x700
/* 0FA7FC 802911EC 373908E8 */  ori   $t9, (0x070008E8 & 0xFFFF) # ori $t9, $t9, 0x8e8
/* 0FA800 802911F0 246F0008 */  addiu $t7, $v1, 8
/* 0FA804 802911F4 AC8F0000 */  sw    $t7, ($a0)
/* 0FA808 802911F8 3C180600 */  lui   $t8, 0x600
/* 0FA80C 802911FC AC780000 */  sw    $t8, ($v1)
/* 0FA810 80291200 03E00008 */  jr    $ra
/* 0FA814 80291204 AC790004 */   sw    $t9, 4($v1)
.L80291208:
/* 0FA818 80291208 8C830000 */  lw    $v1, ($a0)
/* 0FA81C 8029120C 3C0A0700 */  lui   $t2, (0x07002D68 >> 16) # lui $t2, 0x700
/* 0FA820 80291210 354A2D68 */  ori   $t2, (0x07002D68 & 0xFFFF) # ori $t2, $t2, 0x2d68
/* 0FA824 80291214 24680008 */  addiu $t0, $v1, 8
/* 0FA828 80291218 AC880000 */  sw    $t0, ($a0)
/* 0FA82C 8029121C AC6A0004 */  sw    $t2, 4($v1)
/* 0FA830 80291220 AC690000 */  sw    $t1, ($v1)
/* 0FA834 80291224 03E00008 */  jr    $ra
/* 0FA838 80291228 00000000 */   nop   
