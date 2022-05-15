glabel func_802B17F4
/* 11AE04 802B17F4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 11AE08 802B17F8 3C0E802C */  lui   $t6, %hi(D_802B9140) # $t6, 0x802c
/* 11AE0C 802B17FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 11AE10 802B1800 AFA40040 */  sw    $a0, 0x40($sp)
/* 11AE14 802B1804 25CE9140 */  addiu $t6, %lo(D_802B9140) # addiu $t6, $t6, -0x6ec0
/* 11AE18 802B1808 8DC10000 */  lw    $at, ($t6)
/* 11AE1C 802B180C 27A60034 */  addiu $a2, $sp, 0x34
/* 11AE20 802B1810 3C08802C */  lui   $t0, %hi(D_802B914C) # $t0, 0x802c
/* 11AE24 802B1814 ACC10000 */  sw    $at, ($a2)
/* 11AE28 802B1818 8DD90004 */  lw    $t9, 4($t6)
/* 11AE2C 802B181C 2508914C */  addiu $t0, %lo(D_802B914C) # addiu $t0, $t0, -0x6eb4
/* 11AE30 802B1820 27A5002C */  addiu $a1, $sp, 0x2c
/* 11AE34 802B1824 ACD90004 */  sw    $t9, 4($a2)
/* 11AE38 802B1828 8DC10008 */  lw    $at, 8($t6)
/* 11AE3C 802B182C 3C0C802C */  lui   $t4, %hi(D_802B9154) # $t4, 0x802c
/* 11AE40 802B1830 258C9154 */  addiu $t4, %lo(D_802B9154) # addiu $t4, $t4, -0x6eac
/* 11AE44 802B1834 ACC10008 */  sw    $at, 8($a2)
/* 11AE48 802B1838 8D010000 */  lw    $at, ($t0)
/* 11AE4C 802B183C 27A40020 */  addiu $a0, $sp, 0x20
/* 11AE50 802B1840 2407000E */  li    $a3, 14
/* 11AE54 802B1844 ACA10000 */  sw    $at, ($a1)
/* 11AE58 802B1848 95010004 */  lhu   $at, 4($t0)
/* 11AE5C 802B184C A4A10004 */  sh    $at, 4($a1)
/* 11AE60 802B1850 8D810000 */  lw    $at, ($t4)
/* 11AE64 802B1854 AC810000 */  sw    $at, ($a0)
/* 11AE68 802B1858 8D8F0004 */  lw    $t7, 4($t4)
/* 11AE6C 802B185C AC8F0004 */  sw    $t7, 4($a0)
/* 11AE70 802B1860 8D810008 */  lw    $at, 8($t4)
/* 11AE74 802B1864 0C0A7B22 */  jal   func_8029EC88
/* 11AE78 802B1868 AC810008 */   sw    $at, 8($a0)
/* 11AE7C 802B186C 00022400 */  sll   $a0, $v0, 0x10
/* 11AE80 802B1870 00047403 */  sra   $t6, $a0, 0x10
/* 11AE84 802B1874 01C02025 */  move  $a0, $t6
/* 11AE88 802B1878 04410003 */  bgez  $v0, .L802B1888
/* 11AE8C 802B187C 8FA50040 */   lw    $a1, 0x40($sp)
/* 11AE90 802B1880 10000014 */  b     .L802B18D4
/* 11AE94 802B1884 01C01025 */   move  $v0, $t6
.L802B1888:
/* 11AE98 802B1888 0004C8C0 */  sll   $t9, $a0, 3
/* 11AE9C 802B188C 0324C823 */  subu  $t9, $t9, $a0
/* 11AEA0 802B1890 3C0A8016 */  lui   $t2, %hi(gActorList) # $t2, 0x8016
/* 11AEA4 802B1894 254AF9B8 */  addiu $t2, %lo(gActorList) # addiu $t2, $t2, -0x648
/* 11AEA8 802B1898 0019C900 */  sll   $t9, $t9, 4
/* 11AEAC 802B189C 032A1821 */  addu  $v1, $t9, $t2
/* 11AEB0 802B18A0 A4600006 */  sh    $zero, 6($v1)
/* 11AEB4 802B18A4 3C09800E */  lui   $t1, %hi(gPlayerOne) # $t1, 0x800e
/* 11AEB8 802B18A8 8D29C4DC */  lw    $t1, %lo(gPlayerOne)($t1)
/* 11AEBC 802B18AC 24010DD8 */  li    $at, 3544
/* 11AEC0 802B18B0 00801025 */  move  $v0, $a0
/* 11AEC4 802B18B4 00A94023 */  subu  $t0, $a1, $t1
/* 11AEC8 802B18B8 0101001A */  div   $zero, $t0, $at
/* 11AECC 802B18BC 00005812 */  mflo  $t3
/* 11AED0 802B18C0 A46B0010 */  sh    $t3, 0x10($v1)
/* 11AED4 802B18C4 8CB8000C */  lw    $t8, 0xc($a1)
/* 11AED8 802B18C8 3C010004 */  lui   $at, 4
/* 11AEDC 802B18CC 03016825 */  or    $t5, $t8, $at
/* 11AEE0 802B18D0 ACAD000C */  sw    $t5, 0xc($a1)
.L802B18D4:
/* 11AEE4 802B18D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11AEE8 802B18D8 27BD0040 */  addiu $sp, $sp, 0x40
/* 11AEEC 802B18DC 03E00008 */  jr    $ra
/* 11AEF0 802B18E0 00000000 */   nop
