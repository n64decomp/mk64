glabel func_8004B6C4
/* 04C2C4 8004B6C4 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04C2C8 8004B6C8 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04C2CC 8004B6CC 8D030000 */  lw    $v1, ($t0)
/* 04C2D0 8004B6D0 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 04C2D4 8004B6D4 3C18FFFD */  lui   $t8, (0xFFFDF2F9 >> 16) # lui $t8, 0xfffd
/* 04C2D8 8004B6D8 246E0008 */  addiu $t6, $v1, 8
/* 04C2DC 8004B6DC AD0E0000 */  sw    $t6, ($t0)
/* 04C2E0 8004B6E0 3718F2F9 */  ori   $t8, (0xFFFDF2F9 & 0xFFFF) # ori $t8, $t8, 0xf2f9
/* 04C2E4 8004B6E4 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 04C2E8 8004B6E8 AC6F0000 */  sw    $t7, ($v1)
/* 04C2EC 8004B6EC AC780004 */  sw    $t8, 4($v1)
/* 04C2F0 8004B6F0 8D030000 */  lw    $v1, ($t0)
/* 04C2F4 8004B6F4 30AC00FF */  andi  $t4, $a1, 0xff
/* 04C2F8 8004B6F8 000C6C00 */  sll   $t5, $t4, 0x10
/* 04C2FC 8004B6FC 24790008 */  addiu $t9, $v1, 8
/* 04C300 8004B700 AD190000 */  sw    $t9, ($t0)
/* 04C304 8004B704 30CF00FF */  andi  $t7, $a2, 0xff
/* 04C308 8004B708 00045E00 */  sll   $t3, $a0, 0x18
/* 04C30C 8004B70C 016D7025 */  or    $t6, $t3, $t5
/* 04C310 8004B710 000FC200 */  sll   $t8, $t7, 8
/* 04C314 8004B714 3C09FA00 */  lui   $t1, 0xfa00
/* 04C318 8004B718 01D8C825 */  or    $t9, $t6, $t8
/* 04C31C 8004B71C AC690000 */  sw    $t1, ($v1)
/* 04C320 8004B720 372900FF */  ori   $t1, $t9, 0xff
/* 04C324 8004B724 03E00008 */  jr    $ra
/* 04C328 8004B728 AC690004 */   sw    $t1, 4($v1)
