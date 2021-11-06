glabel func_800BEB54
/* 0BF754 800BEB54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BF758 800BEB58 00057080 */  sll   $t6, $a1, 2
/* 0BF75C 800BEB5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BF760 800BEB60 008E1021 */  addu  $v0, $a0, $t6
/* 0BF764 800BEB64 8C460048 */  lw    $a2, 0x48($v0)
/* 0BF768 800BEB68 3C04803B */  lui   $a0, %hi(D_803B5FB8) # $a0, 0x803b
/* 0BF76C 800BEB6C 24845FB8 */  addiu $a0, %lo(D_803B5FB8) # addiu $a0, $a0, 0x5fb8
/* 0BF770 800BEB70 10C00008 */  beqz  $a2, .L800BEB94
/* 0BF774 800BEB74 24C5006C */   addiu $a1, $a2, 0x6c
/* 0BF778 800BEB78 AFA20018 */  sw    $v0, 0x18($sp)
/* 0BF77C 800BEB7C 0C02FC01 */  jal   func_800BF004
/* 0BF780 800BEB80 AFA6001C */   sw    $a2, 0x1c($sp)
/* 0BF784 800BEB84 0C02FAC6 */  jal   func_800BEB18
/* 0BF788 800BEB88 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0BF78C 800BEB8C 8FA20018 */  lw    $v0, 0x18($sp)
/* 0BF790 800BEB90 AC400048 */  sw    $zero, 0x48($v0)
.L800BEB94:
/* 0BF794 800BEB94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BF798 800BEB98 27BD0020 */  addiu $sp, $sp, 0x20
/* 0BF79C 800BEB9C 03E00008 */  jr    $ra
/* 0BF7A0 800BEBA0 00000000 */   nop   
