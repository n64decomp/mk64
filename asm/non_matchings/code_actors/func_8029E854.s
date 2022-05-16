glabel func_8029E854
/* 107E64 8029E854 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 107E68 8029E858 AFBF0014 */  sw    $ra, 0x14($sp)
/* 107E6C 8029E85C 0C0A79F7 */  jal   func_8029E7DC
/* 107E70 8029E860 AFA40018 */   sw    $a0, 0x18($sp)
/* 107E74 8029E864 8FA40018 */  lw    $a0, 0x18($sp)
/* 107E78 8029E868 3C028015 */  lui   $v0, %hi(gNumActors) # $v0, 0x8015
/* 107E7C 8029E86C 24420110 */  addiu $v0, %lo(gNumActors) # addiu $v0, $v0, 0x110
/* 107E80 8029E870 A4800002 */  sh    $zero, 2($a0)
/* 107E84 8029E874 A4800000 */  sh    $zero, ($a0)
/* 107E88 8029E878 944E0000 */  lhu   $t6, ($v0)
/* 107E8C 8029E87C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 107E90 8029E880 27BD0018 */  addiu $sp, $sp, 0x18
/* 107E94 8029E884 25CFFFFF */  addiu $t7, $t6, -1
/* 107E98 8029E888 03E00008 */  jr    $ra
/* 107E9C 8029E88C A44F0000 */   sh    $t7, ($v0)
