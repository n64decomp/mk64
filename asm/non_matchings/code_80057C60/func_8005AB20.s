glabel func_8005AB20
/* 05B720 8005AB20 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 05B724 8005AB24 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 05B728 8005AB28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B72C 8005AB2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B730 8005AB30 15C00007 */  bnez  $t6, .L8005AB50
/* 05B734 8005AB34 3C0F800E */   lui   $t7, %hi(gPlayerCountSelection1) # $t7, 0x800e
/* 05B738 8005AB38 8DEFC538 */  lw    $t7, %lo(gPlayerCountSelection1)($t7)
/* 05B73C 8005AB3C 24010001 */  li    $at, 1
/* 05B740 8005AB40 55E10004 */  bnel  $t7, $at, .L8005AB54
/* 05B744 8005AB44 8FBF0014 */   lw    $ra, 0x14($sp)
/* 05B748 8005AB48 0C016A9B */  jal   func_8005AA6C
/* 05B74C 8005AB4C 24040014 */   li    $a0, 20
.L8005AB50:
/* 05B750 8005AB50 8FBF0014 */  lw    $ra, 0x14($sp)
.L8005AB54:
/* 05B754 8005AB54 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B758 8005AB58 03E00008 */  jr    $ra
/* 05B75C 8005AB5C 00000000 */   nop   
