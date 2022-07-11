glabel func_800A69C8
/* 0A75C8 800A69C8 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0A75CC 800A69CC AFB7004C */  sw    $s7, 0x4c($sp)
/* 0A75D0 800A69D0 3C178019 */  lui   $s7, %hi(D_8018EDF3) # $s7, 0x8019
/* 0A75D4 800A69D4 26F7EDF3 */  addiu $s7, %lo(D_8018EDF3) # addiu $s7, $s7, -0x120d
/* 0A75D8 800A69D8 82EE0000 */  lb    $t6, ($s7)
/* 0A75DC 800A69DC AFB00030 */  sw    $s0, 0x30($sp)
/* 0A75E0 800A69E0 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0A75E4 800A69E4 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0A75E8 800A69E8 AFB60048 */  sw    $s6, 0x48($sp)
/* 0A75EC 800A69EC AFB50044 */  sw    $s5, 0x44($sp)
/* 0A75F0 800A69F0 AFB40040 */  sw    $s4, 0x40($sp)
/* 0A75F4 800A69F4 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0A75F8 800A69F8 AFB20038 */  sw    $s2, 0x38($sp)
/* 0A75FC 800A69FC AFB10034 */  sw    $s1, 0x34($sp)
/* 0A7600 800A6A00 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 0A7604 800A6A04 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A7608 800A6A08 AFA40088 */  sw    $a0, 0x88($sp)
/* 0A760C 800A6A0C 19C0005B */  blez  $t6, .L800A6B7C
/* 0A7610 800A6A10 00008025 */   move  $s0, $zero
/* 0A7614 800A6A14 3C01800F */  lui   $at, %hi(D_800F1F24) # $at, 0x800f
/* 0A7618 800A6A18 C4361F24 */  lwc1  $f22, %lo(D_800F1F24)($at)
/* 0A761C 800A6A1C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A7620 800A6A20 3C11800E */  lui   $s1, %hi(D_800E7300) # $s1, 0x800e
/* 0A7624 800A6A24 3C12800E */  lui   $s2, %hi(D_800E7380) # $s2, 0x800e
/* 0A7628 800A6A28 3C1E800E */  lui   $fp, %hi(gModeSelection) # $fp, 0x800e
/* 0A762C 800A6A2C 4481A000 */  mtc1  $at, $f20
/* 0A7630 800A6A30 27DEC53C */  addiu $fp, %lo(gModeSelection) # addiu $fp, $fp, -0x3ac4
/* 0A7634 800A6A34 26527380 */  addiu $s2, %lo(D_800E7380) # addiu $s2, $s2, 0x7380
/* 0A7638 800A6A38 26317300 */  addiu $s1, %lo(D_800E7300) # addiu $s1, $s1, 0x7300
/* 0A763C 800A6A3C 27B60074 */  addiu $s6, $sp, 0x74
/* 0A7640 800A6A40 24150003 */  li    $s5, 3
/* 0A7644 800A6A44 8FB40068 */  lw    $s4, 0x68($sp)
.L800A6A48:
/* 0A7648 800A6A48 8FC20000 */  lw    $v0, ($fp)
/* 0A764C 800A6A4C 24010002 */  li    $at, 2
/* 0A7650 800A6A50 00001825 */  move  $v1, $zero
/* 0A7654 800A6A54 10410005 */  beq   $v0, $at, .L800A6A6C
/* 0A7658 800A6A58 3C13800E */   lui   $s3, %hi(D_800E7720)
/* 0A765C 800A6A5C 1055000E */  beq   $v0, $s5, .L800A6A98
/* 0A7660 800A6A60 00000000 */   nop
/* 0A7664 800A6A64 10000015 */  b     .L800A6ABC
/* 0A7668 800A6A68 00035080 */   sll   $t2, $v1, 2
.L800A6A6C:
/* 0A766C 800A6A6C 00107880 */  sll   $t7, $s0, 2
/* 0A7670 800A6A70 3C188016 */  lui   $t8, %hi(gPlayerPositions)
/* 0A7674 800A6A74 030FC021 */  addu  $t8, $t8, $t7
/* 0A7678 800A6A78 8F1843B8 */  lw    $t8, %lo(gPlayerPositions)($t8)
/* 0A767C 800A6A7C 3C198016 */  lui   $t9, %hi(gNmiUnknown1) # $t9, 0x8016
/* 0A7680 800A6A80 13000002 */  beqz  $t8, .L800A6A8C
/* 0A7684 800A6A84 00000000 */   nop
/* 0A7688 800A6A88 24030001 */  li    $v1, 1
.L800A6A8C:
/* 0A768C 800A6A8C 8F39F8B8 */  lw    $t9, %lo(gNmiUnknown1)($t9)
/* 0A7690 800A6A90 10000009 */  b     .L800A6AB8
/* 0A7694 800A6A94 0330A021 */   addu  $s4, $t9, $s0
.L800A6A98:
/* 0A7698 800A6A98 3C08800E */  lui   $t0, %hi(gPlayerWinningIndex) # $t0, 0x800e
/* 0A769C 800A6A9C 8D08C5E8 */  lw    $t0, %lo(gPlayerWinningIndex)($t0)
/* 0A76A0 800A6AA0 3C098016 */  lui   $t1, %hi(gNmiUnknown4) # $t1, 0x8016
/* 0A76A4 800A6AA4 12080002 */  beq   $s0, $t0, .L800A6AB0
/* 0A76A8 800A6AA8 00000000 */   nop
/* 0A76AC 800A6AAC 24030001 */  li    $v1, 1
.L800A6AB0:
/* 0A76B0 800A6AB0 8D29F8C4 */  lw    $t1, %lo(gNmiUnknown4)($t1)
/* 0A76B4 800A6AB4 0130A021 */  addu  $s4, $t1, $s0
.L800A6AB8:
/* 0A76B8 800A6AB8 00035080 */  sll   $t2, $v1, 2
.L800A6ABC:
/* 0A76BC 800A6ABC 026A9821 */  addu  $s3, $s3, $t2
/* 0A76C0 800A6AC0 10600005 */  beqz  $v1, .L800A6AD8
/* 0A76C4 800A6AC4 8E737720 */   lw    $s3, %lo(D_800E7720)($s3)
/* 0A76C8 800A6AC8 0C024C36 */  jal   set_text_color
/* 0A76CC 800A6ACC 00002025 */   move  $a0, $zero
/* 0A76D0 800A6AD0 10000011 */  b     .L800A6B18
/* 0A76D4 800A6AD4 92840000 */   lbu   $a0, ($s4)
.L800A6AD8:
/* 0A76D8 800A6AD8 3C0B800E */  lui   $t3, %hi(gGlobalTimer) # $t3, 0x800e
/* 0A76DC 800A6ADC 8D6BC54C */  lw    $t3, %lo(gGlobalTimer)($t3)
/* 0A76E0 800A6AE0 0175001A */  div   $zero, $t3, $s5
/* 0A76E4 800A6AE4 00002010 */  mfhi  $a0
/* 0A76E8 800A6AE8 16A00002 */  bnez  $s5, .L800A6AF4
/* 0A76EC 800A6AEC 00000000 */   nop
/* 0A76F0 800A6AF0 0007000D */  break 7
.L800A6AF4:
/* 0A76F4 800A6AF4 2401FFFF */  li    $at, -1
/* 0A76F8 800A6AF8 16A10004 */  bne   $s5, $at, .L800A6B0C
/* 0A76FC 800A6AFC 3C018000 */   lui   $at, 0x8000
/* 0A7700 800A6B00 15610002 */  bne   $t3, $at, .L800A6B0C
/* 0A7704 800A6B04 00000000 */   nop
/* 0A7708 800A6B08 0006000D */  break 6
.L800A6B0C:
/* 0A770C 800A6B0C 0C024C36 */  jal   set_text_color
/* 0A7710 800A6B10 00000000 */   nop
/* 0A7714 800A6B14 92840000 */  lbu   $a0, ($s4)
.L800A6B18:
/* 0A7718 800A6B18 0C029E7D */  jal   func_800A79F4
/* 0A771C 800A6B1C 02C02825 */   move  $a1, $s6
/* 0A7720 800A6B20 86240000 */  lh    $a0, ($s1)
/* 0A7724 800A6B24 86250002 */  lh    $a1, 2($s1)
/* 0A7728 800A6B28 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A772C 800A6B2C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A7730 800A6B30 02C03025 */  move  $a2, $s6
/* 0A7734 800A6B34 00003825 */  move  $a3, $zero
/* 0A7738 800A6B38 24840010 */  addiu $a0, $a0, 0x10
/* 0A773C 800A6B3C 0C024E7F */  jal   text_draw
/* 0A7740 800A6B40 24A50075 */   addiu $a1, $a1, 0x75
/* 0A7744 800A6B44 86440000 */  lh    $a0, ($s2)
/* 0A7748 800A6B48 86450002 */  lh    $a1, 2($s2)
/* 0A774C 800A6B4C 02603025 */  move  $a2, $s3
/* 0A7750 800A6B50 00003825 */  move  $a3, $zero
/* 0A7754 800A6B54 E7B60010 */  swc1  $f22, 0x10($sp)
/* 0A7758 800A6B58 0C024DD5 */  jal   func_80093754
/* 0A775C 800A6B5C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A7760 800A6B60 82EC0000 */  lb    $t4, ($s7)
/* 0A7764 800A6B64 26100001 */  addiu $s0, $s0, 1
/* 0A7768 800A6B68 26310008 */  addiu $s1, $s1, 8
/* 0A776C 800A6B6C 020C082A */  slt   $at, $s0, $t4
/* 0A7770 800A6B70 1420FFB5 */  bnez  $at, .L800A6A48
/* 0A7774 800A6B74 26520008 */   addiu $s2, $s2, 8
/* 0A7778 800A6B78 AFB40068 */  sw    $s4, 0x68($sp)
.L800A6B7C:
/* 0A777C 800A6B7C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A7780 800A6B80 4481A000 */  mtc1  $at, $f20
/* 0A7784 800A6B84 0C024C36 */  jal   set_text_color
/* 0A7788 800A6B88 00002025 */   move  $a0, $zero
/* 0A778C 800A6B8C 3C05800E */  lui   $a1, %hi(D_800E7302) # $a1, 0x800e
/* 0A7790 800A6B90 84A57302 */  lh    $a1, %lo(D_800E7302)($a1)
/* 0A7794 800A6B94 3C06800F */  lui   $a2, %hi(D_800F0C7C) # $a2, 0x800f
/* 0A7798 800A6B98 24C60C7C */  addiu $a2, %lo(D_800F0C7C) # addiu $a2, $a2, 0xc7c
/* 0A779C 800A6B9C 2404009E */  li    $a0, 158
/* 0A77A0 800A6BA0 00003825 */  move  $a3, $zero
/* 0A77A4 800A6BA4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A77A8 800A6BA8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A77AC 800A6BAC 0C024E7F */  jal   text_draw
/* 0A77B0 800A6BB0 24A5006D */   addiu $a1, $a1, 0x6d
/* 0A77B4 800A6BB4 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0A77B8 800A6BB8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A77BC 800A6BBC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 0A77C0 800A6BC0 8FB00030 */  lw    $s0, 0x30($sp)
/* 0A77C4 800A6BC4 8FB10034 */  lw    $s1, 0x34($sp)
/* 0A77C8 800A6BC8 8FB20038 */  lw    $s2, 0x38($sp)
/* 0A77CC 800A6BCC 8FB3003C */  lw    $s3, 0x3c($sp)
/* 0A77D0 800A6BD0 8FB40040 */  lw    $s4, 0x40($sp)
/* 0A77D4 800A6BD4 8FB50044 */  lw    $s5, 0x44($sp)
/* 0A77D8 800A6BD8 8FB60048 */  lw    $s6, 0x48($sp)
/* 0A77DC 800A6BDC 8FB7004C */  lw    $s7, 0x4c($sp)
/* 0A77E0 800A6BE0 8FBE0050 */  lw    $fp, 0x50($sp)
/* 0A77E4 800A6BE4 03E00008 */  jr    $ra
/* 0A77E8 800A6BE8 27BD0088 */   addiu $sp, $sp, 0x88
