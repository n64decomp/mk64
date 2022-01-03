glabel func_8006FA94
/* 070694 8006FA94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 070698 8006FA98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07069C 8006FA9C 0C01BE33 */  jal   func_8006F8CC
/* 0706A0 8006FAA0 00000000 */   nop
/* 0706A4 8006FAA4 0C01BC02 */  jal   func_8006F008
/* 0706A8 8006FAA8 00000000 */   nop
/* 0706AC 8006FAAC 24040000 */  li    $a0, 0
/* 0706B0 8006FAB0 0C0338C4 */  jal   osSetTime
/* 0706B4 8006FAB4 24050000 */   li    $a1, 0
/* 0706B8 8006FAB8 3C018019 */  lui   $at, %hi(D_8018D170) # $at, 0x8019
/* 0706BC 8006FABC AC20D170 */  sw    $zero, %lo(D_8018D170)($at)
/* 0706C0 8006FAC0 3C018019 */  lui   $at, %hi(D_8018D190) # $at, 0x8019
/* 0706C4 8006FAC4 AC20D190 */  sw    $zero, %lo(D_8018D190)($at)
/* 0706C8 8006FAC8 3C018019 */  lui   $at, %hi(D_8018D188) # $at, 0x8019
/* 0706CC 8006FACC 3C048019 */  lui   $a0, %hi(D_8018D178) # $a0, 0x8019
/* 0706D0 8006FAD0 AC20D188 */  sw    $zero, %lo(D_8018D188)($at)
/* 0706D4 8006FAD4 2484D178 */  addiu $a0, %lo(D_8018D178) # addiu $a0, $a0, -0x2e88
/* 0706D8 8006FAD8 AC800000 */  sw    $zero, ($a0)
/* 0706DC 8006FADC 3C018019 */  lui   $at, %hi(D_8018D1CC) # $at, 0x8019
/* 0706E0 8006FAE0 AC20D1CC */  sw    $zero, %lo(D_8018D1CC)($at)
/* 0706E4 8006FAE4 3C018016 */  lui   $at, %hi(D_801657E2) # $at, 0x8016
/* 0706E8 8006FAE8 A02057E2 */  sb    $zero, %lo(D_801657E2)($at)
/* 0706EC 8006FAEC 3C018016 */  lui   $at, %hi(D_80165730) # $at, 0x8016
/* 0706F0 8006FAF0 A4205730 */  sh    $zero, %lo(D_80165730)($at)
/* 0706F4 8006FAF4 3C058016 */  lui   $a1, %hi(D_801657E5) # $a1, 0x8016
/* 0706F8 8006FAF8 3C018016 */  lui   $at, %hi(D_801658FE) # $at, 0x8016
/* 0706FC 8006FAFC 24A557E5 */  addiu $a1, %lo(D_801657E5) # addiu $a1, $a1, 0x57e5
/* 070700 8006FB00 A02058FE */  sb    $zero, %lo(D_801658FE)($at)
/* 070704 8006FB04 A0A00000 */  sb    $zero, ($a1)
/* 070708 8006FB08 80AE0000 */  lb    $t6, ($a1)
/* 07070C 8006FB0C 3C068016 */  lui   $a2, %hi(D_801657E3) # $a2, 0x8016
/* 070710 8006FB10 24C657E3 */  addiu $a2, %lo(D_801657E3) # addiu $a2, $a2, 0x57e3
/* 070714 8006FB14 A0CE0000 */  sb    $t6, ($a2)
/* 070718 8006FB18 80CF0000 */  lb    $t7, ($a2)
/* 07071C 8006FB1C 3C078016 */  lui   $a3, %hi(D_801658D6) # $a3, 0x8016
/* 070720 8006FB20 3C018016 */  lui   $at, %hi(D_801657E1) # $at, 0x8016
/* 070724 8006FB24 24E758D6 */  addiu $a3, %lo(D_801658D6) # addiu $a3, $a3, 0x58d6
/* 070728 8006FB28 A02F57E1 */  sb    $t7, %lo(D_801657E1)($at)
/* 07072C 8006FB2C A0E00000 */  sb    $zero, ($a3)
/* 070730 8006FB30 80F80000 */  lb    $t8, ($a3)
/* 070734 8006FB34 3C088016 */  lui   $t0, %hi(D_801658E4) # $t0, 0x8016
/* 070738 8006FB38 250858E4 */  addiu $t0, %lo(D_801658E4) # addiu $t0, $t0, 0x58e4
/* 07073C 8006FB3C A1180000 */  sb    $t8, ($t0)
/* 070740 8006FB40 81190000 */  lb    $t9, ($t0)
/* 070744 8006FB44 3C098016 */  lui   $t1, %hi(D_801658F4) # $t1, 0x8016
/* 070748 8006FB48 252958F4 */  addiu $t1, %lo(D_801658F4) # addiu $t1, $t1, 0x58f4
/* 07074C 8006FB4C A1390000 */  sb    $t9, ($t1)
/* 070750 8006FB50 812E0000 */  lb    $t6, ($t1)
/* 070754 8006FB54 3C0A8016 */  lui   $t2, %hi(D_801658EC) # $t2, 0x8016
/* 070758 8006FB58 254A58EC */  addiu $t2, %lo(D_801658EC) # addiu $t2, $t2, 0x58ec
/* 07075C 8006FB5C A14E0000 */  sb    $t6, ($t2)
/* 070760 8006FB60 814F0000 */  lb    $t7, ($t2)
/* 070764 8006FB64 3C0B8016 */  lui   $t3, %hi(D_801658DC) # $t3, 0x8016
/* 070768 8006FB68 256B58DC */  addiu $t3, %lo(D_801658DC) # addiu $t3, $t3, 0x58dc
/* 07076C 8006FB6C A16F0000 */  sb    $t7, ($t3)
/* 070770 8006FB70 81780000 */  lb    $t8, ($t3)
/* 070774 8006FB74 3C0C8016 */  lui   $t4, %hi(D_801658CE) # $t4, 0x8016
/* 070778 8006FB78 258C58CE */  addiu $t4, %lo(D_801658CE) # addiu $t4, $t4, 0x58ce
/* 07077C 8006FB7C A1980000 */  sb    $t8, ($t4)
/* 070780 8006FB80 81990000 */  lb    $t9, ($t4)
/* 070784 8006FB84 3C038016 */  lui   $v1, %hi(D_80165658) # $v1, 0x8016
/* 070788 8006FB88 3C0D8016 */  lui   $t5, %hi(D_801658C6) # $t5, 0x8016
/* 07078C 8006FB8C 25AD58C6 */  addiu $t5, %lo(D_801658C6) # addiu $t5, $t5, 0x58c6
/* 070790 8006FB90 24635658 */  addiu $v1, %lo(D_80165658) # addiu $v1, $v1, 0x5658
/* 070794 8006FB94 A1B90000 */  sb    $t9, ($t5)
/* 070798 8006FB98 81AE0000 */  lb    $t6, ($t5)
/* 07079C 8006FB9C AC600008 */  sw    $zero, 8($v1)
/* 0707A0 8006FBA0 AC600004 */  sw    $zero, 4($v1)
/* 0707A4 8006FBA4 AC600000 */  sw    $zero, ($v1)
/* 0707A8 8006FBA8 3C1F8019 */  lui   $ra, %hi(D_8018EDF3) # $ra, 0x8019
/* 0707AC 8006FBAC 83FFEDF3 */  lb    $ra, %lo(D_8018EDF3)($ra)
/* 0707B0 8006FBB0 3C018016 */  lui   $at, %hi(D_801658BC) # $at, 0x8016
/* 0707B4 8006FBB4 A02E58BC */  sb    $t6, %lo(D_801658BC)($at)
/* 0707B8 8006FBB8 24010001 */  li    $at, 1
/* 0707BC 8006FBBC 13E1000C */  beq   $ra, $at, .L8006FBF0
/* 0707C0 8006FBC0 03E01025 */   move  $v0, $ra
/* 0707C4 8006FBC4 24030002 */  li    $v1, 2
/* 0707C8 8006FBC8 1043001E */  beq   $v0, $v1, .L8006FC44
/* 0707CC 8006FBCC 3C0F800E */   lui   $t7, %hi(gScreenModeSelection) # 0x800e
/* 0707D0 8006FBD0 24010003 */  li    $at, 3
/* 0707D4 8006FBD4 1041005A */  beq   $v0, $at, .L8006FD40
/* 0707D8 8006FBD8 3C0E800E */   lui   $t6, %hi(gModeSelection) # 0x800e
/* 0707DC 8006FBDC 24010004 */  li    $at, 4
/* 0707E0 8006FBE0 10410072 */  beq   $v0, $at, .L8006FDAC
/* 0707E4 8006FBE4 3C0E800E */   lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 0707E8 8006FBE8 10000087 */  b     .L8006FE08
/* 0707EC 8006FBEC 240C0008 */   li    $t4, 8
.L8006FBF0:
/* 0707F0 8006FBF0 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 0707F4 8006FBF4 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 0707F8 8006FBF8 2403000A */  li    $v1, 10
/* 0707FC 8006FBFC 240E0001 */  li    $t6, 1
/* 070800 8006FC00 15E0000A */  bnez  $t7, .L8006FC2C
/* 070804 8006FC04 3C018019 */   lui   $at, %hi(D_8018D114) # 0x8019
/* 070808 8006FC08 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 07080C 8006FC0C AC20D114 */  sw    $zero, %lo(D_8018D114)($at)
/* 070810 8006FC10 24180096 */  li    $t8, 150
/* 070814 8006FC14 AC980000 */  sw    $t8, ($a0)
/* 070818 8006FC18 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 07081C 8006FC1C 241900F0 */  li    $t9, 240
/* 070820 8006FC20 AC39D180 */  sw    $t9, %lo(D_8018D180)($at)
/* 070824 8006FC24 10000078 */  b     .L8006FE08
/* 070828 8006FC28 240C0008 */   li    $t4, 8
.L8006FC2C:
/* 07082C 8006FC2C AC2ED114 */  sw    $t6, %lo(D_8018D114)($at)
/* 070830 8006FC30 AC830000 */  sw    $v1, ($a0)
/* 070834 8006FC34 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 070838 8006FC38 AC20D180 */  sw    $zero, %lo(D_8018D180)($at)
/* 07083C 8006FC3C 10000072 */  b     .L8006FE08
/* 070840 8006FC40 240C0008 */   li    $t4, 8
.L8006FC44:
/* 070844 8006FC44 8DEFC530 */  lw    $t7, %lo(gScreenModeSelection)($t7) # -0x3ad0($t7)
/* 070848 8006FC48 24010001 */  li    $at, 1
/* 07084C 8006FC4C 3C02800E */  lui   $v0, %hi(gModeSelection) # 0x800e
/* 070850 8006FC50 15E10029 */  bne   $t7, $at, .L8006FCF8
/* 070854 8006FC54 00000000 */   nop
/* 070858 8006FC58 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 07085C 8006FC5C 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 070860 8006FC60 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 070864 8006FC64 24180096 */  li    $t8, 150
/* 070868 8006FC68 1440000A */  bnez  $v0, .L8006FC94
/* 07086C 8006FC6C 241900F0 */   li    $t9, 240
/* 070870 8006FC70 AC23D114 */  sw    $v1, %lo(D_8018D114)($at)
/* 070874 8006FC74 AC980000 */  sw    $t8, ($a0)
/* 070878 8006FC78 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 07087C 8006FC7C AC39D180 */  sw    $t9, %lo(D_8018D180)($at)
/* 070880 8006FC80 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 070884 8006FC84 240E003C */  li    $t6, 60
/* 070888 8006FC88 AC2ED2AC */  sw    $t6, %lo(D_8018D2AC)($at)
/* 07088C 8006FC8C 1000005E */  b     .L8006FE08
/* 070890 8006FC90 240C0008 */   li    $t4, 8
.L8006FC94:
/* 070894 8006FC94 1462000D */  bne   $v1, $v0, .L8006FCCC
/* 070898 8006FC98 24190004 */   li    $t9, 4
/* 07089C 8006FC9C 240F0003 */  li    $t7, 3
/* 0708A0 8006FCA0 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 0708A4 8006FCA4 AC2FD114 */  sw    $t7, %lo(D_8018D114)($at)
/* 0708A8 8006FCA8 2402001E */  li    $v0, 30
/* 0708AC 8006FCAC AC820000 */  sw    $v0, ($a0)
/* 0708B0 8006FCB0 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 0708B4 8006FCB4 AC22D180 */  sw    $v0, %lo(D_8018D180)($at)
/* 0708B8 8006FCB8 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 0708BC 8006FCBC 2418003C */  li    $t8, 60
/* 0708C0 8006FCC0 AC38D2AC */  sw    $t8, %lo(D_8018D2AC)($at)
/* 0708C4 8006FCC4 10000050 */  b     .L8006FE08
/* 0708C8 8006FCC8 240C0008 */   li    $t4, 8
.L8006FCCC:
/* 0708CC 8006FCCC 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 0708D0 8006FCD0 AC39D114 */  sw    $t9, %lo(D_8018D114)($at)
/* 0708D4 8006FCD4 24020028 */  li    $v0, 40
/* 0708D8 8006FCD8 AC820000 */  sw    $v0, ($a0)
/* 0708DC 8006FCDC 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 0708E0 8006FCE0 AC22D180 */  sw    $v0, %lo(D_8018D180)($at)
/* 0708E4 8006FCE4 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 0708E8 8006FCE8 240E003C */  li    $t6, 60
/* 0708EC 8006FCEC AC2ED2AC */  sw    $t6, %lo(D_8018D2AC)($at)
/* 0708F0 8006FCF0 10000045 */  b     .L8006FE08
/* 0708F4 8006FCF4 240C0008 */   li    $t4, 8
.L8006FCF8:
/* 0708F8 8006FCF8 8C42C53C */  lw    $v0, %lo(gModeSelection) ($v0) # -0x3ac4($v0)
/* 0708FC 8006FCFC 240F0005 */  li    $t7, 5
/* 070900 8006FD00 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 070904 8006FD04 14400003 */  bnez  $v0, .L8006FD14
/* 070908 8006FD08 240C0008 */   li    $t4, 8
/* 07090C 8006FD0C 1000003E */  b     .L8006FE08
/* 070910 8006FD10 AC2FD114 */   sw    $t7, %lo(D_8018D114)($at)
.L8006FD14:
/* 070914 8006FD14 14620006 */  bne   $v1, $v0, .L8006FD30
/* 070918 8006FD18 24190007 */   li    $t9, 7
/* 07091C 8006FD1C 24180006 */  li    $t8, 6
/* 070920 8006FD20 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 070924 8006FD24 AC38D114 */  sw    $t8, %lo(D_8018D114)($at)
/* 070928 8006FD28 10000037 */  b     .L8006FE08
/* 07092C 8006FD2C 240C0008 */   li    $t4, 8
.L8006FD30:
/* 070930 8006FD30 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 070934 8006FD34 AC39D114 */  sw    $t9, %lo(D_8018D114)($at)
/* 070938 8006FD38 10000033 */  b     .L8006FE08
/* 07093C 8006FD3C 240C0008 */   li    $t4, 8
.L8006FD40:
/* 070940 8006FD40 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 070944 8006FD44 3C018019 */  lui   $at, %hi(D_8018D180) # 0x8019
/* 070948 8006FD48 240F0064 */  li    $t7, 100
/* 07094C 8006FD4C 146E000D */  bne   $v1, $t6, .L8006FD84
/* 070950 8006FD50 24180096 */   li    $t8, 150
/* 070954 8006FD54 240C0008 */  li    $t4, 8
/* 070958 8006FD58 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 07095C 8006FD5C AC2CD114 */  sw    $t4, %lo(D_8018D114)($at)
/* 070960 8006FD60 240F0064 */  li    $t7, 100
/* 070964 8006FD64 AC8F0000 */  sw    $t7, ($a0)
/* 070968 8006FD68 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 07096C 8006FD6C 24180096 */  li    $t8, 150
/* 070970 8006FD70 AC38D180 */  sw    $t8, %lo(D_8018D180)($at)
/* 070974 8006FD74 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 070978 8006FD78 2419003C */  li    $t9, 60
/* 07097C 8006FD7C 10000022 */  b     .L8006FE08
/* 070980 8006FD80 AC39D2AC */   sw    $t9, %lo(D_8018D2AC)($at)
.L8006FD84:
/* 070984 8006FD84 240E0009 */  li    $t6, 9
/* 070988 8006FD88 AC2ED114 */  sw    $t6, %lo(D_8018D114)($at)
/* 07098C 8006FD8C AC8F0000 */  sw    $t7, ($a0)
/* 070990 8006FD90 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 070994 8006FD94 AC38D180 */  sw    $t8, %lo(D_8018D180)($at)
/* 070998 8006FD98 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 07099C 8006FD9C 2419003C */  li    $t9, 60
/* 0709A0 8006FDA0 AC39D2AC */  sw    $t9, %lo(D_8018D2AC)($at)
/* 0709A4 8006FDA4 10000018 */  b     .L8006FE08
/* 0709A8 8006FDA8 240C0008 */   li    $t4, 8
.L8006FDAC:
/* 0709AC 8006FDAC 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6) # -0x3ac4($t6)
/* 0709B0 8006FDB0 2402001E */  li    $v0, 30
/* 0709B4 8006FDB4 240F000B */  li    $t7, 11
/* 0709B8 8006FDB8 146E000B */  bne   $v1, $t6, .L8006FDE8
/* 0709BC 8006FDBC 240C0008 */   li    $t4, 8
/* 0709C0 8006FDC0 2403000A */  li    $v1, 10
/* 0709C4 8006FDC4 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 0709C8 8006FDC8 AC23D114 */  sw    $v1, %lo(D_8018D114)($at)
/* 0709CC 8006FDCC 2402001E */  li    $v0, 30
/* 0709D0 8006FDD0 AC820000 */  sw    $v0, ($a0)
/* 0709D4 8006FDD4 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 0709D8 8006FDD8 AC22D180 */  sw    $v0, %lo(D_8018D180)($at)
/* 0709DC 8006FDDC 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 0709E0 8006FDE0 10000009 */  b     .L8006FE08
/* 0709E4 8006FDE4 AC23D2AC */   sw    $v1, %lo(D_8018D2AC)($at)
.L8006FDE8:
/* 0709E8 8006FDE8 3C018019 */  lui   $at, %hi(D_8018D114) # $at, 0x8019
/* 0709EC 8006FDEC AC2FD114 */  sw    $t7, %lo(D_8018D114)($at)
/* 0709F0 8006FDF0 AC820000 */  sw    $v0, ($a0)
/* 0709F4 8006FDF4 3C018019 */  lui   $at, %hi(D_8018D180) # $at, 0x8019
/* 0709F8 8006FDF8 AC22D180 */  sw    $v0, %lo(D_8018D180)($at)
/* 0709FC 8006FDFC 2403000A */  li    $v1, 10
/* 070A00 8006FE00 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 070A04 8006FE04 AC23D2AC */  sw    $v1, %lo(D_8018D2AC)($at)
.L8006FE08:
/* 070A08 8006FE08 3C18800E */  lui   $t8, %hi(gEnableDebugMode) # $t8, 0x800e
/* 070A0C 8006FE0C 9718C520 */  lhu   $t8, %lo(gEnableDebugMode)($t8)
/* 070A10 8006FE10 3C0B8019 */  lui   $t3, %hi(D_8018D2C8) # $t3, 0x8019
/* 070A14 8006FE14 256BD2C8 */  addiu $t3, %lo(D_8018D2C8) # addiu $t3, $t3, -0x2d38
/* 070A18 8006FE18 17000005 */  bnez  $t8, .L8006FE30
/* 070A1C 8006FE1C 2409FFFF */   li    $t1, -1
/* 070A20 8006FE20 3C018016 */  lui   $at, %hi(D_8016576A) # $at, 0x8016
/* 070A24 8006FE24 A020576A */  sb    $zero, %lo(D_8016576A)($at)
/* 070A28 8006FE28 3C018016 */  lui   $at, %hi(D_8016579C) # $at, 0x8016
/* 070A2C 8006FE2C A020579C */  sb    $zero, %lo(D_8016579C)($at)
.L8006FE30:
/* 070A30 8006FE30 1BE00015 */  blez  $ra, .L8006FE88
/* 070A34 8006FE34 00002025 */   move  $a0, $zero
/* 070A38 8006FE38 3C198019 */  lui   $t9, %hi(D_8018CFB4) # 0x8019
/* 070A3C 8006FE3C 2724CFB4 */  addiu $a0, $t9, %lo(D_8018CFB4) # -0x304c
/* 070A40 8006FE40 3C038019 */  lui   $v1, %hi(D_8018CFBC) # $v1, 0x8019
/* 070A44 8006FE44 3C058019 */  lui   $a1, %hi(D_8018CFAC) # $a1, 0x8019
/* 070A48 8006FE48 3C068019 */  lui   $a2, %hi(D_8018CFC4) # $a2, 0x8019
/* 070A4C 8006FE4C 24C6CFC4 */  addiu $a2, %lo(D_8018CFC4) # addiu $a2, $a2, -0x303c
/* 070A50 8006FE50 24A5CFAC */  addiu $a1, %lo(D_8018CFAC) # addiu $a1, $a1, -0x3054
/* 070A54 8006FE54 2463CFBC */  addiu $v1, %lo(D_8018CFBC) # addiu $v1, $v1, -0x3044
/* 070A58 8006FE58 03E43821 */  addu  $a3, $ra, $a0
.L8006FE5C:
/* 070A5C 8006FE5C 24840001 */  addiu $a0, $a0, 1
/* 070A60 8006FE60 0087082B */  sltu  $at, $a0, $a3
/* 070A64 8006FE64 24630001 */  addiu $v1, $v1, 1
/* 070A68 8006FE68 24A50001 */  addiu $a1, $a1, 1
/* 070A6C 8006FE6C 24C60001 */  addiu $a2, $a2, 1
/* 070A70 8006FE70 A060FFFF */  sb    $zero, -1($v1)
/* 070A74 8006FE74 A0A0FFFF */  sb    $zero, -1($a1)
/* 070A78 8006FE78 A0C0FFFF */  sb    $zero, -1($a2)
/* 070A7C 8006FE7C 1420FFF7 */  bnez  $at, .L8006FE5C
/* 070A80 8006FE80 A080FFFF */   sb    $zero, -1($a0)
/* 070A84 8006FE84 00002025 */  move  $a0, $zero
.L8006FE88:
/* 070A88 8006FE88 240E0001 */  li    $t6, 1
/* 070A8C 8006FE8C 3C018019 */  lui   $at, %hi(D_8018D204) # $at, 0x8019
/* 070A90 8006FE90 AC2ED204 */  sw    $t6, %lo(D_8018D204)($at)
/* 070A94 8006FE94 3C018019 */  lui   $at, %hi(D_8018D1FC) # $at, 0x8019
/* 070A98 8006FE98 AC20D1FC */  sw    $zero, %lo(D_8018D1FC)($at)
/* 070A9C 8006FE9C 3C018019 */  lui   $at, %hi(D_8018D224) # $at, 0x8019
/* 070AA0 8006FEA0 3C0D8019 */  lui   $t5, %hi(D_8018D1F8) # $t5, 0x8019
/* 070AA4 8006FEA4 AC20D224 */  sw    $zero, %lo(D_8018D224)($at)
/* 070AA8 8006FEA8 25ADD1F8 */  addiu $t5, %lo(D_8018D1F8) # addiu $t5, $t5, -0x2e08
/* 070AAC 8006FEAC ADA00000 */  sw    $zero, ($t5)
/* 070AB0 8006FEB0 3C018019 */  lui   $at, %hi(D_8018D1F0) # $at, 0x8019
/* 070AB4 8006FEB4 AC20D1F0 */  sw    $zero, %lo(D_8018D1F0)($at)
/* 070AB8 8006FEB8 3C018019 */  lui   $at, %hi(D_8018D228) # $at, 0x8019
/* 070ABC 8006FEBC 241800FF */  li    $t8, 255
/* 070AC0 8006FEC0 3C1F8016 */  lui   $ra, %hi(D_80165628) # $ra, 0x8016
/* 070AC4 8006FEC4 A038D228 */  sb    $t8, %lo(D_8018D228)($at)
/* 070AC8 8006FEC8 27FF5628 */  addiu $ra, %lo(D_80165628) # addiu $ra, $ra, 0x5628
/* 070ACC 8006FECC AFE00000 */  sw    $zero, ($ra)
/* 070AD0 8006FED0 3C018016 */  lui   $at, %hi(D_80165618) # $at, 0x8016
/* 070AD4 8006FED4 AC205618 */  sw    $zero, %lo(D_80165618)($at)
/* 070AD8 8006FED8 3C0E8016 */  lui   $t6, %hi(D_80165618) # $t6, 0x8016
/* 070ADC 8006FEDC 8DCE5618 */  lw    $t6, %lo(D_80165618)($t6)
/* 070AE0 8006FEE0 3C018016 */  lui   $at, %hi(D_80165608) # $at, 0x8016
/* 070AE4 8006FEE4 3C0F8016 */  lui   $t7, %hi(D_801657B2) # $t7, 0x8016
/* 070AE8 8006FEE8 AC2E5608 */  sw    $t6, %lo(D_80165608)($at)
/* 070AEC 8006FEEC 3C018016 */  lui   $at, %hi(D_801655F8) # $at, 0x8016
/* 070AF0 8006FEF0 AC2E55F8 */  sw    $t6, %lo(D_801655F8)($at)
/* 070AF4 8006FEF4 3C018016 */  lui   $at, %hi(D_801655E8) # $at, 0x8016
/* 070AF8 8006FEF8 AC2E55E8 */  sw    $t6, %lo(D_801655E8)($at)
/* 070AFC 8006FEFC 3C018016 */  lui   $at, %hi(D_801655D8) # $at, 0x8016
/* 070B00 8006FF00 AC2E55D8 */  sw    $t6, %lo(D_801655D8)($at)
/* 070B04 8006FF04 3C018019 */  lui   $at, %hi(D_8018D160) # $at, 0x8019
/* 070B08 8006FF08 AC20D160 */  sw    $zero, %lo(D_8018D160)($at)
/* 070B0C 8006FF0C 3C018019 */  lui   $at, %hi(D_8018D1DC) # $at, 0x8019
/* 070B10 8006FF10 AC20D1DC */  sw    $zero, %lo(D_8018D1DC)($at)
/* 070B14 8006FF14 3C018019 */  lui   $at, %hi(D_8018D1C4) # $at, 0x8019
/* 070B18 8006FF18 AC20D1C4 */  sw    $zero, %lo(D_8018D1C4)($at)
/* 070B1C 8006FF1C 3C018019 */  lui   $at, %hi(D_8018D1B4) # $at, 0x8019
/* 070B20 8006FF20 AC20D1B4 */  sw    $zero, %lo(D_8018D1B4)($at)
/* 070B24 8006FF24 3C018019 */  lui   $at, %hi(D_8018D1A0) # $at, 0x8019
/* 070B28 8006FF28 AC20D1A0 */  sw    $zero, %lo(D_8018D1A0)($at)
/* 070B2C 8006FF2C 3C018019 */  lui   $at, %hi(D_8018D168) # $at, 0x8019
/* 070B30 8006FF30 AC20D168 */  sw    $zero, %lo(D_8018D168)($at)
/* 070B34 8006FF34 3C018016 */  lui   $at, %hi(D_801656F0) # $at, 0x8016
/* 070B38 8006FF38 A42056F0 */  sh    $zero, %lo(D_801656F0)($at)
/* 070B3C 8006FF3C 3C018016 */  lui   $at, %hi(D_801657B2) # $at, 0x8016
/* 070B40 8006FF40 A02057B2 */  sb    $zero, %lo(D_801657B2)($at)
/* 070B44 8006FF44 81EF57B2 */  lb    $t7, %lo(D_801657B2)($t7)
/* 070B48 8006FF48 3C018016 */  lui   $at, %hi(D_801657D8) # $at, 0x8016
/* 070B4C 8006FF4C 3C188016 */  lui   $t8, %hi(D_801657D8) # $t8, 0x8016
/* 070B50 8006FF50 A02F57D8 */  sb    $t7, %lo(D_801657D8)($at)
/* 070B54 8006FF54 831857D8 */  lb    $t8, %lo(D_801657D8)($t8)
/* 070B58 8006FF58 3C018019 */  lui   $at, %hi(D_8018D214) # $at, 0x8019
/* 070B5C 8006FF5C 3C198019 */  lui   $t9, %hi(D_8018D214) # $t9, 0x8019
/* 070B60 8006FF60 AC38D214 */  sw    $t8, %lo(D_8018D214)($at)
/* 070B64 8006FF64 8F39D214 */  lw    $t9, %lo(D_8018D214)($t9)
/* 070B68 8006FF68 3C018016 */  lui   $at, %hi(D_801657B0) # $at, 0x8016
/* 070B6C 8006FF6C 3C0E8016 */  lui   $t6, %hi(D_801657B0) # $t6, 0x8016
/* 070B70 8006FF70 A03957B0 */  sb    $t9, %lo(D_801657B0)($at)
/* 070B74 8006FF74 81CE57B0 */  lb    $t6, %lo(D_801657B0)($t6)
/* 070B78 8006FF78 3C018016 */  lui   $at, %hi(D_801657AE) # $at, 0x8016
/* 070B7C 8006FF7C 3C0F8019 */  lui   $t7, %hi(D_8018D2F8) # $t7, 0x8019
/* 070B80 8006FF80 A02E57AE */  sb    $t6, %lo(D_801657AE)($at)
/* 070B84 8006FF84 3C018019 */  lui   $at, %hi(D_8018D20C) # $at, 0x8019
/* 070B88 8006FF88 AC20D20C */  sw    $zero, %lo(D_8018D20C)($at)
/* 070B8C 8006FF8C 3C018019 */  lui   $at, %hi(D_8018D2F8) # $at, 0x8019
/* 070B90 8006FF90 A420D2F8 */  sh    $zero, %lo(D_8018D2F8)($at)
/* 070B94 8006FF94 85EFD2F8 */  lh    $t7, %lo(D_8018D2F8)($t7)
/* 070B98 8006FF98 3C018019 */  lui   $at, %hi(D_8018D2F0) # $at, 0x8019
/* 070B9C 8006FF9C 24180003 */  li    $t8, 3
/* 070BA0 8006FFA0 A42FD2F0 */  sh    $t7, %lo(D_8018D2F0)($at)
/* 070BA4 8006FFA4 3C018019 */  lui   $at, %hi(D_8018D320) # $at, 0x8019
/* 070BA8 8006FFA8 AC38D320 */  sw    $t8, %lo(D_8018D320)($at)
/* 070BAC 8006FFAC 3C018019 */  lui   $at, %hi(D_8018D2AC) # $at, 0x8019
/* 070BB0 8006FFB0 AC20D2AC */  sw    $zero, %lo(D_8018D2AC)($at)
/* 070BB4 8006FFB4 3C018019 */  lui   $at, %hi(D_8018D2BC) # $at, 0x8019
/* 070BB8 8006FFB8 AC20D2BC */  sw    $zero, %lo(D_8018D2BC)($at)
/* 070BBC 8006FFBC 3C198019 */  lui   $t9, %hi(D_8018D2BC) # $t9, 0x8019
/* 070BC0 8006FFC0 8F39D2BC */  lw    $t9, %lo(D_8018D2BC)($t9)
/* 070BC4 8006FFC4 3C018019 */  lui   $at, %hi(D_8018D2B4) # $at, 0x8019
/* 070BC8 8006FFC8 3C0E8019 */  lui   $t6, %hi(D_8018D2B4) # $t6, 0x8019
/* 070BCC 8006FFCC AC39D2B4 */  sw    $t9, %lo(D_8018D2B4)($at)
/* 070BD0 8006FFD0 8DCED2B4 */  lw    $t6, %lo(D_8018D2B4)($t6)
/* 070BD4 8006FFD4 3C018019 */  lui   $at, %hi(D_8018D2A4) # $at, 0x8019
/* 070BD8 8006FFD8 3C0F8019 */  lui   $t7, %hi(D_8018D18C) # $t7, 0x8019
/* 070BDC 8006FFDC AC2ED2A4 */  sw    $t6, %lo(D_8018D2A4)($at)
/* 070BE0 8006FFE0 AD600000 */  sw    $zero, ($t3)
/* 070BE4 8006FFE4 AD600004 */  sw    $zero, 4($t3)
/* 070BE8 8006FFE8 AD600008 */  sw    $zero, 8($t3)
/* 070BEC 8006FFEC AD60000C */  sw    $zero, 0xc($t3)
/* 070BF0 8006FFF0 3C018016 */  lui   $at, %hi(D_8016581C) # $at, 0x8016
/* 070BF4 8006FFF4 AC20581C */  sw    $zero, %lo(D_8016581C)($at)
/* 070BF8 8006FFF8 3C018016 */  lui   $at, %hi(D_8016580C) # $at, 0x8016
/* 070BFC 8006FFFC AC20580C */  sw    $zero, %lo(D_8016580C)($at)
/* 070C00 80070000 3C018016 */  lui   $at, %hi(D_80165814) # $at, 0x8016
/* 070C04 80070004 AC205814 */  sw    $zero, %lo(D_80165814)($at)
/* 070C08 80070008 3C018016 */  lui   $at, %hi(D_80165804) # $at, 0x8016
/* 070C0C 8007000C AC205804 */  sw    $zero, %lo(D_80165804)($at)
/* 070C10 80070010 3C018016 */  lui   $at, %hi(D_801657FC) # $at, 0x8016
/* 070C14 80070014 AC2057FC */  sw    $zero, %lo(D_801657FC)($at)
/* 070C18 80070018 3C018019 */  lui   $at, %hi(D_8018D18C) # $at, 0x8019
/* 070C1C 8007001C A429D18C */  sh    $t1, %lo(D_8018D18C)($at)
/* 070C20 80070020 85EFD18C */  lh    $t7, %lo(D_8018D18C)($t7)
/* 070C24 80070024 3C018019 */  lui   $at, %hi(D_8018D184) # $at, 0x8019
/* 070C28 80070028 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 070C2C 8007002C A42FD184 */  sh    $t7, %lo(D_8018D184)($at)
/* 070C30 80070030 3C018019 */  lui   $at, %hi(D_8018D16C) # $at, 0x8019
/* 070C34 80070034 A42FD16C */  sh    $t7, %lo(D_8018D16C)($at)
/* 070C38 80070038 3C018019 */  lui   $at, %hi(D_8018D17C) # $at, 0x8019
/* 070C3C 8007003C A42FD17C */  sh    $t7, %lo(D_8018D17C)($at)
/* 070C40 80070040 3C018019 */  lui   $at, %hi(D_8018D174) # $at, 0x8019
/* 070C44 80070044 A42FD174 */  sh    $t7, %lo(D_8018D174)($at)
/* 070C48 80070048 3C01C200 */  li    $at, 0xC2000000 # -32.000000
/* 070C4C 8007004C 3C058019 */  lui   $a1, %hi(D_8018D050) # $a1, 0x8019
/* 070C50 80070050 3C068019 */  lui   $a2, %hi(D_8018D0F0) # $a2, 0x8019
/* 070C54 80070054 3C038019 */  lui   $v1, %hi(D_8018CE10) # $v1, 0x8019
/* 070C58 80070058 3C078019 */  lui   $a3, %hi(D_8018CF50) # $a3, 0x8019
/* 070C5C 8007005C 3C088019 */  lui   $t0, %hi(D_8018CF28) # $t0, 0x8019
/* 070C60 80070060 44811000 */  mtc1  $at, $f2
/* 070C64 80070064 44800000 */  mtc1  $zero, $f0
/* 070C68 80070068 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 070C6C 8007006C 2508CF28 */  addiu $t0, %lo(D_8018CF28) # addiu $t0, $t0, -0x30d8
/* 070C70 80070070 24E7CF50 */  addiu $a3, %lo(D_8018CF50) # addiu $a3, $a3, -0x30b0
/* 070C74 80070074 2463CE10 */  addiu $v1, %lo(D_8018CE10) # addiu $v1, $v1, -0x31f0
/* 070C78 80070078 24C6D0F0 */  addiu $a2, %lo(D_8018D0F0) # addiu $a2, $a2, -0x2f10
/* 070C7C 8007007C 24A5D050 */  addiu $a1, %lo(D_8018D050) # addiu $a1, $a1, -0x2fb0
.L80070080:
/* 070C80 80070080 E4A20000 */  swc1  $f2, ($a1)
/* 070C84 80070084 E4C20000 */  swc1  $f2, ($a2)
/* 070C88 80070088 E460000C */  swc1  $f0, 0xc($v1)
/* 070C8C 8007008C E4600008 */  swc1  $f0, 8($v1)
/* 070C90 80070090 E4600004 */  swc1  $f0, 4($v1)
/* 070C94 80070094 A4E40000 */  sh    $a0, ($a3)
/* 070C98 80070098 AD020000 */  sw    $v0, ($t0)
/* 070C9C 8007009C A4490040 */  sh    $t1, 0x40($v0)
/* 070CA0 800700A0 24980001 */  addiu $t8, $a0, 1
/* 070CA4 800700A4 24420DD8 */  addiu $v0, $v0, 0xdd8
/* 070CA8 800700A8 AD020004 */  sw    $v0, 4($t0)
/* 070CAC 800700AC A4F80002 */  sh    $t8, 2($a3)
/* 070CB0 800700B0 E4600024 */  swc1  $f0, 0x24($v1)
/* 070CB4 800700B4 E4600028 */  swc1  $f0, 0x28($v1)
/* 070CB8 800700B8 E460002C */  swc1  $f0, 0x2c($v1)
/* 070CBC 800700BC E4C20004 */  swc1  $f2, 4($a2)
/* 070CC0 800700C0 E4A20004 */  swc1  $f2, 4($a1)
/* 070CC4 800700C4 A4490040 */  sh    $t1, 0x40($v0)
/* 070CC8 800700C8 24420DD8 */  addiu $v0, $v0, 0xdd8
/* 070CCC 800700CC 24990002 */  addiu $t9, $a0, 2
/* 070CD0 800700D0 A4F90004 */  sh    $t9, 4($a3)
/* 070CD4 800700D4 AD020008 */  sw    $v0, 8($t0)
/* 070CD8 800700D8 E4600044 */  swc1  $f0, 0x44($v1)
/* 070CDC 800700DC E4600048 */  swc1  $f0, 0x48($v1)
/* 070CE0 800700E0 E460004C */  swc1  $f0, 0x4c($v1)
/* 070CE4 800700E4 E4C20008 */  swc1  $f2, 8($a2)
/* 070CE8 800700E8 E4A20008 */  swc1  $f2, 8($a1)
/* 070CEC 800700EC A4490040 */  sh    $t1, 0x40($v0)
/* 070CF0 800700F0 248E0003 */  addiu $t6, $a0, 3
/* 070CF4 800700F4 24420DD8 */  addiu $v0, $v0, 0xdd8
/* 070CF8 800700F8 AD02000C */  sw    $v0, 0xc($t0)
/* 070CFC 800700FC A4EE0006 */  sh    $t6, 6($a3)
/* 070D00 80070100 24840004 */  addiu $a0, $a0, 4
/* 070D04 80070104 E4600064 */  swc1  $f0, 0x64($v1)
/* 070D08 80070108 E4600068 */  swc1  $f0, 0x68($v1)
/* 070D0C 8007010C E460006C */  swc1  $f0, 0x6c($v1)
/* 070D10 80070110 E4C2000C */  swc1  $f2, 0xc($a2)
/* 070D14 80070114 E4A2000C */  swc1  $f2, 0xc($a1)
/* 070D18 80070118 A4490040 */  sh    $t1, 0x40($v0)
/* 070D1C 8007011C 24420DD8 */  addiu $v0, $v0, 0xdd8
/* 070D20 80070120 24A50010 */  addiu $a1, $a1, 0x10
/* 070D24 80070124 24C60010 */  addiu $a2, $a2, 0x10
/* 070D28 80070128 24630080 */  addiu $v1, $v1, 0x80
/* 070D2C 8007012C 24E70008 */  addiu $a3, $a3, 8
/* 070D30 80070130 148CFFD3 */  bne   $a0, $t4, .L80070080
/* 070D34 80070134 25080010 */   addiu $t0, $t0, 0x10
/* 070D38 80070138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 070D3C 8007013C 27BD0018 */  addiu $sp, $sp, 0x18
/* 070D40 80070140 03E00008 */  jr    $ra
/* 070D44 80070144 00000000 */   nop
