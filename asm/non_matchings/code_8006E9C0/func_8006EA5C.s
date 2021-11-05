glabel func_8006EA5C
/* 06F65C 8006EA5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06F660 8006EA60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06F664 8006EA64 0C01BAC4 */  jal   func_8006EB10
/* 06F668 8006EA68 00000000 */   nop   
/* 06F66C 8006EA6C 0C01BB58 */  jal   func_8006ED60
/* 06F670 8006EA70 00000000 */   nop   
/* 06F674 8006EA74 3C048019 */  lui   $a0, %hi(D_8018CA70) # $a0, 0x8019
/* 06F678 8006EA78 2484CA70 */  addiu $a0, %lo(D_8018CA70) # addiu $a0, $a0, -0x3590
/* 06F67C 8006EA7C 0C033698 */  jal   bzero
/* 06F680 8006EA80 24050210 */   li    $a1, 528
/* 06F684 8006EA84 3C018019 */  lui   $at, %hi(D_8018CAE1) # $at, 0x8019
/* 06F688 8006EA88 A020CAE1 */  sb    $zero, %lo(D_8018CAE1)($at)
/* 06F68C 8006EA8C 3C018019 */  lui   $at, %hi(D_8018CAE2) # $at, 0x8019
/* 06F690 8006EA90 A020CAE2 */  sb    $zero, %lo(D_8018CAE2)($at)
/* 06F694 8006EA94 3C018019 */  lui   $at, %hi(D_8018CAF1) # $at, 0x8019
/* 06F698 8006EA98 A020CAF1 */  sb    $zero, %lo(D_8018CAF1)($at)
/* 06F69C 8006EA9C 3C018019 */  lui   $at, %hi(D_8018CB65) # $at, 0x8019
/* 06F6A0 8006EAA0 A020CB65 */  sb    $zero, %lo(D_8018CB65)($at)
/* 06F6A4 8006EAA4 3C018019 */  lui   $at, %hi(D_8018CB66) # $at, 0x8019
/* 06F6A8 8006EAA8 A020CB66 */  sb    $zero, %lo(D_8018CB66)($at)
/* 06F6AC 8006EAAC 3C018019 */  lui   $at, %hi(D_8018CB75) # $at, 0x8019
/* 06F6B0 8006EAB0 A020CB75 */  sb    $zero, %lo(D_8018CB75)($at)
/* 06F6B4 8006EAB4 3C018019 */  lui   $at, %hi(D_8018CBE9) # $at, 0x8019
/* 06F6B8 8006EAB8 A020CBE9 */  sb    $zero, %lo(D_8018CBE9)($at)
/* 06F6BC 8006EABC 3C018019 */  lui   $at, %hi(D_8018CBEA) # $at, 0x8019
/* 06F6C0 8006EAC0 A020CBEA */  sb    $zero, %lo(D_8018CBEA)($at)
/* 06F6C4 8006EAC4 3C018019 */  lui   $at, %hi(D_8018CBF9) # $at, 0x8019
/* 06F6C8 8006EAC8 A020CBF9 */  sb    $zero, %lo(D_8018CBF9)($at)
/* 06F6CC 8006EACC 3C018019 */  lui   $at, %hi(D_8018CC6D) # $at, 0x8019
/* 06F6D0 8006EAD0 A020CC6D */  sb    $zero, %lo(D_8018CC6D)($at)
/* 06F6D4 8006EAD4 3C018019 */  lui   $at, %hi(D_8018CC6E) # $at, 0x8019
/* 06F6D8 8006EAD8 A020CC6E */  sb    $zero, %lo(D_8018CC6E)($at)
/* 06F6DC 8006EADC 3C018019 */  lui   $at, %hi(D_8018CC7D) # $at, 0x8019
/* 06F6E0 8006EAE0 A020CC7D */  sb    $zero, %lo(D_8018CC7D)($at)
/* 06F6E4 8006EAE4 3C018019 */  lui   $at, %hi(D_8018CAE0) # $at, 0x8019
/* 06F6E8 8006EAE8 A020CAE0 */  sb    $zero, %lo(D_8018CAE0)($at)
/* 06F6EC 8006EAEC 3C018019 */  lui   $at, %hi(D_8018CB64) # $at, 0x8019
/* 06F6F0 8006EAF0 A020CB64 */  sb    $zero, %lo(D_8018CB64)($at)
/* 06F6F4 8006EAF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06F6F8 8006EAF8 3C018019 */  lui   $at, %hi(D_8018CBE8) # $at, 0x8019
/* 06F6FC 8006EAFC A020CBE8 */  sb    $zero, %lo(D_8018CBE8)($at)
/* 06F700 8006EB00 3C018019 */  lui   $at, %hi(D_8018CC6C) # $at, 0x8019
/* 06F704 8006EB04 A020CC6C */  sb    $zero, %lo(D_8018CC6C)($at)
/* 06F708 8006EB08 03E00008 */  jr    $ra
/* 06F70C 8006EB0C 27BD0018 */   addiu $sp, $sp, 0x18
