glabel func_8007E1AC
/* 07EDAC 8007E1AC 3C048018 */  lui   $a0, %hi(D_80183EA4) # $a0, 0x8018
/* 07EDB0 8007E1B0 8C843EA4 */  lw    $a0, %lo(D_80183EA4)($a0)
/* 07EDB4 8007E1B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07EDB8 8007E1B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07EDBC 8007E1BC 0C01F803 */  jal   func_8007E00C
/* 07EDC0 8007E1C0 AFA4001C */   sw    $a0, 0x1c($sp)
/* 07EDC4 8007E1C4 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 07EDC8 8007E1C8 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 07EDCC 8007E1CC 24010001 */  li    $at, 1
/* 07EDD0 8007E1D0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 07EDD4 8007E1D4 51C10004 */  beql  $t6, $at, .L8007E1E8
/* 07EDD8 8007E1D8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07EDDC 8007E1DC 0C01F770 */  jal   func_8007DDC0
/* 07EDE0 8007E1E0 00000000 */   nop   
/* 07EDE4 8007E1E4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007E1E8:
/* 07EDE8 8007E1E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 07EDEC 8007E1EC 03E00008 */  jr    $ra
/* 07EDF0 8007E1F0 00000000 */   nop   
