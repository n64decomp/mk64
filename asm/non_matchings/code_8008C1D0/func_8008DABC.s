glabel func_8008DABC
/* 08E6BC 8008DABC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08E6C0 8008DAC0 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08E6C4 8008DAC4 00A07025 */  move  $t6, $a1
/* 08E6C8 8008DAC8 000E2E00 */  sll   $a1, $t6, 0x18
/* 08E6CC 8008DACC AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E6D0 8008DAD0 00057E03 */  sra   $t7, $a1, 0x18
/* 08E6D4 8008DAD4 01E02825 */  move  $a1, $t7
/* 08E6D8 8008DAD8 A3AE001F */  sb    $t6, 0x1f($sp)
/* 08E6DC 8008DADC 0C0230D5 */  jal   func_8008C354
/* 08E6E0 8008DAE0 AFA40018 */   sw    $a0, 0x18($sp)
/* 08E6E4 8008DAE4 8FA60018 */  lw    $a2, 0x18($sp)
/* 08E6E8 8008DAE8 83A7001F */  lb    $a3, 0x1f($sp)
/* 08E6EC 8008DAEC 3C080400 */  lui   $t0, 0x400
/* 08E6F0 8008DAF0 8CD800BC */  lw    $t8, 0xbc($a2)
/* 08E6F4 8008DAF4 24030001 */  li    $v1, 1
/* 08E6F8 8008DAF8 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 08E6FC 8008DAFC 0018C940 */  sll   $t9, $t8, 5
/* 08E700 8008DB00 0720003D */  bltz  $t9, .L8008DBF8
/* 08E704 8008DB04 00074880 */   sll   $t1, $a3, 2
/* 08E708 8008DB08 44812000 */  mtc1  $at, $f4
/* 08E70C 8008DB0C 3C018019 */  lui   $at, %hi(D_8018D990) # 0x8019
/* 08E710 8008DB10 A4C00DB6 */  sh    $zero, 0xdb6($a2)
/* 08E714 8008DB14 A4C00238 */  sh    $zero, 0x238($a2)
/* 08E718 8008DB18 00290821 */  addu  $at, $at, $t1
/* 08E71C 8008DB1C E4C40DC4 */  swc1  $f4, 0xdc4($a2)
/* 08E720 8008DB20 AC20D990 */  sw    $zero, %lo(D_8018D990)($at) # -0x2670($at)
/* 08E724 8008DB24 8CCA00BC */  lw    $t2, 0xbc($a2)
/* 08E728 8008DB28 3C01F7FF */  lui   $at, (0xF7FFFFEF >> 16) # lui $at, 0xf7ff
/* 08E72C 8008DB2C 3421FFEF */  ori   $at, (0xF7FFFFEF & 0xFFFF) # ori $at, $at, 0xffef
/* 08E730 8008DB30 3C0D8016 */  lui   $t5, %hi(D_80165190) # $t5, 0x8016
/* 08E734 8008DB34 25AD5190 */  addiu $t5, %lo(D_80165190) # addiu $t5, $t5, 0x5190
/* 08E738 8008DB38 00076040 */  sll   $t4, $a3, 1
/* 08E73C 8008DB3C 01415824 */  and   $t3, $t2, $at
/* 08E740 8008DB40 ACCB00BC */  sw    $t3, 0xbc($a2)
/* 08E744 8008DB44 018D1021 */  addu  $v0, $t4, $t5
/* 08E748 8008DB48 A4430000 */  sh    $v1, ($v0)
/* 08E74C 8008DB4C A4430010 */  sh    $v1, 0x10($v0)
/* 08E750 8008DB50 A4430020 */  sh    $v1, 0x20($v0)
/* 08E754 8008DB54 A4430030 */  sh    $v1, 0x30($v0)
/* 08E758 8008DB58 8CCE000C */  lw    $t6, 0xc($a2)
/* 08E75C 8008DB5C 3C014282 */  li    $at, 0x42820000 # 65.000000
/* 08E760 8008DB60 44803000 */  mtc1  $zero, $f6
/* 08E764 8008DB64 44814000 */  mtc1  $at, $f8
/* 08E768 8008DB68 31CF0100 */  andi  $t7, $t6, 0x100
/* 08E76C 8008DB6C A4C30D98 */  sh    $v1, 0xd98($a2)
/* 08E770 8008DB70 E4C60D9C */  swc1  $f6, 0xd9c($a2)
/* 08E774 8008DB74 11E00004 */  beqz  $t7, .L8008DB88
/* 08E778 8008DB78 E4C80DA0 */   swc1  $f8, 0xda0($a2)
/* 08E77C 8008DB7C 94D80046 */  lhu   $t8, 0x46($a2)
/* 08E780 8008DB80 37190080 */  ori   $t9, $t8, 0x80
/* 08E784 8008DB84 A4D90046 */  sh    $t9, 0x46($a2)
.L8008DB88:
/* 08E788 8008DB88 94C20000 */  lhu   $v0, ($a2)
/* 08E78C 8008DB8C 30494000 */  andi  $t1, $v0, 0x4000
/* 08E790 8008DB90 51200012 */  beql  $t1, $zero, .L8008DBDC
/* 08E794 8008DB94 8CCD00BC */   lw    $t5, 0xbc($a2)
/* 08E798 8008DB98 8CCA00BC */  lw    $t2, 0xbc($a2)
/* 08E79C 8008DB9C 3C012900 */  lui   $at, (0x29008005 >> 16) # lui $at, 0x2900
/* 08E7A0 8008DBA0 34218005 */  ori   $at, (0x29008005 & 0xFFFF) # ori $at, $at, 0x8005
/* 08E7A4 8008DBA4 01485824 */  and   $t3, $t2, $t0
/* 08E7A8 8008DBA8 1560000B */  bnez  $t3, .L8008DBD8
/* 08E7AC 8008DBAC 30E400FF */   andi  $a0, $a3, 0xff
/* 08E7B0 8008DBB0 94C50254 */  lhu   $a1, 0x254($a2)
/* 08E7B4 8008DBB4 A3A7001F */  sb    $a3, 0x1f($sp)
/* 08E7B8 8008DBB8 AFA60018 */  sw    $a2, 0x18($sp)
/* 08E7BC 8008DBBC 00056100 */  sll   $t4, $a1, 4
/* 08E7C0 8008DBC0 0C03243D */  jal   func_800C90F4
/* 08E7C4 8008DBC4 01812821 */   addu  $a1, $t4, $at
/* 08E7C8 8008DBC8 8FA60018 */  lw    $a2, 0x18($sp)
/* 08E7CC 8008DBCC 83A7001F */  lb    $a3, 0x1f($sp)
/* 08E7D0 8008DBD0 3C080400 */  lui   $t0, 0x400
/* 08E7D4 8008DBD4 94C20000 */  lhu   $v0, ($a2)
.L8008DBD8:
/* 08E7D8 8008DBD8 8CCD00BC */  lw    $t5, 0xbc($a2)
.L8008DBDC:
/* 08E7DC 8008DBDC 304F1000 */  andi  $t7, $v0, 0x1000
/* 08E7E0 8008DBE0 00E02025 */  move  $a0, $a3
/* 08E7E4 8008DBE4 01A87025 */  or    $t6, $t5, $t0
/* 08E7E8 8008DBE8 11E00003 */  beqz  $t7, .L8008DBF8
/* 08E7EC 8008DBEC ACCE00BC */   sw    $t6, 0xbc($a2)
/* 08E7F0 8008DBF0 0C00263F */  jal   func_800098FC
/* 08E7F4 8008DBF4 00C02825 */   move  $a1, $a2
.L8008DBF8:
/* 08E7F8 8008DBF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08E7FC 8008DBFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 08E800 8008DC00 03E00008 */  jr    $ra
/* 08E804 8008DC04 00000000 */   nop   
