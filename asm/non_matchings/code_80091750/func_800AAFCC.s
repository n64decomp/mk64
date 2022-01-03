glabel func_800AAFCC
/* 0ABBCC 800AAFCC 24850001 */  addiu $a1, $a0, 1
/* 0ABBD0 800AAFD0 3C068019 */  lui   $a2, %hi(gCharacterGridSelections) # $a2, 0x8019
/* 0ABBD4 800AAFD4 00001825 */  move  $v1, $zero
/* 0ABBD8 800AAFD8 00001025 */  move  $v0, $zero
/* 0ABBDC 800AAFDC 24C6EDE4 */  addiu $a2, %lo(gCharacterGridSelections) # addiu $a2, $a2, -0x121c
/* 0ABBE0 800AAFE0 24040004 */  li    $a0, 4
.L800AAFE4:
/* 0ABBE4 800AAFE4 80CE0000 */  lb    $t6, ($a2)
/* 0ABBE8 800AAFE8 54AE0004 */  bnel  $a1, $t6, .L800AAFFC
/* 0ABBEC 800AAFEC 24630001 */   addiu $v1, $v1, 1
/* 0ABBF0 800AAFF0 10000004 */  b     .L800AB004
/* 0ABBF4 800AAFF4 24020001 */   li    $v0, 1
/* 0ABBF8 800AAFF8 24630001 */  addiu $v1, $v1, 1
.L800AAFFC:
/* 0ABBFC 800AAFFC 1464FFF9 */  bne   $v1, $a0, .L800AAFE4
/* 0ABC00 800AB000 24C60001 */   addiu $a2, $a2, 1
.L800AB004:
/* 0ABC04 800AB004 50400004 */  beql  $v0, $zero, .L800AB018
/* 0ABC08 800AB008 2402FFFF */   li    $v0, -1
/* 0ABC0C 800AB00C 03E00008 */  jr    $ra
/* 0ABC10 800AB010 00601025 */   move  $v0, $v1

/* 0ABC14 800AB014 2402FFFF */  li    $v0, -1
.L800AB018:
/* 0ABC18 800AB018 03E00008 */  jr    $ra
/* 0ABC1C 800AB01C 00000000 */   nop
