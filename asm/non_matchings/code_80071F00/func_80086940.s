.section .late_rodata

glabel jpt_800EF474
.word L80086BB0, L80086990, L800869A0, L80086A04
.word L80086A18, L80086AFC, L80086B6C, L80086B8C

glabel D_800EF494
.float -0.4

.section .text

glabel func_80086940
/* 087540 80086940 000470C0 */  sll   $t6, $a0, 3
/* 087544 80086944 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 087548 80086948 01C47023 */  subu  $t6, $t6, $a0
/* 08754C 8008694C 3C0F8016 */  lui   $t7, %hi(gObjectList) # $t7, 0x8016
/* 087550 80086950 AFB00014 */  sw    $s0, 0x14($sp)
/* 087554 80086954 25EF5C18 */  addiu $t7, %lo(gObjectList) # addiu $t7, $t7, 0x5c18
/* 087558 80086958 000E7140 */  sll   $t6, $t6, 5
/* 08755C 8008695C 01CF8021 */  addu  $s0, $t6, $t7
/* 087560 80086960 961800AE */  lhu   $t8, 0xae($s0)
/* 087564 80086964 AFB10018 */  sw    $s1, 0x18($sp)
/* 087568 80086968 00808825 */  move  $s1, $a0
/* 08756C 8008696C 2F010008 */  sltiu $at, $t8, 8
/* 087570 80086970 1020008F */  beqz  $at, .L80086BB0
/* 087574 80086974 AFBF001C */   sw    $ra, 0x1c($sp)
/* 087578 80086978 0018C080 */  sll   $t8, $t8, 2
/* 08757C 8008697C 3C01800F */  lui   $at, %hi(jpt_800EF474)
/* 087580 80086980 00380821 */  addu  $at, $at, $t8
/* 087584 80086984 8C38F474 */  lw    $t8, %lo(jpt_800EF474)($at)
/* 087588 80086988 03000008 */  jr    $t8
/* 08758C 8008698C 00000000 */   nop   
glabel L80086990
/* 087590 80086990 0C021BF5 */  jal   func_80086FD4
/* 087594 80086994 02202025 */   move  $a0, $s1
/* 087598 80086998 10000085 */  b     .L80086BB0
/* 08759C 8008699C 00000000 */   nop   
glabel L800869A0
/* 0875A0 800869A0 3C053CCC */  lui   $a1, (0x3CCCCCCD >> 16) # lui $a1, 0x3ccc
/* 0875A4 800869A4 3C063A83 */  lui   $a2, (0x3A83126F >> 16) # lui $a2, 0x3a83
/* 0875A8 800869A8 34C6126F */  ori   $a2, (0x3A83126F & 0xFFFF) # ori $a2, $a2, 0x126f
/* 0875AC 800869AC 34A5CCCD */  ori   $a1, (0x3CCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 0875B0 800869B0 0C0104EE */  jal   f32_step_towards
/* 0875B4 800869B4 02002025 */   move  $a0, $s0
/* 0875B8 800869B8 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 0875BC 800869BC 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 0875C0 800869C0 02202025 */  move  $a0, $s1
/* 0875C4 800869C4 3C0540C0 */  lui   $a1, 0x40c0
/* 0875C8 800869C8 0C021F12 */  jal   func_80087C48
/* 0875CC 800869CC 240700C8 */   li    $a3, 200
/* 0875D0 800869D0 C606003C */  lwc1  $f6, 0x3c($s0)
/* 0875D4 800869D4 44802800 */  mtc1  $zero, $f5
/* 0875D8 800869D8 44802000 */  mtc1  $zero, $f4
/* 0875DC 800869DC 46003221 */  cvt.d.s $f8, $f6
/* 0875E0 800869E0 02202025 */  move  $a0, $s1
/* 0875E4 800869E4 4624403E */  c.le.d $f8, $f4
/* 0875E8 800869E8 00000000 */  nop   
/* 0875EC 800869EC 45000070 */  bc1f  .L80086BB0
/* 0875F0 800869F0 00000000 */   nop   
/* 0875F4 800869F4 0C021C07 */  jal   func_8008701C
/* 0875F8 800869F8 24050003 */   li    $a1, 3
/* 0875FC 800869FC 1000006C */  b     .L80086BB0
/* 087600 80086A00 00000000 */   nop   
glabel L80086A04
/* 087604 80086A04 02202025 */  move  $a0, $s1
/* 087608 80086A08 0C021C6B */  jal   func_800871AC
/* 08760C 80086A0C 24050064 */   li    $a1, 100
/* 087610 80086A10 10000067 */  b     .L80086BB0
/* 087614 80086A14 00000000 */   nop   
glabel L80086A18
/* 087618 80086A18 24190001 */  li    $t9, 1
/* 08761C 80086A1C 3C018016 */  lui   $at, %hi(D_801658D6) # $at, 0x8016
/* 087620 80086A20 A03958D6 */  sb    $t9, %lo(D_801658D6)($at)
/* 087624 80086A24 3C01800F */  lui   $at, %hi(D_800EF494) # $at, 0x800f
/* 087628 80086A28 C42AF494 */  lwc1  $f10, %lo(D_800EF494)($at)
/* 08762C 80086A2C 02202025 */  move  $a0, $s1
/* 087630 80086A30 0C021BF5 */  jal   func_80086FD4
/* 087634 80086A34 E60A003C */   swc1  $f10, 0x3c($s0)
/* 087638 80086A38 3C0142B4 */  li    $at, 0x42B40000 # 90.000000
/* 08763C 80086A3C 44818000 */  mtc1  $at, $f16
/* 087640 80086A40 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 087644 80086A44 44819000 */  mtc1  $at, $f18
/* 087648 80086A48 3C028028 */  lui   $v0, %hi(D_802874D8+0x1D) # $v0, 0x8028
/* 08764C 80086A4C E6100014 */  swc1  $f16, 0x14($s0)
/* 087650 80086A50 E612002C */  swc1  $f18, 0x2c($s0)
/* 087654 80086A54 804274F5 */  lb    $v0, %lo(D_802874D8+0x1D)($v0)
/* 087658 80086A58 24010001 */  li    $at, 1
/* 08765C 80086A5C 10410005 */  beq   $v0, $at, .L80086A74
/* 087660 80086A60 24010002 */   li    $at, 2
/* 087664 80086A64 50410015 */  beql  $v0, $at, .L80086ABC
/* 087668 80086A68 C6100010 */   lwc1  $f16, 0x10($s0)
/* 08766C 80086A6C 10000050 */  b     .L80086BB0
/* 087670 80086A70 00000000 */   nop   
.L80086A74:
/* 087674 80086A74 C6060010 */  lwc1  $f6, 0x10($s0)
/* 087678 80086A78 3C014008 */  li    $at, 0x40080000 # 2.125000
/* 08767C 80086A7C 44814800 */  mtc1  $at, $f9
/* 087680 80086A80 44804000 */  mtc1  $zero, $f8
/* 087684 80086A84 46003121 */  cvt.d.s $f4, $f6
/* 087688 80086A88 C6120018 */  lwc1  $f18, 0x18($s0)
/* 08768C 80086A8C 46282281 */  sub.d $f10, $f4, $f8
/* 087690 80086A90 3C01402E */  li    $at, 0x402E0000 # 2.718750
/* 087694 80086A94 44812800 */  mtc1  $at, $f5
/* 087698 80086A98 44802000 */  mtc1  $zero, $f4
/* 08769C 80086A9C 460091A1 */  cvt.d.s $f6, $f18
/* 0876A0 80086AA0 46205420 */  cvt.s.d $f16, $f10
/* 0876A4 80086AA4 46243200 */  add.d $f8, $f6, $f4
/* 0876A8 80086AA8 E6100010 */  swc1  $f16, 0x10($s0)
/* 0876AC 80086AAC 462042A0 */  cvt.s.d $f10, $f8
/* 0876B0 80086AB0 1000003F */  b     .L80086BB0
/* 0876B4 80086AB4 E60A0018 */   swc1  $f10, 0x18($s0)
/* 0876B8 80086AB8 C6100010 */  lwc1  $f16, 0x10($s0)
.L80086ABC:
/* 0876BC 80086ABC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0876C0 80086AC0 44813800 */  mtc1  $at, $f7
/* 0876C4 80086AC4 44803000 */  mtc1  $zero, $f6
/* 0876C8 80086AC8 460084A1 */  cvt.d.s $f18, $f16
/* 0876CC 80086ACC C60A0018 */  lwc1  $f10, 0x18($s0)
/* 0876D0 80086AD0 46269101 */  sub.d $f4, $f18, $f6
/* 0876D4 80086AD4 3C01402E */  li    $at, 0x402E0000 # 2.718750
/* 0876D8 80086AD8 44819800 */  mtc1  $at, $f19
/* 0876DC 80086ADC 44809000 */  mtc1  $zero, $f18
/* 0876E0 80086AE0 46005421 */  cvt.d.s $f16, $f10
/* 0876E4 80086AE4 46202220 */  cvt.s.d $f8, $f4
/* 0876E8 80086AE8 46328181 */  sub.d $f6, $f16, $f18
/* 0876EC 80086AEC E6080010 */  swc1  $f8, 0x10($s0)
/* 0876F0 80086AF0 46203120 */  cvt.s.d $f4, $f6
/* 0876F4 80086AF4 1000002E */  b     .L80086BB0
/* 0876F8 80086AF8 E6040018 */   swc1  $f4, 0x18($s0)
glabel L80086AFC
/* 0876FC 80086AFC C60A002C */  lwc1  $f10, 0x2c($s0)
/* 087700 80086B00 3C014020 */  li    $at, 0x40200000 # 2.500000
/* 087704 80086B04 44814800 */  mtc1  $at, $f9
/* 087708 80086B08 44804000 */  mtc1  $zero, $f8
/* 08770C 80086B0C 46005421 */  cvt.d.s $f16, $f10
/* 087710 80086B10 3C05BDCC */  lui   $a1, (0xBDCCCCCD >> 16) # lui $a1, 0xbdcc
/* 087714 80086B14 4628803E */  c.le.d $f16, $f8
/* 087718 80086B18 34A5CCCD */  ori   $a1, (0xBDCCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 08771C 80086B1C 2604003C */  addiu $a0, $s0, 0x3c
/* 087720 80086B20 3C06BC23 */  lui   $a2, (0xBC23D70A >> 16) # lui $a2, 0xbc23
/* 087724 80086B24 45000003 */  bc1f  .L80086B34
/* 087728 80086B28 00000000 */   nop   
/* 08772C 80086B2C 0C0104EE */  jal   f32_step_towards
/* 087730 80086B30 34C6D70A */   ori   $a2, (0xBC23D70A & 0xFFFF) # ori $a2, $a2, 0xd70a
.L80086B34:
/* 087734 80086B34 0C021DF1 */  jal   func_800877C4
/* 087738 80086B38 02202025 */   move  $a0, $s1
/* 08773C 80086B3C C606002C */  lwc1  $f6, 0x2c($s0)
/* 087740 80086B40 44809800 */  mtc1  $zero, $f19
/* 087744 80086B44 44809000 */  mtc1  $zero, $f18
/* 087748 80086B48 46003121 */  cvt.d.s $f4, $f6
/* 08774C 80086B4C 4632203E */  c.le.d $f4, $f18
/* 087750 80086B50 00000000 */  nop   
/* 087754 80086B54 45000016 */  bc1f  .L80086BB0
/* 087758 80086B58 00000000 */   nop   
/* 08775C 80086B5C 0C021BF5 */  jal   func_80086FD4
/* 087760 80086B60 02202025 */   move  $a0, $s1
/* 087764 80086B64 10000012 */  b     .L80086BB0
/* 087768 80086B68 00000000 */   nop   
glabel L80086B6C
/* 08776C 80086B6C 02202025 */  move  $a0, $s1
/* 087770 80086B70 0C021C6B */  jal   func_800871AC
/* 087774 80086B74 24050041 */   li    $a1, 65
/* 087778 80086B78 1040000D */  beqz  $v0, .L80086BB0
/* 08777C 80086B7C 24080001 */   li    $t0, 1
/* 087780 80086B80 3C018016 */  lui   $at, %hi(D_801658F4) # $at, 0x8016
/* 087784 80086B84 1000000A */  b     .L80086BB0
/* 087788 80086B88 A02858F4 */   sb    $t0, %lo(D_801658F4)($at)
glabel L80086B8C
/* 08778C 80086B8C 02202025 */  move  $a0, $s1
/* 087790 80086B90 0C021C6B */  jal   func_800871AC
/* 087794 80086B94 24050064 */   li    $a1, 100
/* 087798 80086B98 10400005 */  beqz  $v0, .L80086BB0
/* 08779C 80086B9C 00000000 */   nop   
/* 0877A0 80086BA0 0C024997 */  jal   func_8009265C
/* 0877A4 80086BA4 00000000 */   nop   
/* 0877A8 80086BA8 0C021BD8 */  jal   func_80086F60
/* 0877AC 80086BAC 02202025 */   move  $a0, $s1
.L80086BB0:
glabel L80086BB0
/* 0877B0 80086BB0 3C098016 */  lui   $t1, %hi(D_801658D6) # $t1, 0x8016
/* 0877B4 80086BB4 812958D6 */  lb    $t1, %lo(D_801658D6)($t1)
/* 0877B8 80086BB8 340CE800 */  li    $t4, 59392
/* 0877BC 80086BBC 340DDA00 */  li    $t5, 55808
/* 0877C0 80086BC0 51200008 */  beql  $t1, $zero, .L80086BE4
/* 0877C4 80086BC4 960E00BE */   lhu   $t6, 0xbe($s0)
/* 0877C8 80086BC8 960A00BE */  lhu   $t2, 0xbe($s0)
/* 0877CC 80086BCC A60C00C0 */  sh    $t4, 0xc0($s0)
/* 0877D0 80086BD0 A60D00C2 */  sh    $t5, 0xc2($s0)
/* 0877D4 80086BD4 254B0400 */  addiu $t3, $t2, 0x400
/* 0877D8 80086BD8 10000007 */  b     .L80086BF8
/* 0877DC 80086BDC A60B00BE */   sh    $t3, 0xbe($s0)
/* 0877E0 80086BE0 960E00BE */  lhu   $t6, 0xbe($s0)
.L80086BE4:
/* 0877E4 80086BE4 961800C0 */  lhu   $t8, 0xc0($s0)
/* 0877E8 80086BE8 25CF0400 */  addiu $t7, $t6, 0x400
/* 0877EC 80086BEC 2719FE00 */  addiu $t9, $t8, -0x200
/* 0877F0 80086BF0 A60F00BE */  sh    $t7, 0xbe($s0)
/* 0877F4 80086BF4 A61900C0 */  sh    $t9, 0xc0($s0)
.L80086BF8:
/* 0877F8 80086BF8 0C022FC6 */  jal   func_8008BF18
/* 0877FC 80086BFC 02202025 */   move  $a0, $s1
/* 087800 80086C00 8FBF001C */  lw    $ra, 0x1c($sp)
/* 087804 80086C04 8FB00014 */  lw    $s0, 0x14($sp)
/* 087808 80086C08 8FB10018 */  lw    $s1, 0x18($sp)
/* 08780C 80086C0C 03E00008 */  jr    $ra
/* 087810 80086C10 27BD0020 */   addiu $sp, $sp, 0x20
