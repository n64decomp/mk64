glabel func_8005D18C
/* 05DD8C 8005D18C 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 05DD90 8005D190 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 05DD94 8005D194 3C0F800E */  lui   $t7, %hi(gPlayerCountSelection1) # $t7, 0x800e
/* 05DD98 8005D198 15C00014 */  bnez  $t6, .L8005D1EC
/* 05DD9C 8005D19C 00000000 */   nop
/* 05DDA0 8005D1A0 8DEFC538 */  lw    $t7, %lo(gPlayerCountSelection1)($t7)
/* 05DDA4 8005D1A4 24020001 */  li    $v0, 1
/* 05DDA8 8005D1A8 3C038019 */  lui   $v1, %hi(D_8018D2BC) # $v1, 0x8019
/* 05DDAC 8005D1AC 144F000F */  bne   $v0, $t7, .L8005D1EC
/* 05DDB0 8005D1B0 2463D2BC */   addiu $v1, %lo(D_8018D2BC) # addiu $v1, $v1, -0x2d44
/* 05DDB4 8005D1B4 3C018016 */  lui   $at, %hi(D_801657D8) # $at, 0x8016
/* 05DDB8 8005D1B8 3C048019 */  lui   $a0, %hi(D_8018D2A4) # $a0, 0x8019
/* 05DDBC 8005D1BC A02257D8 */  sb    $v0, %lo(D_801657D8)($at)
/* 05DDC0 8005D1C0 2484D2A4 */  addiu $a0, %lo(D_8018D2A4) # addiu $a0, $a0, -0x2d5c
/* 05DDC4 8005D1C4 AC600000 */  sw    $zero, ($v1)
/* 05DDC8 8005D1C8 AC800000 */  sw    $zero, ($a0)
/* 05DDCC 8005D1CC 3C188016 */  lui   $t8, %hi(gPlayerPositions) # $t8, 0x8016
/* 05DDD0 8005D1D0 8F1843B8 */  lw    $t8, %lo(gPlayerPositions)($t8)
/* 05DDD4 8005D1D4 2B010004 */  slti  $at, $t8, 4
/* 05DDD8 8005D1D8 14200004 */  bnez  $at, .L8005D1EC
/* 05DDDC 8005D1DC 3C018019 */   lui   $at, %hi(D_8018D1FC) # $at, 0x8019
/* 05DDE0 8005D1E0 AC22D1FC */  sw    $v0, %lo(D_8018D1FC)($at)
/* 05DDE4 8005D1E4 AC820000 */  sw    $v0, ($a0)
/* 05DDE8 8005D1E8 AC620000 */  sw    $v0, ($v1)
.L8005D1EC:
/* 05DDEC 8005D1EC 03E00008 */  jr    $ra
/* 05DDF0 8005D1F0 00000000 */   nop
