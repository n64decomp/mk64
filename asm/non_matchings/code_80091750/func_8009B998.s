glabel func_8009B998
/* 09C598 8009B998 3C048019 */  lui   $a0, %hi(D_8018E75C) # $a0, 0x8019
/* 09C59C 8009B99C 2484E75C */  addiu $a0, %lo(D_8018E75C) # addiu $a0, $a0, -0x18a4
/* 09C5A0 8009B9A0 8C830000 */  lw    $v1, ($a0)
/* 09C5A4 8009B9A4 3C058019 */  lui   $a1, %hi(D_8018E760) # $a1, 0x8019
/* 09C5A8 8009B9A8 3C0FB800 */  lui   $t7, 0xb800
/* 09C5AC 8009B9AC 246E0008 */  addiu $t6, $v1, 8
/* 09C5B0 8009B9B0 AC8E0000 */  sw    $t6, ($a0)
/* 09C5B4 8009B9B4 24A5E760 */  addiu $a1, %lo(D_8018E760) # addiu $a1, $a1, -0x18a0
/* 09C5B8 8009B9B8 AC600004 */  sw    $zero, 4($v1)
/* 09C5BC 8009B9BC AC6F0000 */  sw    $t7, ($v1)
/* 09C5C0 8009B9C0 8CB80000 */  lw    $t8, ($a1)
/* 09C5C4 8009B9C4 27190001 */  addiu $t9, $t8, 1
/* 09C5C8 8009B9C8 03E00008 */  jr    $ra
/* 09C5CC 8009B9CC ACB90000 */   sw    $t9, ($a1)
