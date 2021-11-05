glabel func_802A4160
/* 10D770 802A4160 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 10D774 802A4164 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 10D778 802A4168 8CC30000 */  lw    $v1, ($a2)
/* 10D77C 802A416C 3C18802C */  lui   $t8, %hi(D_802B8880) # $t8, 0x802c
/* 10D780 802A4170 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10D784 802A4174 246E0008 */  addiu $t6, $v1, 8
/* 10D788 802A4178 ACCE0000 */  sw    $t6, ($a2)
/* 10D78C 802A417C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10D790 802A4180 27188880 */  addiu $t8, %lo(D_802B8880) # addiu $t8, $t8, -0x7780
/* 10D794 802A4184 3C0F0380 */  lui   $t7, (0x03800010 >> 16) # lui $t7, 0x380
/* 10D798 802A4188 35EF0010 */  ori   $t7, (0x03800010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 10D79C 802A418C 0301C824 */  and   $t9, $t8, $at
/* 10D7A0 802A4190 AC790004 */  sw    $t9, 4($v1)
/* 10D7A4 802A4194 AC6F0000 */  sw    $t7, ($v1)
/* 10D7A8 802A4198 8CC30000 */  lw    $v1, ($a2)
/* 10D7AC 802A419C 3C09B600 */  lui   $t1, 0xb600
/* 10D7B0 802A41A0 240AFFFF */  li    $t2, -1
/* 10D7B4 802A41A4 24680008 */  addiu $t0, $v1, 8
/* 10D7B8 802A41A8 ACC80000 */  sw    $t0, ($a2)
/* 10D7BC 802A41AC AC6A0004 */  sw    $t2, 4($v1)
/* 10D7C0 802A41B0 AC690000 */  sw    $t1, ($v1)
/* 10D7C4 802A41B4 8CC30000 */  lw    $v1, ($a2)
/* 10D7C8 802A41B8 3C0CB700 */  lui   $t4, 0xb700
/* 10D7CC 802A41BC 240D2204 */  li    $t5, 8708
/* 10D7D0 802A41C0 246B0008 */  addiu $t3, $v1, 8
/* 10D7D4 802A41C4 ACCB0000 */  sw    $t3, ($a2)
/* 10D7D8 802A41C8 AC6D0004 */  sw    $t5, 4($v1)
/* 10D7DC 802A41CC 03E00008 */  jr    $ra
/* 10D7E0 802A41D0 AC6C0000 */   sw    $t4, ($v1)
