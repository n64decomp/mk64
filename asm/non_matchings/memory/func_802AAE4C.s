glabel func_802AAE4C
/* 11445C 802AAE4C 27BDFF88 */  addiu $sp, $sp, -0x78
/* 114460 802AAE50 AFA5007C */  sw    $a1, 0x7c($sp)
/* 114464 802AAE54 97A5008E */  lhu   $a1, 0x8e($sp)
/* 114468 802AAE58 3C0A8016 */  lui   $t2, %hi(D_8015F580) # $t2, 0x8016
/* 11446C 802AAE5C 8D4AF580 */  lw    $t2, %lo(D_8015F580)($t2)
/* 114470 802AAE60 00054880 */  sll   $t1, $a1, 2
/* 114474 802AAE64 01254823 */  subu  $t1, $t1, $a1
/* 114478 802AAE68 00094880 */  sll   $t1, $t1, 2
/* 11447C 802AAE6C 01254823 */  subu  $t1, $t1, $a1
/* 114480 802AAE70 00094880 */  sll   $t1, $t1, 2
/* 114484 802AAE74 AFB00004 */  sw    $s0, 4($sp)
/* 114488 802AAE78 AFA70084 */  sw    $a3, 0x84($sp)
/* 11448C 802AAE7C 3C01802C */  lui    $at, %hi(D_802B9E48) # 0x802C0000 # -0.000000
/* 114490 802AAE80 012A1821 */  addu  $v1, $t1, $t2
/* 114494 802AAE84 C4600020 */  lwc1  $f0, 0x20($v1)
/* 114498 802AAE88 C4289E48 */  lwc1  $f8, %lo(D_802B9E48)($at)
/* 11449C 802AAE8C 44866000 */  mtc1  $a2, $f12
/* 1144A0 802AAE90 00808025 */  move  $s0, $a0
/* 1144A4 802AAE94 4608003C */  c.lt.s $f0, $f8
/* 1144A8 802AAE98 24020001 */  li    $v0, 1
/* 1144AC 802AAE9C 45020004 */  bc1fl .L802AAEB0
/* 1144B0 802AAEA0 846B0004 */   lh    $t3, 4($v1)
/* 1144B4 802AAEA4 100000F5 */  b     .L802AB27C
/* 1144B8 802AAEA8 00001025 */   move  $v0, $zero
/* 1144BC 802AAEAC 846B0004 */  lh    $t3, 4($v1)
.L802AAEB0:
/* 1144C0 802AAEB0 448B5000 */  mtc1  $t3, $f10
/* 1144C4 802AAEB4 00000000 */  nop   
/* 1144C8 802AAEB8 46805120 */  cvt.s.w $f4, $f10
/* 1144CC 802AAEBC 4604603C */  c.lt.s $f12, $f4
/* 1144D0 802AAEC0 00000000 */  nop   
/* 1144D4 802AAEC4 45020004 */  bc1fl .L802AAED8
/* 1144D8 802AAEC8 846C0008 */   lh    $t4, 8($v1)
/* 1144DC 802AAECC 100000EB */  b     .L802AB27C
/* 1144E0 802AAED0 00001025 */   move  $v0, $zero
/* 1144E4 802AAED4 846C0008 */  lh    $t4, 8($v1)
.L802AAED8:
/* 1144E8 802AAED8 C7A20088 */  lwc1  $f2, 0x88($sp)
/* 1144EC 802AAEDC 448C3000 */  mtc1  $t4, $f6
/* 1144F0 802AAEE0 00000000 */  nop   
/* 1144F4 802AAEE4 46803220 */  cvt.s.w $f8, $f6
/* 1144F8 802AAEE8 4608103C */  c.lt.s $f2, $f8
/* 1144FC 802AAEEC 00000000 */  nop   
/* 114500 802AAEF0 45020004 */  bc1fl .L802AAF04
/* 114504 802AAEF4 846D000A */   lh    $t5, 0xa($v1)
/* 114508 802AAEF8 100000E0 */  b     .L802AB27C
/* 11450C 802AAEFC 00001025 */   move  $v0, $zero
/* 114510 802AAF00 846D000A */  lh    $t5, 0xa($v1)
.L802AAF04:
/* 114514 802AAF04 448D5000 */  mtc1  $t5, $f10
/* 114518 802AAF08 00000000 */  nop   
/* 11451C 802AAF0C 46805120 */  cvt.s.w $f4, $f10
/* 114520 802AAF10 460C203C */  c.lt.s $f4, $f12
/* 114524 802AAF14 00000000 */  nop   
/* 114528 802AAF18 45020004 */  bc1fl .L802AAF2C
/* 11452C 802AAF1C 846E000E */   lh    $t6, 0xe($v1)
/* 114530 802AAF20 100000D6 */  b     .L802AB27C
/* 114534 802AAF24 00001025 */   move  $v0, $zero
/* 114538 802AAF28 846E000E */  lh    $t6, 0xe($v1)
.L802AAF2C:
/* 11453C 802AAF2C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 114540 802AAF30 448E3000 */  mtc1  $t6, $f6
/* 114544 802AAF34 00000000 */  nop   
/* 114548 802AAF38 46803220 */  cvt.s.w $f8, $f6
/* 11454C 802AAF3C 4602403C */  c.lt.s $f8, $f2
/* 114550 802AAF40 00000000 */  nop   
/* 114554 802AAF44 45020004 */  bc1fl .L802AAF58
/* 114558 802AAF48 C7A4007C */   lwc1  $f4, 0x7c($sp)
/* 11455C 802AAF4C 100000CB */  b     .L802AB27C
/* 114560 802AAF50 00001025 */   move  $v0, $zero
/* 114564 802AAF54 C7A4007C */  lwc1  $f4, 0x7c($sp)
.L802AAF58:
/* 114568 802AAF58 44813000 */  mtc1  $at, $f6
/* 11456C 802AAF5C E7A0002C */  swc1  $f0, 0x2c($sp)
/* 114570 802AAF60 E7AC0080 */  swc1  $f12, 0x80($sp)
/* 114574 802AAF64 846F0006 */  lh    $t7, 6($v1)
/* 114578 802AAF68 46062202 */  mul.s $f8, $f4, $f6
/* 11457C 802AAF6C C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 114580 802AAF70 448F2000 */  mtc1  $t7, $f4
/* 114584 802AAF74 00000000 */  nop   
/* 114588 802AAF78 468021A0 */  cvt.s.w $f6, $f4
/* 11458C 802AAF7C 46083101 */  sub.s $f4, $f6, $f8
/* 114590 802AAF80 4604503C */  c.lt.s $f10, $f4
/* 114594 802AAF84 00000000 */  nop   
/* 114598 802AAF88 45020004 */  bc1fl .L802AAF9C
/* 11459C 802AAF8C 8C640010 */   lw    $a0, 0x10($v1)
/* 1145A0 802AAF90 100000BA */  b     .L802AB27C
/* 1145A4 802AAF94 00001025 */   move  $v0, $zero
/* 1145A8 802AAF98 8C640010 */  lw    $a0, 0x10($v1)
.L802AAF9C:
/* 1145AC 802AAF9C 8C670018 */  lw    $a3, 0x18($v1)
/* 1145B0 802AAFA0 8C660014 */  lw    $a2, 0x14($v1)
/* 1145B4 802AAFA4 84980000 */  lh    $t8, ($a0)
/* 1145B8 802AAFA8 84990004 */  lh    $t9, 4($a0)
/* 1145BC 802AAFAC 84EA0000 */  lh    $t2, ($a3)
/* 1145C0 802AAFB0 44983000 */  mtc1  $t8, $f6
/* 1145C4 802AAFB4 44994000 */  mtc1  $t9, $f8
/* 1145C8 802AAFB8 84C80000 */  lh    $t0, ($a2)
/* 1145CC 802AAFBC 46803320 */  cvt.s.w $f12, $f6
/* 1145D0 802AAFC0 448A3000 */  mtc1  $t2, $f6
/* 1145D4 802AAFC4 84C90004 */  lh    $t1, 4($a2)
/* 1145D8 802AAFC8 44885000 */  mtc1  $t0, $f10
/* 1145DC 802AAFCC 468043A0 */  cvt.s.w $f14, $f8
/* 1145E0 802AAFD0 44892000 */  mtc1  $t1, $f4
/* 1145E4 802AAFD4 46803220 */  cvt.s.w $f8, $f6
/* 1145E8 802AAFD8 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1145EC 802AAFDC 46805420 */  cvt.s.w $f16, $f10
/* 1145F0 802AAFE0 E7A8006C */  swc1  $f8, 0x6c($sp)
/* 1145F4 802AAFE4 84EB0004 */  lh    $t3, 4($a3)
/* 1145F8 802AAFE8 E7A60008 */  swc1  $f6, 8($sp)
/* 1145FC 802AAFEC 448B5000 */  mtc1  $t3, $f10
/* 114600 802AAFF0 468024A0 */  cvt.s.w $f18, $f4
/* 114604 802AAFF4 46805120 */  cvt.s.w $f4, $f10
/* 114608 802AAFF8 C7AA0080 */  lwc1  $f10, 0x80($sp)
/* 11460C 802AAFFC E7AA0010 */  swc1  $f10, 0x10($sp)
/* 114610 802AB000 46067201 */  sub.s $f8, $f14, $f6
/* 114614 802AB004 E7A40064 */  swc1  $f4, 0x64($sp)
/* 114618 802AB008 460A8101 */  sub.s $f4, $f16, $f10
/* 11461C 802AB00C E7A80028 */  swc1  $f8, 0x28($sp)
/* 114620 802AB010 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 114624 802AB014 460A6181 */  sub.s $f6, $f12, $f10
/* 114628 802AB018 E7A40024 */  swc1  $f4, 0x24($sp)
/* 11462C 802AB01C C7A40024 */  lwc1  $f4, 0x24($sp)
/* 114630 802AB020 E7A60020 */  swc1  $f6, 0x20($sp)
/* 114634 802AB024 C7A60008 */  lwc1  $f6, 8($sp)
/* 114638 802AB028 46044002 */  mul.s $f0, $f8, $f4
/* 11463C 802AB02C E7A80008 */  swc1  $f8, 8($sp)
/* 114640 802AB030 46069201 */  sub.s $f8, $f18, $f6
/* 114644 802AB034 E7A4000C */  swc1  $f4, 0xc($sp)
/* 114648 802AB038 E7A8001C */  swc1  $f8, 0x1c($sp)
/* 11464C 802AB03C C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 114650 802AB040 C7A80020 */  lwc1  $f8, 0x20($sp)
/* 114654 802AB044 46044082 */  mul.s $f2, $f8, $f4
/* 114658 802AB048 46020281 */  sub.s $f10, $f0, $f2
/* 11465C 802AB04C 46001032 */  c.eq.s $f2, $f0
/* 114660 802AB050 E7AA0018 */  swc1  $f10, 0x18($sp)
/* 114664 802AB054 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 114668 802AB058 45000018 */  bc1f  .L802AB0BC
/* 11466C 802AB05C E7AA003C */   swc1  $f10, 0x3c($sp)
/* 114670 802AB060 E7A60014 */  swc1  $f6, 0x14($sp)
/* 114674 802AB064 C7A60010 */  lwc1  $f6, 0x10($sp)
/* 114678 802AB068 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11467C 802AB06C 44809000 */  mtc1  $zero, $f18
/* 114680 802AB070 46065001 */  sub.s $f0, $f10, $f6
/* 114684 802AB074 C7A60014 */  lwc1  $f6, 0x14($sp)
/* 114688 802AB078 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 11468C 802AB07C 46065081 */  sub.s $f2, $f10, $f6
/* 114690 802AB080 46002282 */  mul.s $f10, $f4, $f0
/* 114694 802AB084 C7A6000C */  lwc1  $f6, 0xc($sp)
/* 114698 802AB088 46023102 */  mul.s $f4, $f6, $f2
/* 11469C 802AB08C 46045181 */  sub.s $f6, $f10, $f4
/* 1146A0 802AB090 46081282 */  mul.s $f10, $f2, $f8
/* 1146A4 802AB094 C7A40008 */  lwc1  $f4, 8($sp)
/* 1146A8 802AB098 46040202 */  mul.s $f8, $f0, $f4
/* 1146AC 802AB09C 46085101 */  sub.s $f4, $f10, $f8
/* 1146B0 802AB0A0 46043282 */  mul.s $f10, $f6, $f4
/* 1146B4 802AB0A4 4612503C */  c.lt.s $f10, $f18
/* 1146B8 802AB0A8 00000000 */  nop   
/* 1146BC 802AB0AC 45000039 */  bc1f  .L802AB194
/* 1146C0 802AB0B0 00000000 */   nop   
/* 1146C4 802AB0B4 10000037 */  b     .L802AB194
/* 1146C8 802AB0B8 00001025 */   move  $v0, $zero
.L802AB0BC:
/* 1146CC 802AB0BC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 1146D0 802AB0C0 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1146D4 802AB0C4 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 1146D8 802AB0C8 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 1146DC 802AB0CC 46064081 */  sub.s $f2, $f8, $f6
/* 1146E0 802AB0D0 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 1146E4 802AB0D4 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 1146E8 802AB0D8 46085001 */  sub.s $f0, $f10, $f8
/* 1146EC 802AB0DC 46022382 */  mul.s $f14, $f4, $f2
/* 1146F0 802AB0E0 C7A40020 */  lwc1  $f4, 0x20($sp)
/* 1146F4 802AB0E4 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 1146F8 802AB0E8 46003302 */  mul.s $f12, $f6, $f0
/* 1146FC 802AB0EC 460C7032 */  c.eq.s $f14, $f12
/* 114700 802AB0F0 00000000 */  nop   
/* 114704 802AB0F4 4502000E */  bc1fl .L802AB130
/* 114708 802AB0F8 460E6401 */   sub.s $f16, $f12, $f14
/* 11470C 802AB0FC 46041282 */  mul.s $f10, $f2, $f4
/* 114710 802AB100 44809000 */  mtc1  $zero, $f18
/* 114714 802AB104 46080182 */  mul.s $f6, $f0, $f8
/* 114718 802AB108 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 11471C 802AB10C 46065101 */  sub.s $f4, $f10, $f6
/* 114720 802AB110 46044282 */  mul.s $f10, $f8, $f4
/* 114724 802AB114 4612503C */  c.lt.s $f10, $f18
/* 114728 802AB118 00000000 */  nop   
/* 11472C 802AB11C 4500001D */  bc1f  .L802AB194
/* 114730 802AB120 00000000 */   nop   
/* 114734 802AB124 1000001B */  b     .L802AB194
/* 114738 802AB128 00001025 */   move  $v0, $zero
/* 11473C 802AB12C 460E6401 */  sub.s $f16, $f12, $f14
.L802AB130:
/* 114740 802AB130 C7A60018 */  lwc1  $f6, 0x18($sp)
/* 114744 802AB134 44809000 */  mtc1  $zero, $f18
/* 114748 802AB138 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 11474C 802AB13C 46103202 */  mul.s $f8, $f6, $f16
/* 114750 802AB140 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 114754 802AB144 4612403C */  c.lt.s $f8, $f18
/* 114758 802AB148 00000000 */  nop   
/* 11475C 802AB14C 45000003 */  bc1f  .L802AB15C
/* 114760 802AB150 00000000 */   nop   
/* 114764 802AB154 1000000F */  b     .L802AB194
/* 114768 802AB158 00001025 */   move  $v0, $zero
.L802AB15C:
/* 11476C 802AB15C 46040382 */  mul.s $f14, $f0, $f4
/* 114770 802AB160 00000000 */  nop   
/* 114774 802AB164 460A1302 */  mul.s $f12, $f2, $f10
/* 114778 802AB168 460C7032 */  c.eq.s $f14, $f12
/* 11477C 802AB16C 00000000 */  nop   
/* 114780 802AB170 45010008 */  bc1t  .L802AB194
/* 114784 802AB174 00000000 */   nop   
/* 114788 802AB178 460E6181 */  sub.s $f6, $f12, $f14
/* 11478C 802AB17C 46068202 */  mul.s $f8, $f16, $f6
/* 114790 802AB180 4612403C */  c.lt.s $f8, $f18
/* 114794 802AB184 00000000 */  nop   
/* 114798 802AB188 45000002 */  bc1f  .L802AB194
/* 11479C 802AB18C 00000000 */   nop   
/* 1147A0 802AB190 00001025 */  move  $v0, $zero
.L802AB194:
/* 1147A4 802AB194 14400003 */  bnez  $v0, .L802AB1A4
/* 1147A8 802AB198 C7AA0080 */   lwc1  $f10, 0x80($sp)
/* 1147AC 802AB19C 10000037 */  b     .L802AB27C
/* 1147B0 802AB1A0 00001025 */   move  $v0, $zero
.L802AB1A4:
/* 1147B4 802AB1A4 C464001C */  lwc1  $f4, 0x1c($v1)
/* 1147B8 802AB1A8 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 1147BC 802AB1AC 3C01C180 */  li    $at, 0xC1800000 # -16.000000
/* 1147C0 802AB1B0 460A2182 */  mul.s $f6, $f4, $f10
/* 1147C4 802AB1B4 C7A40084 */  lwc1  $f4, 0x84($sp)
/* 1147C8 802AB1B8 46044282 */  mul.s $f10, $f8, $f4
/* 1147CC 802AB1BC C4640024 */  lwc1  $f4, 0x24($v1)
/* 1147D0 802AB1C0 460A3200 */  add.s $f8, $f6, $f10
/* 1147D4 802AB1C4 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 1147D8 802AB1C8 46062282 */  mul.s $f10, $f4, $f6
/* 1147DC 802AB1CC C4660028 */  lwc1  $f6, 0x28($v1)
/* 1147E0 802AB1D0 460A4100 */  add.s $f4, $f8, $f10
/* 1147E4 802AB1D4 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 1147E8 802AB1D8 46062200 */  add.s $f8, $f4, $f6
/* 1147EC 802AB1DC 460A4001 */  sub.s $f0, $f8, $f10
/* 1147F0 802AB1E0 4600903C */  c.lt.s $f18, $f0
/* 1147F4 802AB1E4 00000000 */  nop   
/* 1147F8 802AB1E8 45020013 */  bc1fl .L802AB238
/* 1147FC 802AB1EC 44812000 */   mtc1  $at, $f4
/* 114800 802AB1F0 C6040014 */  lwc1  $f4, 0x14($s0)
/* 114804 802AB1F4 240C0001 */  li    $t4, 1
/* 114808 802AB1F8 4604003C */  c.lt.s $f0, $f4
/* 11480C 802AB1FC 00000000 */  nop   
/* 114810 802AB200 4500000A */  bc1f  .L802AB22C
/* 114814 802AB204 00000000 */   nop   
/* 114818 802AB208 A60C0004 */  sh    $t4, 4($s0)
/* 11481C 802AB20C A605000A */  sh    $a1, 0xa($s0)
/* 114820 802AB210 E6000014 */  swc1  $f0, 0x14($s0)
/* 114824 802AB214 C466001C */  lwc1  $f6, 0x1c($v1)
/* 114828 802AB218 E6060030 */  swc1  $f6, 0x30($s0)
/* 11482C 802AB21C C4680020 */  lwc1  $f8, 0x20($v1)
/* 114830 802AB220 E6080034 */  swc1  $f8, 0x34($s0)
/* 114834 802AB224 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 114838 802AB228 E60A0038 */  swc1  $f10, 0x38($s0)
.L802AB22C:
/* 11483C 802AB22C 10000013 */  b     .L802AB27C
/* 114840 802AB230 00001025 */   move  $v0, $zero
/* 114844 802AB234 44812000 */  mtc1  $at, $f4
.L802AB238:
/* 114848 802AB238 240D0001 */  li    $t5, 1
/* 11484C 802AB23C 00001025 */  move  $v0, $zero
/* 114850 802AB240 4600203C */  c.lt.s $f4, $f0
/* 114854 802AB244 00000000 */  nop   
/* 114858 802AB248 4500000C */  bc1f  .L802AB27C
/* 11485C 802AB24C 00000000 */   nop   
/* 114860 802AB250 A60D0004 */  sh    $t5, 4($s0)
/* 114864 802AB254 A605000A */  sh    $a1, 0xa($s0)
/* 114868 802AB258 E6000014 */  swc1  $f0, 0x14($s0)
/* 11486C 802AB25C C466001C */  lwc1  $f6, 0x1c($v1)
/* 114870 802AB260 24020001 */  li    $v0, 1
/* 114874 802AB264 E6060030 */  swc1  $f6, 0x30($s0)
/* 114878 802AB268 C4680020 */  lwc1  $f8, 0x20($v1)
/* 11487C 802AB26C E6080034 */  swc1  $f8, 0x34($s0)
/* 114880 802AB270 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 114884 802AB274 10000001 */  b     .L802AB27C
/* 114888 802AB278 E60A0038 */   swc1  $f10, 0x38($s0)
.L802AB27C:
/* 11488C 802AB27C 8FB00004 */  lw    $s0, 4($sp)
/* 114890 802AB280 03E00008 */  jr    $ra
/* 114894 802AB284 27BD0078 */   addiu $sp, $sp, 0x78
