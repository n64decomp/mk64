glabel func_80021D40
/* 022940 80021D40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 022944 80021D44 AFBF0014 */  sw    $ra, 0x14($sp)
/* 022948 80021D48 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 02294C 80021D4C 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 022950 80021D50 00002825 */  move  $a1, $zero
/* 022954 80021D54 0C01BA31 */  jal   func_8006E8C4
/* 022958 80021D58 24060002 */   li    $a2, 2
/* 02295C 80021D5C 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 022960 80021D60 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022964 80021D64 24050001 */  li    $a1, 1
/* 022968 80021D68 0C01BA31 */  jal   func_8006E8C4
/* 02296C 80021D6C 24060002 */   li    $a2, 2
/* 022970 80021D70 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022974 80021D74 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 022978 80021D78 24050002 */  li    $a1, 2
/* 02297C 80021D7C 0C01BA31 */  jal   func_8006E8C4
/* 022980 80021D80 24060002 */   li    $a2, 2
/* 022984 80021D84 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 022988 80021D88 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 02298C 80021D8C 24050003 */  li    $a1, 3
/* 022990 80021D90 0C01BA31 */  jal   func_8006E8C4
/* 022994 80021D94 24060002 */   li    $a2, 2
/* 022998 80021D98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02299C 80021D9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0229A0 80021DA0 03E00008 */  jr    $ra
/* 0229A4 80021DA4 00000000 */   nop
