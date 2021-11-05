glabel func_8006EEE8
/* 06FAE8 8006EEE8 00803825 */  move  $a3, $a0
/* 06FAEC 8006EEEC 00074040 */  sll   $t0, $a3, 1
/* 06FAF0 8006EEF0 3C05800E */  lui   $a1, %hi(D_800E5520) # 0x800e
/* 06FAF4 8006EEF4 00A82821 */  addu  $a1, $a1, $t0
/* 06FAF8 8006EEF8 00047080 */  sll   $t6, $a0, 2
/* 06FAFC 8006EEFC 84A55520 */  lh    $a1, %lo(D_800E5520)($a1) # 0x5520
/* 06FB00 8006EF00 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 06FB04 8006EF04 3C04800E */  lui   $a0, %hi(D_800E54D0) # 0x800e
/* 06FB08 8006EF08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06FB0C 8006EF0C 008E2021 */  addu  $a0, $a0, $t6
/* 06FB10 8006EF10 8C8454D0 */  lw    $a0, %lo(D_800E54D0)($a0) # 0x54d0
/* 06FB14 8006EF14 AFA8001C */  sw    $t0, 0x1c($sp)
/* 06FB18 8006EF18 0C0AA13D */  jal   func_802A84F4
/* 06FB1C 8006EF1C 00A03025 */   move  $a2, $a1
/* 06FB20 8006EF20 8FA8001C */  lw    $t0, 0x1c($sp)
/* 06FB24 8006EF24 3C18800E */  lui   $t8, %hi(D_800E5548) # $t8, 0x800e
/* 06FB28 8006EF28 3C018019 */  lui   $at, %hi(D_8018D240) # $at, 0x8019
/* 06FB2C 8006EF2C 27185548 */  addiu $t8, %lo(D_800E5548) # addiu $t8, $t8, 0x5548
/* 06FB30 8006EF30 00087840 */  sll   $t7, $t0, 1
/* 06FB34 8006EF34 AC22D240 */  sw    $v0, %lo(D_8018D240)($at)
/* 06FB38 8006EF38 01F81821 */  addu  $v1, $t7, $t8
/* 06FB3C 8006EF3C 84790000 */  lh    $t9, ($v1)
/* 06FB40 8006EF40 3C018019 */  lui   $at, %hi(D_8018D2B0) # $at, 0x8019
/* 06FB44 8006EF44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06FB48 8006EF48 A439D2B0 */  sh    $t9, %lo(D_8018D2B0)($at)
/* 06FB4C 8006EF4C 84690002 */  lh    $t1, 2($v1)
/* 06FB50 8006EF50 3C018019 */  lui   $at, %hi(D_8018D2B8) # 0x8019
/* 06FB54 8006EF54 27BD0020 */  addiu $sp, $sp, 0x20
/* 06FB58 8006EF58 03E00008 */  jr    $ra
/* 06FB5C 8006EF5C A429D2B8 */   sh    $t1, %lo(D_8018D2B8)($at) # -0x2d48
