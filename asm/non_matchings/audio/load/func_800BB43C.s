glabel func_800BB43C
/* 0BC03C 800BB43C 84830002 */  lh    $v1, 2($a0)
/* 0BC040 800BB440 00001025 */  move  $v0, $zero
/* 0BC044 800BB444 00803025 */  move  $a2, $a0
/* 0BC048 800BB448 1860000C */  blez  $v1, .L800BB47C
/* 0BC04C 800BB44C 00000000 */   nop   
.L800BB450:
/* 0BC050 800BB450 8CCE0008 */  lw    $t6, 8($a2)
/* 0BC054 800BB454 24420001 */  addiu $v0, $v0, 1
/* 0BC058 800BB458 51C00006 */  beql  $t6, $zero, .L800BB474
/* 0BC05C 800BB45C 0043082A */   slt   $at, $v0, $v1
/* 0BC060 800BB460 8CCF0004 */  lw    $t7, 4($a2)
/* 0BC064 800BB464 01E5C021 */  addu  $t8, $t7, $a1
/* 0BC068 800BB468 ACD80004 */  sw    $t8, 4($a2)
/* 0BC06C 800BB46C 84830002 */  lh    $v1, 2($a0)
/* 0BC070 800BB470 0043082A */  slt   $at, $v0, $v1
.L800BB474:
/* 0BC074 800BB474 1420FFF6 */  bnez  $at, .L800BB450
/* 0BC078 800BB478 24C60008 */   addiu $a2, $a2, 8
.L800BB47C:
/* 0BC07C 800BB47C 03E00008 */  jr    $ra
/* 0BC080 800BB480 00000000 */   nop   
