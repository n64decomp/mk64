glabel func_8007E4C4
/* 07F0C4 8007E4C4 3C048018 */  lui   $a0, %hi(D_80183EA8) # $a0, 0x8018
/* 07F0C8 8007E4C8 8C843EA8 */  lw    $a0, %lo(D_80183EA8)($a0)
/* 07F0CC 8007E4CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07F0D0 8007E4D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07F0D4 8007E4D4 0C01F8FB */  jal   func_8007E3EC
/* 07F0D8 8007E4D8 AFA4001C */   sw    $a0, 0x1c($sp)
/* 07F0DC 8007E4DC 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 07F0E0 8007E4E0 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 07F0E4 8007E4E4 24010001 */  li    $at, 1
/* 07F0E8 8007E4E8 8FA4001C */  lw    $a0, 0x1c($sp)
/* 07F0EC 8007E4EC 51C10004 */  beql  $t6, $at, .L8007E500
/* 07F0F0 8007E4F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 07F0F4 8007E4F4 0C01F87D */  jal   func_8007E1F4
/* 07F0F8 8007E4F8 00000000 */   nop   
/* 07F0FC 8007E4FC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007E500:
/* 07F100 8007E500 27BD0020 */  addiu $sp, $sp, 0x20
/* 07F104 8007E504 03E00008 */  jr    $ra
/* 07F108 8007E508 00000000 */   nop   
