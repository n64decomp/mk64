glabel func_800178F4
/* 0184F4 800178F4 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 0184F8 800178F8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0184FC 800178FC AFB00020 */  sw    $s0, 0x20($sp)
/* 018500 80017900 AFA500A4 */  sw    $a1, 0xa4($sp)
/* 018504 80017904 AFA600A8 */  sw    $a2, 0xa8($sp)
/* 018508 80017908 AFA700AC */  sw    $a3, 0xac($sp)
/* 01850C 8001790C 848200AE */  lh    $v0, 0xae($a0)
/* 018510 80017910 3C018016 */  lui   $at, %hi(D_80163068)
/* 018514 80017914 00076080 */  sll   $t4, $a3, 2
/* 018518 80017918 0002C080 */  sll   $t8, $v0, 2
/* 01851C 8001791C 00380821 */  addu  $at, $at, $t8
/* 018520 80017920 C4243068 */  lwc1  $f4, %lo(D_80163068)($at)
/* 018524 80017924 3C0F8016 */  lui   $t7, %hi(D_80164688) # $t7, 0x8016
/* 018528 80017928 3C198016 */  lui   $t9, %hi(D_80164648) # $t9, 0x8016
/* 01852C 8001792C 3C0D800E */  lui   $t5, %hi(D_800DC4DC)
/* 018530 80017930 25EF4688 */  addiu $t7, %lo(D_80164688) # addiu $t7, $t7, 0x4688
/* 018534 80017934 27394648 */  addiu $t9, %lo(D_80164648) # addiu $t9, $t9, 0x4648
/* 018538 80017938 3C188016 */  lui   $t8, %hi(D_80164658) # $t8, 0x8016
/* 01853C 8001793C 8DADC4DC */  lw    $t5, %lo(D_800DC4DC)($t5)
/* 018540 80017940 018F2821 */  addu  $a1, $t4, $t7
/* 018544 80017944 27184658 */  addiu $t8, %lo(D_80164658) # addiu $t8, $t8, 0x4658
/* 018548 80017948 01997021 */  addu  $t6, $t4, $t9
/* 01854C 8001794C AFAE003C */  sw    $t6, 0x3c($sp)
/* 018550 80017950 01981821 */  addu  $v1, $t4, $t8
/* 018554 80017954 E4A40000 */  swc1  $f4, ($a1)
/* 018558 80017958 C5D00000 */  lwc1  $f16, ($t6)
/* 01855C 8001795C C4660000 */  lwc1  $f6, ($v1)
/* 018560 80017960 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 018564 80017964 44815000 */  mtc1  $at, $f10
/* 018568 80017968 46103201 */  sub.s $f8, $f6, $f16
/* 01856C 8001796C 3C1F8016 */  lui   $ra, %hi(D_801645B0) # 0x8016
/* 018570 80017970 00025040 */  sll   $t2, $v0, 1
/* 018574 80017974 03EAF821 */  addu  $ra, $ra, $t2
/* 018578 80017978 460A4102 */  mul.s $f4, $f8, $f10
/* 01857C 8001797C 3C018016 */  lui   $at, %hi(D_80163238) # $at, 0x8016
/* 018580 80017980 000258C0 */  sll   $t3, $v0, 3
/* 018584 80017984 01625823 */  subu  $t3, $t3, $v0
/* 018588 80017988 000B5900 */  sll   $t3, $t3, 4
/* 01858C 8001798C 01625823 */  subu  $t3, $t3, $v0
/* 018590 80017990 000B5880 */  sll   $t3, $t3, 2
/* 018594 80017994 46048180 */  add.s $f6, $f16, $f4
/* 018598 80017998 3C0F8016 */  lui   $t7, %hi(D_80164668) # $t7, 0x8016
/* 01859C 8001799C 01625823 */  subu  $t3, $t3, $v0
/* 0185A0 800179A0 000B58C0 */  sll   $t3, $t3, 3
/* 0185A4 800179A4 E5C60000 */  swc1  $f6, ($t6)
/* 0185A8 800179A8 97FF45B0 */  lhu   $ra, %lo(D_801645B0)($ra) # 0x45b0($ra)
/* 0185AC 800179AC 3C0E8016 */  lui   $t6, %hi(D_801645C8) # 0x8016
/* 0185B0 800179B0 AC223238 */  sw    $v0, %lo(D_80163238)($at)
/* 0185B4 800179B4 001FC840 */  sll   $t9, $ra, 1
/* 0185B8 800179B8 01D97021 */  addu  $t6, $t6, $t9
/* 0185BC 800179BC 95CE45C8 */  lhu   $t6, %lo(D_801645C8)($t6) # 0x45c8($t6)
/* 0185C0 800179C0 8FA800AC */  lw    $t0, 0xac($sp)
/* 0185C4 800179C4 25EF4668 */  addiu $t7, %lo(D_80164668) # addiu $t7, $t7, 0x4668
/* 0185C8 800179C8 AFAE004C */  sw    $t6, 0x4c($sp)
/* 0185CC 800179CC 8C860008 */  lw    $a2, 8($a0)
/* 0185D0 800179D0 C48E0004 */  lwc1  $f14, 4($a0)
/* 0185D4 800179D4 C48C0000 */  lwc1  $f12, ($a0)
/* 0185D8 800179D8 0008C040 */  sll   $t8, $t0, 1
/* 0185DC 800179DC 030F4821 */  addu  $t1, $t8, $t7
/* 0185E0 800179E0 01AB6821 */  addu  $t5, $t5, $t3
/* 0185E4 800179E4 AFBF0050 */  sw    $ra, 0x50($sp)
/* 0185E8 800179E8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0185EC 800179EC 00808025 */  move  $s0, $a0
/* 0185F0 800179F0 AFAD0088 */  sw    $t5, 0x88($sp)
/* 0185F4 800179F4 85270000 */  lh    $a3, ($t1)
/* 0185F8 800179F8 AFA90028 */  sw    $t1, 0x28($sp)
/* 0185FC 800179FC 03004025 */  move  $t0, $t8
/* 018600 80017A00 AFB8002C */  sw    $t8, 0x2c($sp)
/* 018604 80017A04 AFAC0044 */  sw    $t4, 0x44($sp)
/* 018608 80017A08 AFAB0030 */  sw    $t3, 0x30($sp)
/* 01860C 80017A0C AFAA0034 */  sw    $t2, 0x34($sp)
/* 018610 80017A10 AFA50040 */  sw    $a1, 0x40($sp)
/* 018614 80017A14 0C0034CF */  jal   func_8000D33C
/* 018618 80017A18 AFA30038 */   sw    $v1, 0x38($sp)
/* 01861C 80017A1C 8FAA0034 */  lw    $t2, 0x34($sp)
/* 018620 80017A20 8FBF0028 */  lw    $ra, 0x28($sp)
/* 018624 80017A24 3C198016 */  lui   $t9, %hi(D_80164438) # 0x8016
/* 018628 80017A28 032AC821 */  addu  $t9, $t9, $t2
/* 01862C 80017A2C A7E20000 */  sh    $v0, ($ra)
/* 018630 80017A30 8FAD004C */  lw    $t5, 0x4c($sp)
/* 018634 80017A34 97394438 */  lhu   $t9, %lo(D_80164438)($t9) # 0x4438($t9)
/* 018638 80017A38 87E90000 */  lh    $t1, ($ra)
/* 01863C 80017A3C 8FA30038 */  lw    $v1, 0x38($sp)
/* 018640 80017A40 272E0003 */  addiu $t6, $t9, 3
/* 018644 80017A44 01CD001A */  div   $zero, $t6, $t5
/* 018648 80017A48 00007810 */  mfhi  $t7
/* 01864C 80017A4C 8FAB0030 */  lw    $t3, 0x30($sp)
/* 018650 80017A50 8FAC0044 */  lw    $t4, 0x44($sp)
/* 018654 80017A54 15A00002 */  bnez  $t5, .L80017A60
/* 018658 80017A58 00000000 */   nop   
/* 01865C 80017A5C 0007000D */  break 7
.L80017A60:
/* 018660 80017A60 2401FFFF */  li    $at, -1
/* 018664 80017A64 15A10004 */  bne   $t5, $at, .L80017A78
/* 018668 80017A68 3C018000 */   lui   $at, 0x8000
/* 01866C 80017A6C 15C10002 */  bne   $t6, $at, .L80017A78
/* 018670 80017A70 00000000 */   nop   
/* 018674 80017A74 0006000D */  break 6
.L80017A78:
/* 018678 80017A78 31E4FFFF */  andi  $a0, $t7, 0xffff
/* 01867C 80017A7C A7AF009C */  sh    $t7, 0x9c($sp)
/* 018680 80017A80 2406000D */  li    $a2, 13
/* 018684 80017A84 24070001 */  li    $a3, 1
/* 018688 80017A88 AFAD0010 */  sw    $t5, 0x10($sp)
/* 01868C 80017A8C 3125FFFF */  andi  $a1, $t1, 0xffff
/* 018690 80017A90 0C001EFE */  jal   func_80007BF8
/* 018694 80017A94 A7A9009E */   sh    $t1, 0x9e($sp)
/* 018698 80017A98 8FA30038 */  lw    $v1, 0x38($sp)
/* 01869C 80017A9C 87A8009C */  lh    $t0, 0x9c($sp)
/* 0186A0 80017AA0 87A9009E */  lh    $t1, 0x9e($sp)
/* 0186A4 80017AA4 8FAB0030 */  lw    $t3, 0x30($sp)
/* 0186A8 80017AA8 1C40000C */  bgtz  $v0, .L80017ADC
/* 0186AC 80017AAC 8FAC0044 */   lw    $t4, 0x44($sp)
/* 0186B0 80017AB0 8FB90040 */  lw    $t9, 0x40($sp)
/* 0186B4 80017AB4 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0186B8 80017AB8 3C068016 */  lui   $a2, %hi(D_80164680) # 0x8016
/* 0186BC 80017ABC 8F250000 */  lw    $a1, ($t9)
/* 0186C0 80017AC0 00CE3021 */  addu  $a2, $a2, $t6
/* 0186C4 80017AC4 84C64680 */  lh    $a2, %lo(D_80164680)($a2) # 0x4680($a2)
/* 0186C8 80017AC8 AFAC0044 */  sw    $t4, 0x44($sp)
/* 0186CC 80017ACC 0C0068D2 */  jal   func_8001A348
/* 0186D0 80017AD0 8FA400AC */   lw    $a0, 0xac($sp)
/* 0186D4 80017AD4 10000036 */  b     .L80017BB0
/* 0186D8 80017AD8 8FAC0044 */   lw    $t4, 0x44($sp)
.L80017ADC:
/* 0186DC 80017ADC 0128082A */  slt   $at, $t1, $t0
/* 0186E0 80017AE0 5020000E */  beql  $at, $zero, .L80017B1C
/* 0186E4 80017AE4 0109082A */   slt   $at, $t0, $t1
/* 0186E8 80017AE8 0109C023 */  subu  $t8, $t0, $t1
/* 0186EC 80017AEC 2B010003 */  slti  $at, $t8, 3
/* 0186F0 80017AF0 10200009 */  beqz  $at, .L80017B18
/* 0186F4 80017AF4 3C01800F */   lui   $at, %hi(gPlayers+0x94)
/* 0186F8 80017AF8 002B0821 */  addu  $at, $at, $t3
/* 0186FC 80017AFC C4286A24 */  lwc1  $f8, %lo(gPlayers+0x94)($at)
/* 018700 80017B00 3C01800F */  lui   $at, %hi(D_800ED288)
/* 018704 80017B04 D424D288 */  ldc1  $f4, %lo(D_800ED288)($at)
/* 018708 80017B08 460042A1 */  cvt.d.s $f10, $f8
/* 01870C 80017B0C 46245180 */  add.d $f6, $f10, $f4
/* 018710 80017B10 46203220 */  cvt.s.d $f8, $f6
/* 018714 80017B14 E4680000 */  swc1  $f8, ($v1)
.L80017B18:
/* 018718 80017B18 0109082A */  slt   $at, $t0, $t1
.L80017B1C:
/* 01871C 80017B1C 5020000E */  beql  $at, $zero, .L80017B58
/* 018720 80017B20 C4640000 */   lwc1  $f4, ($v1)
/* 018724 80017B24 01287823 */  subu  $t7, $t1, $t0
/* 018728 80017B28 29E10003 */  slti  $at, $t7, 3
/* 01872C 80017B2C 10200009 */  beqz  $at, .L80017B54
/* 018730 80017B30 3C01800F */   lui   $at, %hi(gPlayers+0x94)
/* 018734 80017B34 002B0821 */  addu  $at, $at, $t3
/* 018738 80017B38 C42A6A24 */  lwc1  $f10, %lo(gPlayers+0x94)($at)
/* 01873C 80017B3C 3C01800F */  lui   $at, %hi(D_800ED290)
/* 018740 80017B40 D426D290 */  ldc1  $f6, %lo(D_800ED290)($at)
/* 018744 80017B44 46005121 */  cvt.d.s $f4, $f10
/* 018748 80017B48 46262201 */  sub.d $f8, $f4, $f6
/* 01874C 80017B4C 462042A0 */  cvt.s.d $f10, $f8
/* 018750 80017B50 E46A0000 */  swc1  $f10, ($v1)
.L80017B54:
/* 018754 80017B54 C4640000 */  lwc1  $f4, ($v1)
.L80017B58:
/* 018758 80017B58 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 01875C 80017B5C 44813800 */  mtc1  $at, $f7
/* 018760 80017B60 44803000 */  mtc1  $zero, $f6
/* 018764 80017B64 46002021 */  cvt.d.s $f0, $f4
/* 018768 80017B68 44802000 */  mtc1  $zero, $f4
/* 01876C 80017B6C 4620303C */  c.lt.d $f6, $f0
/* 018770 80017B70 44802800 */  mtc1  $zero, $f5
/* 018774 80017B74 45020008 */  bc1fl .L80017B98
/* 018778 80017B78 4624003C */   c.lt.d $f0, $f4
/* 01877C 80017B7C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 018780 80017B80 44814000 */  mtc1  $at, $f8
/* 018784 80017B84 00000000 */  nop   
/* 018788 80017B88 E4680000 */  swc1  $f8, ($v1)
/* 01878C 80017B8C C46A0000 */  lwc1  $f10, ($v1)
/* 018790 80017B90 46005021 */  cvt.d.s $f0, $f10
/* 018794 80017B94 4624003C */  c.lt.d $f0, $f4
.L80017B98:
/* 018798 80017B98 00000000 */  nop   
/* 01879C 80017B9C 45020005 */  bc1fl .L80017BB4
/* 0187A0 80017BA0 8FA7004C */   lw    $a3, 0x4c($sp)
/* 0187A4 80017BA4 44803000 */  mtc1  $zero, $f6
/* 0187A8 80017BA8 00000000 */  nop   
/* 0187AC 80017BAC E4660000 */  swc1  $f6, ($v1)
.L80017BB0:
/* 0187B0 80017BB0 8FA7004C */  lw    $a3, 0x4c($sp)
.L80017BB4:
/* 0187B4 80017BB4 8FB90028 */  lw    $t9, 0x28($sp)
/* 0187B8 80017BB8 87A60052 */  lh    $a2, 0x52($sp)
/* 0187BC 80017BBC 87220000 */  lh    $v0, ($t9)
/* 0187C0 80017BC0 244E0001 */  addiu $t6, $v0, 1
/* 0187C4 80017BC4 01C7001A */  div   $zero, $t6, $a3
/* 0187C8 80017BC8 00001810 */  mfhi  $v1
/* 0187CC 80017BCC 24590002 */  addiu $t9, $v0, 2
/* 0187D0 80017BD0 14E00002 */  bnez  $a3, .L80017BDC
/* 0187D4 80017BD4 00000000 */   nop   
/* 0187D8 80017BD8 0007000D */  break 7
.L80017BDC:
/* 0187DC 80017BDC 2401FFFF */  li    $at, -1
/* 0187E0 80017BE0 14E10004 */  bne   $a3, $at, .L80017BF4
/* 0187E4 80017BE4 3C018000 */   lui   $at, 0x8000
/* 0187E8 80017BE8 15C10002 */  bne   $t6, $at, .L80017BF4
/* 0187EC 80017BEC 00000000 */   nop   
/* 0187F0 80017BF0 0006000D */  break 6
.L80017BF4:
/* 0187F4 80017BF4 0327001A */  div   $zero, $t9, $a3
/* 0187F8 80017BF8 0003C400 */  sll   $t8, $v1, 0x10
/* 0187FC 80017BFC 00187C03 */  sra   $t7, $t8, 0x10
/* 018800 80017C00 8FB80040 */  lw    $t8, 0x40($sp)
/* 018804 80017C04 00007010 */  mfhi  $t6
/* 018808 80017C08 A7AE0060 */  sh    $t6, 0x60($sp)
/* 01880C 80017C0C 8F050000 */  lw    $a1, ($t8)
/* 018810 80017C10 01E01825 */  move  $v1, $t7
/* 018814 80017C14 14E00002 */  bnez  $a3, .L80017C20
/* 018818 80017C18 00000000 */   nop   
/* 01881C 80017C1C 0007000D */  break 7
.L80017C20:
/* 018820 80017C20 2401FFFF */  li    $at, -1
/* 018824 80017C24 14E10004 */  bne   $a3, $at, .L80017C38
/* 018828 80017C28 3C018000 */   li    $at, 0x80000000 # -0.000000
/* 01882C 80017C2C 17210002 */  bne   $t9, $at, .L80017C38
/* 018830 80017C30 00000000 */   nop   
/* 018834 80017C34 0006000D */  break 6
.L80017C38:
/* 018838 80017C38 3064FFFF */  andi  $a0, $v1, 0xffff
/* 01883C 80017C3C A7A30062 */  sh    $v1, 0x62($sp)
/* 018840 80017C40 AFAC0044 */  sw    $t4, 0x44($sp)
/* 018844 80017C44 0C002EF6 */  jal   func_8000BBD8
/* 018848 80017C48 AFA60038 */   sw    $a2, 0x38($sp)
/* 01884C 80017C4C 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 018850 80017C50 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 018854 80017C54 C5080000 */  lwc1  $f8, ($t0)
/* 018858 80017C58 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 01885C 80017C5C 44810800 */  mtc1  $at, $f1
/* 018860 80017C60 44800000 */  mtc1  $zero, $f0
/* 018864 80017C64 C5060008 */  lwc1  $f6, 8($t0)
/* 018868 80017C68 460042A1 */  cvt.d.s $f10, $f8
/* 01886C 80017C6C 8FAF0040 */  lw    $t7, 0x40($sp)
/* 018870 80017C70 46205102 */  mul.d $f4, $f10, $f0
/* 018874 80017C74 46003221 */  cvt.d.s $f8, $f6
/* 018878 80017C78 8DE50000 */  lw    $a1, ($t7)
/* 01887C 80017C7C 8FA60038 */  lw    $a2, 0x38($sp)
/* 018880 80017C80 46204282 */  mul.d $f10, $f8, $f0
/* 018884 80017C84 97A40060 */  lhu   $a0, 0x60($sp)
/* 018888 80017C88 462020A0 */  cvt.s.d $f2, $f4
/* 01888C 80017C8C 462053A0 */  cvt.s.d $f14, $f10
/* 018890 80017C90 E7A20080 */  swc1  $f2, 0x80($sp)
/* 018894 80017C94 0C002EF6 */  jal   func_8000BBD8
/* 018898 80017C98 E7AE0078 */   swc1  $f14, 0x78($sp)
/* 01889C 80017C9C 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 0188A0 80017CA0 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 0188A4 80017CA4 C5060000 */  lwc1  $f6, ($t0)
/* 0188A8 80017CA8 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 0188AC 80017CAC 44810800 */  mtc1  $at, $f1
/* 0188B0 80017CB0 44800000 */  mtc1  $zero, $f0
/* 0188B4 80017CB4 46003221 */  cvt.d.s $f8, $f6
/* 0188B8 80017CB8 C7A20080 */  lwc1  $f2, 0x80($sp)
/* 0188BC 80017CBC 46204282 */  mul.d $f10, $f8, $f0
/* 0188C0 80017CC0 8FB90050 */  lw    $t9, 0x50($sp)
/* 0188C4 80017CC4 46001121 */  cvt.d.s $f4, $f2
/* 0188C8 80017CC8 87B80060 */  lh    $t8, 0x60($sp)
/* 0188CC 80017CCC 3C028016 */  lui   $v0, %hi(D_80164550) # 0x8016
/* 0188D0 80017CD0 00197080 */  sll   $t6, $t9, 2
/* 0188D4 80017CD4 004E1021 */  addu  $v0, $v0, $t6
/* 0188D8 80017CD8 8C424550 */  lw    $v0, %lo(D_80164550)($v0) # 0x4550($v0)
/* 0188DC 80017CDC 462A2180 */  add.d $f6, $f4, $f10
/* 0188E0 80017CE0 C5040008 */  lwc1  $f4, 8($t0)
/* 0188E4 80017CE4 001878C0 */  sll   $t7, $t8, 3
/* 0188E8 80017CE8 87B80062 */  lh    $t8, 0x62($sp)
/* 0188EC 80017CEC 460022A1 */  cvt.d.s $f10, $f4
/* 0188F0 80017CF0 462030A0 */  cvt.s.d $f2, $f6
/* 0188F4 80017CF4 004FC821 */  addu  $t9, $v0, $t7
/* 0188F8 80017CF8 46205182 */  mul.d $f6, $f10, $f0
/* 0188FC 80017CFC 872E0002 */  lh    $t6, 2($t9)
/* 018900 80017D00 001878C0 */  sll   $t7, $t8, 3
/* 018904 80017D04 004FC821 */  addu  $t9, $v0, $t7
/* 018908 80017D08 C7AE0078 */  lwc1  $f14, 0x78($sp)
/* 01890C 80017D0C 87380002 */  lh    $t8, 2($t9)
/* 018910 80017D10 8FAC0044 */  lw    $t4, 0x44($sp)
/* 018914 80017D14 46007221 */  cvt.d.s $f8, $f14
/* 018918 80017D18 01D87821 */  addu  $t7, $t6, $t8
/* 01891C 80017D1C 448F5000 */  mtc1  $t7, $f10
/* 018920 80017D20 46264100 */  add.d $f4, $f8, $f6
/* 018924 80017D24 44803000 */  mtc1  $zero, $f6
/* 018928 80017D28 44813800 */  mtc1  $at, $f7
/* 01892C 80017D2C 46805221 */  cvt.d.w $f8, $f10
/* 018930 80017D30 3C0E8016 */  lui   $t6, %hi(D_80164618) # $t6, 0x8016
/* 018934 80017D34 25CE4618 */  addiu $t6, %lo(D_80164618) # addiu $t6, $t6, 0x4618
/* 018938 80017D38 018E3021 */  addu  $a2, $t4, $t6
/* 01893C 80017D3C 462023A0 */  cvt.s.d $f14, $f4
/* 018940 80017D40 46264102 */  mul.d $f4, $f8, $f6
/* 018944 80017D44 C4C80000 */  lwc1  $f8, ($a2)
/* 018948 80017D48 3C198016 */  lui   $t9, %hi(D_801645F8) # $t9, 0x8016
/* 01894C 80017D4C 273945F8 */  addiu $t9, %lo(D_801645F8) # addiu $t9, $t9, 0x45f8
/* 018950 80017D50 01991821 */  addu  $v1, $t4, $t9
/* 018954 80017D54 C46A0000 */  lwc1  $f10, ($v1)
/* 018958 80017D58 3C188016 */  lui   $t8, %hi(D_80164638) # $t8, 0x8016
/* 01895C 80017D5C 27184638 */  addiu $t8, %lo(D_80164638) # addiu $t8, $t8, 0x4638
/* 018960 80017D60 462024A0 */  cvt.s.d $f18, $f4
/* 018964 80017D64 01983821 */  addu  $a3, $t4, $t8
/* 018968 80017D68 C4E40000 */  lwc1  $f4, ($a3)
/* 01896C 80017D6C 460A1401 */  sub.s $f16, $f2, $f10
/* 018970 80017D70 AFA70034 */  sw    $a3, 0x34($sp)
/* 018974 80017D74 AFA30040 */  sw    $v1, 0x40($sp)
/* 018978 80017D78 46089181 */  sub.s $f6, $f18, $f8
/* 01897C 80017D7C E7B00074 */  swc1  $f16, 0x74($sp)
/* 018980 80017D80 AFA60038 */  sw    $a2, 0x38($sp)
/* 018984 80017D84 46047281 */  sub.s $f10, $f14, $f4
/* 018988 80017D88 E7A60070 */  swc1  $f6, 0x70($sp)
/* 01898C 80017D8C C7A80070 */  lwc1  $f8, 0x70($sp)
/* 018990 80017D90 E7AA006C */  swc1  $f10, 0x6c($sp)
/* 018994 80017D94 46084182 */  mul.s $f6, $f8, $f8
/* 018998 80017D98 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 01899C 80017D9C 46108102 */  mul.s $f4, $f16, $f16
/* 0189A0 80017DA0 46062280 */  add.s $f10, $f4, $f6
/* 0189A4 80017DA4 46084102 */  mul.s $f4, $f8, $f8
/* 0189A8 80017DA8 0C033850 */  jal   sqrtf
/* 0189AC 80017DAC 46045300 */   add.s $f12, $f10, $f4
/* 0189B0 80017DB0 44803800 */  mtc1  $zero, $f7
/* 0189B4 80017DB4 44803000 */  mtc1  $zero, $f6
/* 0189B8 80017DB8 46000221 */  cvt.d.s $f8, $f0
/* 0189BC 80017DBC 8FA30040 */  lw    $v1, 0x40($sp)
/* 0189C0 80017DC0 46283032 */  c.eq.d $f6, $f8
/* 0189C4 80017DC4 8FA60038 */  lw    $a2, 0x38($sp)
/* 0189C8 80017DC8 8FA70034 */  lw    $a3, 0x34($sp)
/* 0189CC 80017DCC 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0189D0 80017DD0 45010012 */  bc1t  .L80017E1C
/* 0189D4 80017DD4 3C014024 */   li    $at, 0x40240000 # 2.562500
/* 0189D8 80017DD8 C5F00000 */  lwc1  $f16, ($t7)
/* 0189DC 80017DDC C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 0189E0 80017DE0 C4680000 */  lwc1  $f8, ($v1)
/* 0189E4 80017DE4 460A8102 */  mul.s $f4, $f16, $f10
/* 0189E8 80017DE8 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 0189EC 80017DEC 46002183 */  div.s $f6, $f4, $f0
/* 0189F0 80017DF0 460A8102 */  mul.s $f4, $f16, $f10
/* 0189F4 80017DF4 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 0189F8 80017DF8 46083080 */  add.s $f2, $f6, $f8
/* 0189FC 80017DFC C4C80000 */  lwc1  $f8, ($a2)
/* 018A00 80017E00 46002183 */  div.s $f6, $f4, $f0
/* 018A04 80017E04 460A8102 */  mul.s $f4, $f16, $f10
/* 018A08 80017E08 46083480 */  add.s $f18, $f6, $f8
/* 018A0C 80017E0C C4E80000 */  lwc1  $f8, ($a3)
/* 018A10 80017E10 46002183 */  div.s $f6, $f4, $f0
/* 018A14 80017E14 10000004 */  b     .L80017E28
/* 018A18 80017E18 46083380 */   add.s $f14, $f6, $f8
.L80017E1C:
/* 018A1C 80017E1C C4620000 */  lwc1  $f2, ($v1)
/* 018A20 80017E20 C4D20000 */  lwc1  $f18, ($a2)
/* 018A24 80017E24 C4EE0000 */  lwc1  $f14, ($a3)
.L80017E28:
/* 018A28 80017E28 44812800 */  mtc1  $at, $f5
/* 018A2C 80017E2C 44802000 */  mtc1  $zero, $f4
/* 018A30 80017E30 460092A1 */  cvt.d.s $f10, $f18
/* 018A34 80017E34 8FA20088 */  lw    $v0, 0x88($sp)
/* 018A38 80017E38 46245180 */  add.d $f6, $f10, $f4
/* 018A3C 80017E3C E6020000 */  swc1  $f2, ($s0)
/* 018A40 80017E40 E60E0008 */  swc1  $f14, 8($s0)
/* 018A44 80017E44 3C014018 */  li    $at, 0x40180000 # 2.375000
/* 018A48 80017E48 46203220 */  cvt.s.d $f8, $f6
/* 018A4C 80017E4C 44814800 */  mtc1  $at, $f9
/* 018A50 80017E50 E6080004 */  swc1  $f8, 4($s0)
/* 018A54 80017E54 E4620000 */  swc1  $f2, ($v1)
/* 018A58 80017E58 E4D20000 */  swc1  $f18, ($a2)
/* 018A5C 80017E5C E4EE0000 */  swc1  $f14, ($a3)
/* 018A60 80017E60 C44A0014 */  lwc1  $f10, 0x14($v0)
/* 018A64 80017E64 44804000 */  mtc1  $zero, $f8
/* 018A68 80017E68 E60A000C */  swc1  $f10, 0xc($s0)
/* 018A6C 80017E6C C4440018 */  lwc1  $f4, 0x18($v0)
/* 018A70 80017E70 460021A1 */  cvt.d.s $f6, $f4
/* 018A74 80017E74 46283280 */  add.d $f10, $f6, $f8
/* 018A78 80017E78 46205120 */  cvt.s.d $f4, $f10
/* 018A7C 80017E7C E6040010 */  swc1  $f4, 0x10($s0)
/* 018A80 80017E80 C446001C */  lwc1  $f6, 0x1c($v0)
/* 018A84 80017E84 E6060014 */  swc1  $f6, 0x14($s0)
/* 018A88 80017E88 8FA50050 */  lw    $a1, 0x50($sp)
/* 018A8C 80017E8C 0C00534C */  jal   func_80014D30
/* 018A90 80017E90 8FA400AC */   lw    $a0, 0xac($sp)
/* 018A94 80017E94 C608000C */  lwc1  $f8, 0xc($s0)
/* 018A98 80017E98 C60A0000 */  lwc1  $f10, ($s0)
/* 018A9C 80017E9C C6040010 */  lwc1  $f4, 0x10($s0)
/* 018AA0 80017EA0 C6060004 */  lwc1  $f6, 4($s0)
/* 018AA4 80017EA4 460A4301 */  sub.s $f12, $f8, $f10
/* 018AA8 80017EA8 46062201 */  sub.s $f8, $f4, $f6
/* 018AAC 80017EAC E7A80090 */  swc1  $f8, 0x90($sp)
/* 018AB0 80017EB0 C6040008 */  lwc1  $f4, 8($s0)
/* 018AB4 80017EB4 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 018AB8 80017EB8 E7AC0094 */  swc1  $f12, 0x94($sp)
/* 018ABC 80017EBC 46045381 */  sub.s $f14, $f10, $f4
/* 018AC0 80017EC0 0C0ADE0C */  jal   func_802B7830
/* 018AC4 80017EC4 E7AE008C */   swc1  $f14, 0x8c($sp)
/* 018AC8 80017EC8 C7A00094 */  lwc1  $f0, 0x94($sp)
/* 018ACC 80017ECC C7AE008C */  lwc1  $f14, 0x8c($sp)
/* 018AD0 80017ED0 A6020026 */  sh    $v0, 0x26($s0)
/* 018AD4 80017ED4 46000182 */  mul.s $f6, $f0, $f0
/* 018AD8 80017ED8 00000000 */  nop   
/* 018ADC 80017EDC 460E7202 */  mul.s $f8, $f14, $f14
/* 018AE0 80017EE0 0C033850 */  jal   sqrtf
/* 018AE4 80017EE4 46083300 */   add.s $f12, $f6, $f8
/* 018AE8 80017EE8 46000306 */  mov.s $f12, $f0
/* 018AEC 80017EEC 0C0ADE0C */  jal   func_802B7830
/* 018AF0 80017EF0 C7AE0090 */   lwc1  $f14, 0x90($sp)
/* 018AF4 80017EF4 A6020024 */  sh    $v0, 0x24($s0)
/* 018AF8 80017EF8 A6000028 */  sh    $zero, 0x28($s0)
/* 018AFC 80017EFC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 018B00 80017F00 8FB00020 */  lw    $s0, 0x20($sp)
/* 018B04 80017F04 27BD00A0 */  addiu $sp, $sp, 0xa0
/* 018B08 80017F08 03E00008 */  jr    $ra
/* 018B0C 80017F0C 00000000 */   nop   
