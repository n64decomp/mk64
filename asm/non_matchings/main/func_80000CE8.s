glabel func_80000CE8
/* 0018E8 80000CE8 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 0018EC 80000CEC 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 0018F0 80000CF0 8CA20000 */  lw    $v0, ($a1)
/* 0018F4 80000CF4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0018F8 80000CF8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0018FC 80000CFC 244E0008 */  addiu $t6, $v0, 8
/* 001900 80000D00 ACAE0000 */  sw    $t6, ($a1)
/* 001904 80000D04 3C0FE900 */  lui   $t7, 0xe900
/* 001908 80000D08 AC4F0000 */  sw    $t7, ($v0)
/* 00190C 80000D0C AC400004 */  sw    $zero, 4($v0)
/* 001910 80000D10 8CA20000 */  lw    $v0, ($a1)
/* 001914 80000D14 3C19B800 */  lui   $t9, 0xb800
/* 001918 80000D18 24580008 */  addiu $t8, $v0, 8
/* 00191C 80000D1C ACB80000 */  sw    $t8, ($a1)
/* 001920 80000D20 AC400004 */  sw    $zero, 4($v0)
/* 001924 80000D24 0C0001BA */  jal   func_800006E8
/* 001928 80000D28 AC590000 */   sw    $t9, ($v0)
/* 00192C 80000D2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001930 80000D30 27BD0018 */  addiu $sp, $sp, 0x18
/* 001934 80000D34 03E00008 */  jr    $ra
/* 001938 80000D38 00000000 */   nop   
