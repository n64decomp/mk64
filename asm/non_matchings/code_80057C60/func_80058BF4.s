glabel func_80058BF4
/* 0597F4 80058BF4 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0597F8 80058BF8 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0597FC 80058BFC 8C830000 */  lw    $v1, ($a0)
/* 059800 80058C00 3C180D00 */  lui   $t8, %hi(D_0D0076F8) # $t8, 0xd00
/* 059804 80058C04 271876F8 */  addiu $t8, %lo(D_0D0076F8) # addiu $t8, $t8, 0x76f8
/* 059808 80058C08 246E0008 */  addiu $t6, $v1, 8
/* 05980C 80058C0C AC8E0000 */  sw    $t6, ($a0)
/* 059810 80058C10 3C0F0600 */  lui   $t7, 0x600
/* 059814 80058C14 AC6F0000 */  sw    $t7, ($v1)
/* 059818 80058C18 03E00008 */  jr    $ra
/* 05981C 80058C1C AC780004 */   sw    $t8, 4($v1)
