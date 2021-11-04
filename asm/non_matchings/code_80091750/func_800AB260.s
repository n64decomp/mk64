glabel func_800AB260
/* 0ABE60 800AB260 8C820000 */  lw    $v0, ($a0)
/* 0ABE64 800AB264 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0ABE68 800AB268 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0ABE6C 800AB26C 2442FFA8 */  addiu $v0, $v0, -0x58
/* 0ABE70 800AB270 240F0001 */  li    $t7, 1
/* 0ABE74 800AB274 544E0004 */  bnel  $v0, $t6, .L800AB288
/* 0ABE78 800AB278 A0800015 */   sb    $zero, 0x15($a0)
/* 0ABE7C 800AB27C 03E00008 */  jr    $ra
/* 0ABE80 800AB280 A08F0015 */   sb    $t7, 0x15($a0)

/* 0ABE84 800AB284 A0800015 */  sb    $zero, 0x15($a0)
.L800AB288:
/* 0ABE88 800AB288 03E00008 */  jr    $ra
/* 0ABE8C 800AB28C 00000000 */   nop   
