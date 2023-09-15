glabel func_800A09E0
/* 0A15E0 800A09E0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0A15E4 800A09E4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0A15E8 800A09E8 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A15EC 800A09EC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A15F0 800A09F0 8E230000 */  lw    $v1, ($s1)
/* 0A15F4 800A09F4 AFB70030 */  sw    $s7, 0x30($sp)
/* 0A15F8 800A09F8 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0A15FC 800A09FC AFB50028 */  sw    $s5, 0x28($sp)
/* 0A1600 800A0A00 AFB40024 */  sw    $s4, 0x24($sp)
/* 0A1604 800A0A04 AFB30020 */  sw    $s3, 0x20($sp)
/* 0A1608 800A0A08 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0A160C 800A0A0C AFB00014 */  sw    $s0, 0x14($sp)
/* 0A1610 800A0A10 246E0008 */  addiu $t6, $v1, 8
/* 0A1614 800A0A14 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0A1618 800A0A18 AE2E0000 */  sw    $t6, ($s1)
/* 0A161C 800A0A1C 3C18004F */  lui   $t8, (0x004FC308 >> 16) # lui $t8, 0x4f
/* 0A1620 800A0A20 3718C308 */  ori   $t8, (0x004FC308 & 0xFFFF) # ori $t8, $t8, 0xc308
/* 0A1624 800A0A24 3C0FED00 */  lui   $t7, 0xed00
/* 0A1628 800A0A28 3C13800F */  lui   $s3, %hi(D_800E86D0) # $s3, 0x800f
/* 0A162C 800A0A2C 3C160200 */  lui   $s6, %hi(D_0200157C) # $s6, 0x200
/* 0A1630 800A0A30 00809025 */  move  $s2, $a0
/* 0A1634 800A0A34 26D6157C */  addiu $s6, %lo(D_0200157C) # addiu $s6, $s6, 0x157c
/* 0A1638 800A0A38 267386D0 */  addiu $s3, %lo(D_800E86D0) # addiu $s3, $s3, -0x7930
/* 0A163C 800A0A3C 00008025 */  move  $s0, $zero
/* 0A1640 800A0A40 24140008 */  li    $s4, 8
/* 0A1644 800A0A44 24150009 */  li    $s5, 9
/* 0A1648 800A0A48 2417000A */  li    $s7, 10
/* 0A164C 800A0A4C AC6F0000 */  sw    $t7, ($v1)
/* 0A1650 800A0A50 AC780004 */  sw    $t8, 4($v1)
/* 0A1654 800A0A54 82790000 */  lb    $t9, ($s3)
.L800A0A58:
/* 0A1658 800A0A58 17200005 */  bnez  $t9, .L800A0A70
/* 0A165C 800A0A5C 00000000 */   nop   
/* 0A1660 800A0A60 5200000E */  beql  $s0, $zero, .L800A0A9C
/* 0A1664 800A0A64 26100001 */   addiu $s0, $s0, 1
/* 0A1668 800A0A68 5214000C */  beql  $s0, $s4, .L800A0A9C
/* 0A166C 800A0A6C 26100001 */   addiu $s0, $s0, 1
.L800A0A70:
/* 0A1670 800A0A70 02170019 */  multu $s0, $s7
/* 0A1674 800A0A74 8E490010 */  lw    $t1, 0x10($s2)
/* 0A1678 800A0A78 8E240000 */  lw    $a0, ($s1)
/* 0A167C 800A0A7C 02C02825 */  move  $a1, $s6
/* 0A1680 800A0A80 24060020 */  li    $a2, 32
/* 0A1684 800A0A84 00004012 */  mflo  $t0
/* 0A1688 800A0A88 01093821 */  addu  $a3, $t0, $t1
/* 0A168C 800A0A8C 0C026E9D */  jal   func_8009BA74
/* 0A1690 800A0A90 00000000 */   nop   
/* 0A1694 800A0A94 AE220000 */  sw    $v0, ($s1)
/* 0A1698 800A0A98 26100001 */  addiu $s0, $s0, 1
.L800A0A9C:
/* 0A169C 800A0A9C 5615FFEE */  bnel  $s0, $s5, .L800A0A58
/* 0A16A0 800A0AA0 82790000 */   lb    $t9, ($s3)
/* 0A16A4 800A0AA4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0A16A8 800A0AA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0A16AC 800A0AAC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0A16B0 800A0AB0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0A16B4 800A0AB4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0A16B8 800A0AB8 8FB40024 */  lw    $s4, 0x24($sp)
/* 0A16BC 800A0ABC 8FB50028 */  lw    $s5, 0x28($sp)
/* 0A16C0 800A0AC0 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0A16C4 800A0AC4 8FB70030 */  lw    $s7, 0x30($sp)
/* 0A16C8 800A0AC8 03E00008 */  jr    $ra
/* 0A16CC 800A0ACC 27BD0038 */   addiu $sp, $sp, 0x38
