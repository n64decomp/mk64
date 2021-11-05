glabel func_802A14BC
/* 10AACC 802A14BC 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 10AAD0 802A14C0 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 10AAD4 802A14C4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 10AAD8 802A14C8 24010001 */  li    $at, 1
/* 10AADC 802A14CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 10AAE0 802A14D0 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 10AAE4 802A14D4 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 10AAE8 802A14D8 11C10020 */  beq   $t6, $at, .L802A155C
/* 10AAEC 802A14DC AFA60048 */   sw    $a2, 0x48($sp)
/* 10AAF0 802A14E0 27A40020 */  addiu $a0, $sp, 0x20
/* 10AAF4 802A14E4 00002825 */  move  $a1, $zero
/* 10AAF8 802A14E8 00003025 */  move  $a2, $zero
/* 10AAFC 802A14EC 0C0AD4AF */  jal   func_802B52BC
/* 10AB00 802A14F0 00003825 */   move  $a3, $zero
/* 10AB04 802A14F4 44800000 */  mtc1  $zero, $f0
/* 10AB08 802A14F8 27A40028 */  addiu $a0, $sp, 0x28
/* 10AB0C 802A14FC 44050000 */  mfc1  $a1, $f0
/* 10AB10 802A1500 44060000 */  mfc1  $a2, $f0
/* 10AB14 802A1504 44070000 */  mfc1  $a3, $f0
/* 10AB18 802A1508 0C0AD4A7 */  jal   load_giant_egg
/* 10AB1C 802A150C 00000000 */   nop   
/* 10AB20 802A1510 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 10AB24 802A1514 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 10AB28 802A1518 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 10AB2C 802A151C 27A40034 */  addiu $a0, $sp, 0x34
/* 10AB30 802A1520 27A50020 */  addiu $a1, $sp, 0x20
/* 10AB34 802A1524 27A60028 */  addiu $a2, $sp, 0x28
/* 10AB38 802A1528 2407002B */  li    $a3, 43
/* 10AB3C 802A152C E7A40034 */  swc1  $f4, 0x34($sp)
/* 10AB40 802A1530 E7A60038 */  swc1  $f6, 0x38($sp)
/* 10AB44 802A1534 0C0A7B22 */  jal   func_8029EC88
/* 10AB48 802A1538 E7A8003C */   swc1  $f8, 0x3c($sp)
/* 10AB4C 802A153C 000278C0 */  sll   $t7, $v0, 3
/* 10AB50 802A1540 01E27823 */  subu  $t7, $t7, $v0
/* 10AB54 802A1544 3C188016 */  lui   $t8, %hi(D_8015F9B8) # $t8, 0x8016
/* 10AB58 802A1548 2718F9B8 */  addiu $t8, %lo(D_8015F9B8) # addiu $t8, $t8, -0x648
/* 10AB5C 802A154C 000F7900 */  sll   $t7, $t7, 4
/* 10AB60 802A1550 01F8C821 */  addu  $t9, $t7, $t8
/* 10AB64 802A1554 3C01802C */  lui   $at, %hi(D_802BA05C) # $at, 0x802c
/* 10AB68 802A1558 AC39A05C */  sw    $t9, %lo(D_802BA05C)($at)
.L802A155C:
/* 10AB6C 802A155C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 10AB70 802A1560 27BD0040 */  addiu $sp, $sp, 0x40
/* 10AB74 802A1564 03E00008 */  jr    $ra
/* 10AB78 802A1568 00000000 */   nop   
