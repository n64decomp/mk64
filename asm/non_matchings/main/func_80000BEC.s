glabel func_80000BEC
/* 0017EC 80000BEC 3C0E8030 */  lui   $t6, %hi(D_802F9F80) # $t6, 0x8030
/* 0017F0 80000BF0 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0017F4 80000BF4 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0017F8 80000BF8 25CE9F80 */  addiu $t6, %lo(D_802F9F80) # addiu $t6, $t6, -0x6080
/* 0017FC 80000BFC 01C17824 */  and   $t7, $t6, $at
/* 001800 80000C00 3C018015 */  lui   $at, %hi(D_801502B4) # 0x8015
/* 001804 80000C04 03E00008 */  jr    $ra
/* 001808 80000C08 AC2F02B4 */   sw    $t7, %lo(D_801502B4)($at) # 0x2b4($at)
