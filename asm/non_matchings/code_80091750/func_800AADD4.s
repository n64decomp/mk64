glabel func_800AADD4
/* 0AB9D4 800AADD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AB9D8 800AADD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AB9DC 800AADDC 8C820000 */  lw    $v0, ($a0)
/* 0AB9E0 800AADE0 3C038019 */  lui   $v1, %hi(gCharacterSelections) # 0x8019
/* 0AB9E4 800AADE4 240F000E */  li    $t7, 14
/* 0AB9E8 800AADE8 2442FFCC */  addiu $v0, $v0, -0x34
/* 0AB9EC 800AADEC 00621821 */  addu  $v1, $v1, $v0
/* 0AB9F0 800AADF0 8063EDE4 */  lb    $v1, %lo(gCharacterSelections)($v1) # -0x121c($v1)
/* 0AB9F4 800AADF4 00027040 */  sll   $t6, $v0, 1
/* 0AB9F8 800AADF8 01EEC023 */  subu  $t8, $t7, $t6
/* 0AB9FC 800AADFC A0980014 */  sb    $t8, 0x14($a0)
/* 0ABA00 800AAE00 0C02ABE5 */  jal   func_800AAF94
/* 0ABA04 800AAE04 2465FFFF */   addiu $a1, $v1, -1
/* 0ABA08 800AAE08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0ABA0C 800AAE0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0ABA10 800AAE10 03E00008 */  jr    $ra
/* 0ABA14 800AAE14 00000000 */   nop   
