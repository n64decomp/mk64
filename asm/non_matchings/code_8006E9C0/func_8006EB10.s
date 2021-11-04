glabel func_8006EB10
/* 06F710 8006EB10 3C038019 */  lui   $v1, %hi(D_8018C1B0) # $v1, 0x8019
/* 06F714 8006EB14 3C028019 */  lui   $v0, %hi(D_8018C3B0) # $v0, 0x8019
/* 06F718 8006EB18 2442C3B0 */  addiu $v0, %lo(D_8018C3B0) # addiu $v0, $v0, -0x3c50
/* 06F71C 8006EB1C 2463C1B0 */  addiu $v1, %lo(D_8018C1B0) # addiu $v1, $v1, -0x3e50
/* 06F720 8006EB20 2404FFFF */  li    $a0, -1
.L8006EB24:
/* 06F724 8006EB24 24630004 */  addiu $v1, $v1, 4
/* 06F728 8006EB28 0062082B */  sltu  $at, $v1, $v0
/* 06F72C 8006EB2C 1420FFFD */  bnez  $at, .L8006EB24
/* 06F730 8006EB30 AC64FFFC */   sw    $a0, -4($v1)
/* 06F734 8006EB34 3C038019 */  lui   $v1, %hi(D_8018C3F0) # $v1, 0x8019
/* 06F738 8006EB38 3C028019 */  lui   $v0, %hi(D_8018C5F0) # $v0, 0x8019
/* 06F73C 8006EB3C 2442C5F0 */  addiu $v0, %lo(D_8018C5F0) # addiu $v0, $v0, -0x3a10
/* 06F740 8006EB40 2463C3F0 */  addiu $v1, %lo(D_8018C3F0) # addiu $v1, $v1, -0x3c10
.L8006EB44:
/* 06F744 8006EB44 24630004 */  addiu $v1, $v1, 4
/* 06F748 8006EB48 0062082B */  sltu  $at, $v1, $v0
/* 06F74C 8006EB4C 1420FFFD */  bnez  $at, .L8006EB44
/* 06F750 8006EB50 AC64FFFC */   sw    $a0, -4($v1)
/* 06F754 8006EB54 3C038019 */  lui   $v1, %hi(D_8018C630) # $v1, 0x8019
/* 06F758 8006EB58 3C028019 */  lui   $v0, %hi(D_8018C830) # $v0, 0x8019
/* 06F75C 8006EB5C 2442C830 */  addiu $v0, %lo(D_8018C830) # addiu $v0, $v0, -0x37d0
/* 06F760 8006EB60 2463C630 */  addiu $v1, %lo(D_8018C630) # addiu $v1, $v1, -0x39d0
.L8006EB64:
/* 06F764 8006EB64 24630004 */  addiu $v1, $v1, 4
/* 06F768 8006EB68 0062082B */  sltu  $at, $v1, $v0
/* 06F76C 8006EB6C 1420FFFD */  bnez  $at, .L8006EB64
/* 06F770 8006EB70 AC64FFFC */   sw    $a0, -4($v1)
/* 06F774 8006EB74 3C038019 */  lui   $v1, %hi(D_8018C870) # $v1, 0x8019
/* 06F778 8006EB78 3C028019 */  lui   $v0, %hi(D_8018C970) # $v0, 0x8019
/* 06F77C 8006EB7C 2442C970 */  addiu $v0, %lo(D_8018C970) # addiu $v0, $v0, -0x3690
/* 06F780 8006EB80 2463C870 */  addiu $v1, %lo(D_8018C870) # addiu $v1, $v1, -0x3790
.L8006EB84:
/* 06F784 8006EB84 24630004 */  addiu $v1, $v1, 4
/* 06F788 8006EB88 0062082B */  sltu  $at, $v1, $v0
/* 06F78C 8006EB8C 1420FFFD */  bnez  $at, .L8006EB84
/* 06F790 8006EB90 AC64FFFC */   sw    $a0, -4($v1)
/* 06F794 8006EB94 3C038019 */  lui   $v1, %hi(D_8018C970) # $v1, 0x8019
/* 06F798 8006EB98 3C028019 */  lui   $v0, %hi(D_8018CA70) # $v0, 0x8019
/* 06F79C 8006EB9C 2442CA70 */  addiu $v0, %lo(D_8018CA70) # addiu $v0, $v0, -0x3590
/* 06F7A0 8006EBA0 2463C970 */  addiu $v1, %lo(D_8018C970) # addiu $v1, $v1, -0x3690
.L8006EBA4:
/* 06F7A4 8006EBA4 24630010 */  addiu $v1, $v1, 0x10
/* 06F7A8 8006EBA8 AC64FFF0 */  sw    $a0, -0x10($v1)
/* 06F7AC 8006EBAC AC64FFF4 */  sw    $a0, -0xc($v1)
/* 06F7B0 8006EBB0 AC64FFF8 */  sw    $a0, -8($v1)
/* 06F7B4 8006EBB4 1462FFFB */  bne   $v1, $v0, .L8006EBA4
/* 06F7B8 8006EBB8 AC64FFFC */   sw    $a0, -4($v1)
/* 06F7BC 8006EBBC 3C028019 */  lui   $v0, %hi(D_8018CFA8) # $v0, 0x8019
/* 06F7C0 8006EBC0 2442CFA8 */  addiu $v0, %lo(D_8018CFA8) # addiu $v0, $v0, -0x3058
/* 06F7C4 8006EBC4 A4400000 */  sh    $zero, ($v0)
/* 06F7C8 8006EBC8 844E0000 */  lh    $t6, ($v0)
/* 06F7CC 8006EBCC 3C038019 */  lui   $v1, %hi(D_8018CF90) # $v1, 0x8019
/* 06F7D0 8006EBD0 2463CF90 */  addiu $v1, %lo(D_8018CF90) # addiu $v1, $v1, -0x3070
/* 06F7D4 8006EBD4 A46E0000 */  sh    $t6, ($v1)
/* 06F7D8 8006EBD8 846F0000 */  lh    $t7, ($v1)
/* 06F7DC 8006EBDC 3C048019 */  lui   $a0, %hi(D_8018CF78) # $a0, 0x8019
/* 06F7E0 8006EBE0 2484CF78 */  addiu $a0, %lo(D_8018CF78) # addiu $a0, $a0, -0x3088
/* 06F7E4 8006EBE4 A48F0000 */  sh    $t7, ($a0)
/* 06F7E8 8006EBE8 84980000 */  lh    $t8, ($a0)
/* 06F7EC 8006EBEC 3C058019 */  lui   $a1, %hi(D_8018CF60) # $a1, 0x8019
/* 06F7F0 8006EBF0 24A5CF60 */  addiu $a1, %lo(D_8018CF60) # addiu $a1, $a1, -0x30a0
/* 06F7F4 8006EBF4 A4B80000 */  sh    $t8, ($a1)
/* 06F7F8 8006EBF8 84B90000 */  lh    $t9, ($a1)
/* 06F7FC 8006EBFC 3C068019 */  lui   $a2, %hi(D_8018CF48) # $a2, 0x8019
/* 06F800 8006EC00 24C6CF48 */  addiu $a2, %lo(D_8018CF48) # addiu $a2, $a2, -0x30b8
/* 06F804 8006EC04 A4D90000 */  sh    $t9, ($a2)
/* 06F808 8006EC08 84CE0000 */  lh    $t6, ($a2)
/* 06F80C 8006EC0C 3C078019 */  lui   $a3, %hi(D_8018CF20) # $a3, 0x8019
/* 06F810 8006EC10 24E7CF20 */  addiu $a3, %lo(D_8018CF20) # addiu $a3, $a3, -0x30e0
/* 06F814 8006EC14 A4EE0000 */  sh    $t6, ($a3)
/* 06F818 8006EC18 84EF0000 */  lh    $t7, ($a3)
/* 06F81C 8006EC1C 3C088019 */  lui   $t0, %hi(D_8018CFE0) # $t0, 0x8019
/* 06F820 8006EC20 3C018019 */  lui   $at, %hi(D_8018CF18) # $at, 0x8019
/* 06F824 8006EC24 2508CFE0 */  addiu $t0, %lo(D_8018CFE0) # addiu $t0, $t0, -0x3020
/* 06F828 8006EC28 A42FCF18 */  sh    $t7, %lo(D_8018CF18)($at)
/* 06F82C 8006EC2C A5000000 */  sh    $zero, ($t0)
/* 06F830 8006EC30 85180000 */  lh    $t8, ($t0)
/* 06F834 8006EC34 3C098019 */  lui   $t1, %hi(D_8018CFD8) # $t1, 0x8019
/* 06F838 8006EC38 2529CFD8 */  addiu $t1, %lo(D_8018CFD8) # addiu $t1, $t1, -0x3028
/* 06F83C 8006EC3C A5380000 */  sh    $t8, ($t1)
/* 06F840 8006EC40 85390000 */  lh    $t9, ($t1)
/* 06F844 8006EC44 3C0A8019 */  lui   $t2, %hi(D_8018CFD0) # $t2, 0x8019
/* 06F848 8006EC48 254ACFD0 */  addiu $t2, %lo(D_8018CFD0) # addiu $t2, $t2, -0x3030
/* 06F84C 8006EC4C A5590000 */  sh    $t9, ($t2)
/* 06F850 8006EC50 854E0000 */  lh    $t6, ($t2)
/* 06F854 8006EC54 3C0B8019 */  lui   $t3, %hi(D_8018CFC8) # $t3, 0x8019
/* 06F858 8006EC58 256BCFC8 */  addiu $t3, %lo(D_8018CFC8) # addiu $t3, $t3, -0x3038
/* 06F85C 8006EC5C A56E0000 */  sh    $t6, ($t3)
/* 06F860 8006EC60 856F0000 */  lh    $t7, ($t3)
/* 06F864 8006EC64 3C0C8019 */  lui   $t4, %hi(D_8018CFC0) # $t4, 0x8019
/* 06F868 8006EC68 258CCFC0 */  addiu $t4, %lo(D_8018CFC0) # addiu $t4, $t4, -0x3040
/* 06F86C 8006EC6C A58F0000 */  sh    $t7, ($t4)
/* 06F870 8006EC70 85980000 */  lh    $t8, ($t4)
/* 06F874 8006EC74 3C0D8019 */  lui   $t5, %hi(D_8018CFB8) # $t5, 0x8019
/* 06F878 8006EC78 25ADCFB8 */  addiu $t5, %lo(D_8018CFB8) # addiu $t5, $t5, -0x3048
/* 06F87C 8006EC7C A5B80000 */  sh    $t8, ($t5)
/* 06F880 8006EC80 85B90000 */  lh    $t9, ($t5)
/* 06F884 8006EC84 3C018019 */  lui   $at, %hi(D_8018CFB0) # $at, 0x8019
/* 06F888 8006EC88 3C0E8019 */  lui   $t6, %hi(D_8018D098) # $t6, 0x8019
/* 06F88C 8006EC8C A439CFB0 */  sh    $t9, %lo(D_8018CFB0)($at)
/* 06F890 8006EC90 3C018019 */  lui   $at, %hi(D_8018D018) # $at, 0x8019
/* 06F894 8006EC94 A420D018 */  sh    $zero, %lo(D_8018D018)($at)
/* 06F898 8006EC98 3C018019 */  lui   $at, %hi(D_8018D010) # $at, 0x8019
/* 06F89C 8006EC9C A420D010 */  sh    $zero, %lo(D_8018D010)($at)
/* 06F8A0 8006ECA0 3C018019 */  lui   $at, %hi(D_8018D008) # $at, 0x8019
/* 06F8A4 8006ECA4 A420D008 */  sh    $zero, %lo(D_8018D008)($at)
/* 06F8A8 8006ECA8 3C018019 */  lui   $at, %hi(D_8018D000) # $at, 0x8019
/* 06F8AC 8006ECAC A420D000 */  sh    $zero, %lo(D_8018D000)($at)
/* 06F8B0 8006ECB0 3C018019 */  lui   $at, %hi(D_8018CFF8) # $at, 0x8019
/* 06F8B4 8006ECB4 A420CFF8 */  sh    $zero, %lo(D_8018CFF8)($at)
/* 06F8B8 8006ECB8 3C018019 */  lui   $at, %hi(D_8018CFF0) # $at, 0x8019
/* 06F8BC 8006ECBC A420CFF0 */  sh    $zero, %lo(D_8018CFF0)($at)
/* 06F8C0 8006ECC0 3C018019 */  lui   $at, %hi(D_8018CFE8) # $at, 0x8019
/* 06F8C4 8006ECC4 A420CFE8 */  sh    $zero, %lo(D_8018CFE8)($at)
/* 06F8C8 8006ECC8 3C018019 */  lui   $at, %hi(D_8018D110) # $at, 0x8019
/* 06F8CC 8006ECCC A420D110 */  sh    $zero, %lo(D_8018D110)($at)
/* 06F8D0 8006ECD0 3C018019 */  lui   $at, %hi(D_8018D0E8) # $at, 0x8019
/* 06F8D4 8006ECD4 A420D0E8 */  sh    $zero, %lo(D_8018D0E8)($at)
/* 06F8D8 8006ECD8 3C018019 */  lui   $at, %hi(D_8018D0C0) # $at, 0x8019
/* 06F8DC 8006ECDC A420D0C0 */  sh    $zero, %lo(D_8018D0C0)($at)
/* 06F8E0 8006ECE0 3C018019 */  lui   $at, %hi(D_8018D098) # $at, 0x8019
/* 06F8E4 8006ECE4 A420D098 */  sh    $zero, %lo(D_8018D098)($at)
/* 06F8E8 8006ECE8 85CED098 */  lh    $t6, %lo(D_8018D098)($t6)
/* 06F8EC 8006ECEC 3C018019 */  lui   $at, %hi(D_8018D070) # $at, 0x8019
/* 06F8F0 8006ECF0 3C0F8019 */  lui   $t7, %hi(D_8018D070) # $t7, 0x8019
/* 06F8F4 8006ECF4 A42ED070 */  sh    $t6, %lo(D_8018D070)($at)
/* 06F8F8 8006ECF8 85EFD070 */  lh    $t7, %lo(D_8018D070)($t7)
/* 06F8FC 8006ECFC 3C018019 */  lui   $at, %hi(D_8018D048) # $at, 0x8019
/* 06F900 8006ED00 3C188019 */  lui   $t8, %hi(D_8018D048) # $t8, 0x8019
/* 06F904 8006ED04 A42FD048 */  sh    $t7, %lo(D_8018D048)($at)
/* 06F908 8006ED08 8718D048 */  lh    $t8, %lo(D_8018D048)($t8)
/* 06F90C 8006ED0C 3C018019 */  lui   $at, %hi(D_8018D020) # $at, 0x8019
/* 06F910 8006ED10 3C198018 */  lui   $t9, %hi(D_80183E7C) # $t9, 0x8018
/* 06F914 8006ED14 A438D020 */  sh    $t8, %lo(D_8018D020)($at)
/* 06F918 8006ED18 3C018018 */  lui   $at, %hi(D_80183E7C) # $at, 0x8018
/* 06F91C 8006ED1C AC203E7C */  sw    $zero, %lo(D_80183E7C)($at)
/* 06F920 8006ED20 8F393E7C */  lw    $t9, %lo(D_80183E7C)($t9)
/* 06F924 8006ED24 3C018018 */  lui   $at, %hi(D_80183E6C) # $at, 0x8018
/* 06F928 8006ED28 3C0E8018 */  lui   $t6, %hi(D_80183E6C) # $t6, 0x8018
/* 06F92C 8006ED2C AC393E6C */  sw    $t9, %lo(D_80183E6C)($at)
/* 06F930 8006ED30 8DCE3E6C */  lw    $t6, %lo(D_80183E6C)($t6)
/* 06F934 8006ED34 3C018018 */  lui   $at, %hi(D_80183E5C) # $at, 0x8018
/* 06F938 8006ED38 3C0F8018 */  lui   $t7, %hi(D_80183E5C) # $t7, 0x8018
/* 06F93C 8006ED3C AC2E3E5C */  sw    $t6, %lo(D_80183E5C)($at)
/* 06F940 8006ED40 8DEF3E5C */  lw    $t7, %lo(D_80183E5C)($t7)
/* 06F944 8006ED44 3C018018 */  lui   $at, %hi(D_80183E4C) # $at, 0x8018
/* 06F948 8006ED48 3C188018 */  lui   $t8, %hi(D_80183E4C) # $t8, 0x8018
/* 06F94C 8006ED4C AC2F3E4C */  sw    $t7, %lo(D_80183E4C)($at)
/* 06F950 8006ED50 8F183E4C */  lw    $t8, %lo(D_80183E4C)($t8)
/* 06F954 8006ED54 3C018018 */  lui   $at, %hi(D_80183E38) # 0x8018
/* 06F958 8006ED58 03E00008 */  jr    $ra
/* 06F95C 8006ED5C AC383E38 */   sw    $t8, %lo(D_80183E38)($at) # 0x3e38($at)
