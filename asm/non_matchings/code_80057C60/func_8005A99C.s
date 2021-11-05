glabel func_8005A99C
/* 05B59C 8005A99C 3C0E8019 */  lui   $t6, %hi(D_8018D170) # $t6, 0x8019
/* 05B5A0 8005A9A0 8DCED170 */  lw    $t6, %lo(D_8018D170)($t6)
/* 05B5A4 8005A9A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B5A8 8005A9A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B5AC 8005A9AC 15C0001D */  bnez  $t6, .L8005AA24
/* 05B5B0 8005A9B0 3C038019 */   lui   $v1, %hi(D_8018D178) # $v1, 0x8019
/* 05B5B4 8005A9B4 2463D178 */  addiu $v1, %lo(D_8018D178) # addiu $v1, $v1, -0x2e88
/* 05B5B8 8005A9B8 8C620000 */  lw    $v0, ($v1)
/* 05B5BC 8005A9BC 14400018 */  bnez  $v0, .L8005AA20
/* 05B5C0 8005A9C0 244FFFFF */   addiu $t7, $v0, -1
/* 05B5C4 8005A9C4 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 05B5C8 8005A9C8 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 05B5CC 8005A9CC 24030001 */  li    $v1, 1
/* 05B5D0 8005A9D0 54620007 */  bnel  $v1, $v0, .L8005A9F0
/* 05B5D4 8005A9D4 24010003 */   li    $at, 3
/* 05B5D8 8005A9D8 0C016A8D */  jal   func_8005AA34
/* 05B5DC 8005A9DC 00000000 */   nop   
/* 05B5E0 8005A9E0 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 05B5E4 8005A9E4 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 05B5E8 8005A9E8 24030001 */  li    $v1, 1
/* 05B5EC 8005A9EC 24010003 */  li    $at, 3
.L8005A9F0:
/* 05B5F0 8005A9F0 14410002 */  bne   $v0, $at, .L8005A9FC
/* 05B5F4 8005A9F4 3C018016 */   lui   $at, %hi(D_801657E8) # $at, 0x8016
/* 05B5F8 8005A9F8 A02357E8 */  sb    $v1, %lo(D_801657E8)($at)
.L8005A9FC:
/* 05B5FC 8005A9FC 3C018019 */  lui   $at, %hi(D_8018D188) # $at, 0x8019
/* 05B600 8005AA00 AC23D188 */  sw    $v1, %lo(D_8018D188)($at)
/* 05B604 8005AA04 3C018019 */  lui   $at, %hi(D_8018D170) # $at, 0x8019
/* 05B608 8005AA08 AC23D170 */  sw    $v1, %lo(D_8018D170)($at)
/* 05B60C 8005AA0C 3C018019 */  lui   $at, %hi(D_8018D190) # $at, 0x8019
/* 05B610 8005AA10 AC23D190 */  sw    $v1, %lo(D_8018D190)($at)
/* 05B614 8005AA14 3C018019 */  lui   $at, %hi(D_8018D204) # $at, 0x8019
/* 05B618 8005AA18 10000002 */  b     .L8005AA24
/* 05B61C 8005AA1C AC20D204 */   sw    $zero, %lo(D_8018D204)($at)
.L8005AA20:
/* 05B620 8005AA20 AC6F0000 */  sw    $t7, ($v1)
.L8005AA24:
/* 05B624 8005AA24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B628 8005AA28 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B62C 8005AA2C 03E00008 */  jr    $ra
/* 05B630 8005AA30 00000000 */   nop   
