glabel func_80022CA8
/* 0238A8 80022CA8 AFA50004 */  sw    $a1, 4($sp)
/* 0238AC 80022CAC AFA60008 */  sw    $a2, 8($sp)
/* 0238B0 80022CB0 AFA7000C */  sw    $a3, 0xc($sp)
/* 0238B4 80022CB4 84820DA4 */  lh    $v0, 0xda4($a0)
/* 0238B8 80022CB8 3C01800F */  lui   $at, %hi(D_800ED6A8)
/* 0238BC 80022CBC D428D6A8 */  ldc1  $f8, %lo(D_800ED6A8)($at)
/* 0238C0 80022CC0 44822000 */  mtc1  $v0, $f4
/* 0238C4 80022CC4 3C014032 */  li    $at, 0x40320000 # 2.781250
/* 0238C8 80022CC8 44818800 */  mtc1  $at, $f17
/* 0238CC 80022CCC 468021A1 */  cvt.d.w $f6, $f4
/* 0238D0 80022CD0 44808000 */  mtc1  $zero, $f16
/* 0238D4 80022CD4 00057600 */  sll   $t6, $a1, 0x18
/* 0238D8 80022CD8 000E7E03 */  sra   $t7, $t6, 0x18
/* 0238DC 80022CDC 3C0B800E */  lui   $t3, %hi(D_800DDBB4) # $t3, 0x800e
/* 0238E0 80022CE0 46283282 */  mul.d $f10, $f6, $f8
/* 0238E4 80022CE4 256BDBB4 */  addiu $t3, %lo(D_800DDBB4) # addiu $t3, $t3, -0x244c
/* 0238E8 80022CE8 000F5080 */  sll   $t2, $t7, 2
/* 0238EC 80022CEC 014B1821 */  addu  $v1, $t2, $t3
/* 0238F0 80022CF0 8C6D0000 */  lw    $t5, ($v1)
/* 0238F4 80022CF4 0007C600 */  sll   $t8, $a3, 0x18
/* 0238F8 80022CF8 0018CE03 */  sra   $t9, $t8, 0x18
/* 0238FC 80022CFC 00193100 */  sll   $a2, $t9, 4
/* 023900 80022D00 462A8481 */  sub.d $f18, $f16, $f10
/* 023904 80022D04 01A67021 */  addu  $t6, $t5, $a2
/* 023908 80022D08 240F0009 */  li    $t7, 9
/* 02390C 80022D0C 01E24823 */  subu  $t1, $t7, $v0
/* 023910 80022D10 4620910D */  trunc.w.d $f4, $f18
/* 023914 80022D14 44082000 */  mfc1  $t0, $f4
/* 023918 80022D18 00000000 */  nop   
/* 02391C 80022D1C A5C80002 */  sh    $t0, 2($t6)
/* 023920 80022D20 8C780000 */  lw    $t8, ($v1)
/* 023924 80022D24 0306C821 */  addu  $t9, $t8, $a2
/* 023928 80022D28 A7290012 */  sh    $t1, 0x12($t9)
/* 02392C 80022D2C 8C6A0000 */  lw    $t2, ($v1)
/* 023930 80022D30 01465821 */  addu  $t3, $t2, $a2
/* 023934 80022D34 A5690022 */  sh    $t1, 0x22($t3)
/* 023938 80022D38 8C6C0000 */  lw    $t4, ($v1)
/* 02393C 80022D3C 01866821 */  addu  $t5, $t4, $a2
/* 023940 80022D40 A5A80032 */  sh    $t0, 0x32($t5)
/* 023944 80022D44 8C6E0000 */  lw    $t6, ($v1)
/* 023948 80022D48 01C67821 */  addu  $t7, $t6, $a2
/* 02394C 80022D4C A5E90042 */  sh    $t1, 0x42($t7)
/* 023950 80022D50 8C780000 */  lw    $t8, ($v1)
/* 023954 80022D54 0306C821 */  addu  $t9, $t8, $a2
/* 023958 80022D58 03E00008 */  jr    $ra
/* 02395C 80022D5C A7290072 */   sh    $t1, 0x72($t9)
