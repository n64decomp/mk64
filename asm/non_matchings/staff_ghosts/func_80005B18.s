glabel func_80005B18
/* 006718 80005B18 3C04800E */  lui   $a0, %hi(gModeSelection) # $a0, 0x800e
/* 00671C 80005B1C 8C84C53C */  lw    $a0, %lo(gModeSelection)($a0)
/* 006720 80005B20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 006724 80005B24 24030001 */  li    $v1, 1
/* 006728 80005B28 146400CC */  bne   $v1, $a0, .L80005E5C
/* 00672C 80005B2C AFBF0014 */   sw    $ra, 0x14($sp)
/* 006730 80005B30 3C088016 */  lui   $t0, %hi(gLapCountByPlayerId) # $t0, 0x8016
/* 006734 80005B34 25084390 */  addiu $t0, %lo(gLapCountByPlayerId) # addiu $t0, $t0, 0x4390
/* 006738 80005B38 8D020000 */  lw    $v0, ($t0)
/* 00673C 80005B3C 24060003 */  li    $a2, 3
/* 006740 80005B40 3C058016 */  lui   $a1, %hi(D_80162DDC) # $a1, 0x8016
/* 006744 80005B44 14C20072 */  bne   $a2, $v0, .L80005D10
/* 006748 80005B48 24A52DDC */   addiu $a1, %lo(D_80162DDC) # addiu $a1, $a1, 0x2ddc
/* 00674C 80005B4C 8CAE0000 */  lw    $t6, ($a1)
/* 006750 80005B50 3C0F8016 */  lui   $t7, %hi(D_80162DF8) # $t7, 0x8016
/* 006754 80005B54 15C0006E */  bnez  $t6, .L80005D10
/* 006758 80005B58 00000000 */   nop
/* 00675C 80005B5C 8DEF2DF8 */  lw    $t7, %lo(D_80162DF8)($t7)
/* 006760 80005B60 3C078016 */  lui   $a3, %hi(D_80162DD4) # $a3, 0x8016
/* 006764 80005B64 24E72DD4 */  addiu $a3, %lo(D_80162DD4) # addiu $a3, $a3, 0x2dd4
/* 006768 80005B68 106F0069 */  beq   $v1, $t7, .L80005D10
/* 00676C 80005B6C 00000000 */   nop
/* 006770 80005B70 94F80000 */  lhu   $t8, ($a3)
/* 006774 80005B74 3C198016 */  lui   $t9, %hi(D_80162DCC) # $t9, 0x8016
/* 006778 80005B78 54780023 */  bnel  $v1, $t8, .L80005C08
/* 00677C 80005B7C 8D0C0004 */   lw    $t4, 4($t0)
/* 006780 80005B80 8F392DCC */  lw    $t9, %lo(D_80162DCC)($t9)
/* 006784 80005B84 3C018016 */  lui   $at, %hi(D_80162DD0) # $at, 0x8016
/* 006788 80005B88 0C0014A9 */  jal   func_800052A4
/* 00678C 80005B8C AC392DD0 */   sw    $t9, %lo(D_80162DD0)($at)
/* 006790 80005B90 3C058016 */  lui   $a1, %hi(D_80162DDC) # $a1, 0x8016
/* 006794 80005B94 3C078016 */  lui   $a3, %hi(D_80162DD4) # $a3, 0x8016
/* 006798 80005B98 24E72DD4 */  addiu $a3, %lo(D_80162DD4) # addiu $a3, $a3, 0x2dd4
/* 00679C 80005B9C 24A52DDC */  addiu $a1, %lo(D_80162DDC) # addiu $a1, $a1, 0x2ddc
/* 0067A0 80005BA0 24030001 */  li    $v1, 1
/* 0067A4 80005BA4 A4E00000 */  sh    $zero, ($a3)
/* 0067A8 80005BA8 ACA30000 */  sw    $v1, ($a1)
/* 0067AC 80005BAC 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 0067B0 80005BB0 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 0067B4 80005BB4 3C018016 */  lui   $at, %hi(D_80162DE0) # $at, 0x8016
/* 0067B8 80005BB8 3C0B8019 */  lui   $t3, %hi(D_8018CA78) # $t3, 0x8019
/* 0067BC 80005BBC 94490254 */  lhu   $t1, 0x254($v0)
/* 0067C0 80005BC0 8D6BCA78 */  lw    $t3, %lo(D_8018CA78)($t3)
/* 0067C4 80005BC4 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0067C8 80005BC8 AC292DE0 */  sw    $t1, %lo(D_80162DE0)($at)
/* 0067CC 80005BCC 944A0254 */  lhu   $t2, 0x254($v0)
/* 0067D0 80005BD0 3C018016 */  lui   $at, %hi(D_80162DE8) # $at, 0x8016
/* 0067D4 80005BD4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0067D8 80005BD8 AC2A2DE8 */  sw    $t2, %lo(D_80162DE8)($at)
/* 0067DC 80005BDC 3C018016 */  lui   $at, %hi(D_80162E00) # $at, 0x8016
/* 0067E0 80005BE0 AC202E00 */  sw    $zero, %lo(D_80162E00)($at)
/* 0067E4 80005BE4 3C018016 */  lui   $at, %hi(D_80162DFC) # $at, 0x8016
/* 0067E8 80005BE8 0C0016BA */  jal   func_80005AE8
/* 0067EC 80005BEC AC2B2DFC */   sw    $t3, %lo(D_80162DFC)($at)
/* 0067F0 80005BF0 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0067F4 80005BF4 0C0016BA */  jal   func_80005AE8
/* 0067F8 80005BF8 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 0067FC 80005BFC 10000098 */  b     .L80005E60
/* 006800 80005C00 8FBF0014 */   lw    $ra, 0x14($sp)
/* 006804 80005C04 8D0C0004 */  lw    $t4, 4($t0)
.L80005C08:
/* 006808 80005C08 3C0B802C */  lui   $t3, %hi(D_802BFB80) # $t3, 0x802c
/* 00680C 80005C0C 256BFB80 */  addiu $t3, %lo(D_802BFB80) # addiu $t3, $t3, -0x480
/* 006810 80005C10 10CC0020 */  beq   $a2, $t4, .L80005C94
/* 006814 80005C14 3C198016 */   lui   $t9, %hi(D_80162DC8) # $t9, 0x8016
/* 006818 80005C18 3C0D8016 */  lui   $t5, %hi(D_80162DCC) # $t5, 0x8016
/* 00681C 80005C1C 8DAD2DCC */  lw    $t5, %lo(D_80162DCC)($t5)
/* 006820 80005C20 3C018016 */  lui   $at, %hi(D_80162DD0) # $at, 0x8016
/* 006824 80005C24 0C0014A9 */  jal   func_800052A4
/* 006828 80005C28 AC2D2DD0 */   sw    $t5, %lo(D_80162DD0)($at)
/* 00682C 80005C2C 3C058016 */  lui   $a1, %hi(D_80162DDC) # $a1, 0x8016
/* 006830 80005C30 24A52DDC */  addiu $a1, %lo(D_80162DDC) # addiu $a1, $a1, 0x2ddc
/* 006834 80005C34 24030001 */  li    $v1, 1
/* 006838 80005C38 ACA30000 */  sw    $v1, ($a1)
/* 00683C 80005C3C 3C02800E */  lui   $v0, %hi(gPlayerOne) # $v0, 0x800e
/* 006840 80005C40 8C42C4DC */  lw    $v0, %lo(gPlayerOne)($v0)
/* 006844 80005C44 3C0F8019 */  lui   $t7, %hi(D_8018CA78) # $t7, 0x8019
/* 006848 80005C48 8DEFCA78 */  lw    $t7, %lo(D_8018CA78)($t7)
/* 00684C 80005C4C 944E0254 */  lhu   $t6, 0x254($v0)
/* 006850 80005C50 3C018016 */  lui   $at, %hi(D_80162DE0) # $at, 0x8016
/* 006854 80005C54 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 006858 80005C58 AC2E2DE0 */  sw    $t6, %lo(D_80162DE0)($at)
/* 00685C 80005C5C 3C018016 */  lui   $at, %hi(D_80162DFC) # $at, 0x8016
/* 006860 80005C60 AC2F2DFC */  sw    $t7, %lo(D_80162DFC)($at)
/* 006864 80005C64 3C018016 */  lui   $at, %hi(D_80162E00) # $at, 0x8016
/* 006868 80005C68 AC202E00 */  sw    $zero, %lo(D_80162E00)($at)
/* 00686C 80005C6C 94580254 */  lhu   $t8, 0x254($v0)
/* 006870 80005C70 3C018016 */  lui   $at, %hi(D_80162DE8) # $at, 0x8016
/* 006874 80005C74 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 006878 80005C78 0C0016BA */  jal   func_80005AE8
/* 00687C 80005C7C AC382DE8 */   sw    $t8, %lo(D_80162DE8)($at)
/* 006880 80005C80 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 006884 80005C84 0C0016BA */  jal   func_80005AE8
/* 006888 80005C88 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 00688C 80005C8C 10000074 */  b     .L80005E60
/* 006890 80005C90 8FBF0014 */   lw    $ra, 0x14($sp)
.L80005C94:
/* 006894 80005C94 8F392DC8 */  lw    $t9, %lo(D_80162DC8)($t9)
/* 006898 80005C98 3C0D8016 */  lui   $t5, %hi(D_80162D84+0x2) # $t5, 0x8016
/* 00689C 80005C9C 85AD2D86 */  lh    $t5, %lo(D_80162D84+0x2)($t5)
/* 0068A0 80005CA0 00194BC0 */  sll   $t1, $t9, 0xf
/* 0068A4 80005CA4 252A3000 */  addiu $t2, $t1, 0x3000
/* 0068A8 80005CA8 014B6021 */  addu  $t4, $t2, $t3
/* 0068AC 80005CAC 3C018016 */  lui   $at, %hi(D_80162D80) # $at, 0x8016
/* 0068B0 80005CB0 AC2C2D80 */  sw    $t4, %lo(D_80162D80)($at)
/* 0068B4 80005CB4 3C0E8016 */  lui   $t6, %hi(D_80162DCC) # $t6, 0x8016
/* 0068B8 80005CB8 8DCE2DCC */  lw    $t6, %lo(D_80162DCC)($t6)
/* 0068BC 80005CBC 3C018016 */  lui   $at, %hi(D_80162D84) # $at, 0x8016
/* 0068C0 80005CC0 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 0068C4 80005CC4 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 0068C8 80005CC8 A42D2D84 */  sh    $t5, %lo(D_80162D84)($at)
/* 0068CC 80005CCC 3C018016 */  lui   $at, %hi(D_80162DD0) # $at, 0x8016
/* 0068D0 80005CD0 AC2E2DD0 */  sw    $t6, %lo(D_80162DD0)($at)
/* 0068D4 80005CD4 95F80254 */  lhu   $t8, 0x254($t7)
/* 0068D8 80005CD8 3C018016 */  lui   $at, %hi(D_80162DE8) # $at, 0x8016
/* 0068DC 80005CDC 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0068E0 80005CE0 AC382DE8 */  sw    $t8, %lo(D_80162DE8)($at)
/* 0068E4 80005CE4 3C018016 */  lui   $at, %hi(D_80162DD8) # $at, 0x8016
/* 0068E8 80005CE8 A4202DD8 */  sh    $zero, %lo(D_80162DD8)($at)
/* 0068EC 80005CEC A4E00000 */  sh    $zero, ($a3)
/* 0068F0 80005CF0 ACA30000 */  sw    $v1, ($a1)
/* 0068F4 80005CF4 0C0016BA */  jal   func_80005AE8
/* 0068F8 80005CF8 8C84C4E0 */   lw    $a0, %lo(gPlayerTwo)($a0)
/* 0068FC 80005CFC 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 006900 80005D00 0C0016BA */  jal   func_80005AE8
/* 006904 80005D04 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 006908 80005D08 10000055 */  b     .L80005E60
/* 00690C 80005D0C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80005D10:
/* 006910 80005D10 3C058016 */  lui   $a1, %hi(D_80162DDC) # $a1, 0x8016
/* 006914 80005D14 14C20015 */  bne   $a2, $v0, .L80005D6C
/* 006918 80005D18 24A52DDC */   addiu $a1, %lo(D_80162DDC) # addiu $a1, $a1, 0x2ddc
/* 00691C 80005D1C 8CB90000 */  lw    $t9, ($a1)
/* 006920 80005D20 3C098016 */  lui   $t1, %hi(D_80162DF8) # $t1, 0x8016
/* 006924 80005D24 17200011 */  bnez  $t9, .L80005D6C
/* 006928 80005D28 00000000 */   nop
/* 00692C 80005D2C 8D292DF8 */  lw    $t1, %lo(D_80162DF8)($t1)
/* 006930 80005D30 3C0D802C */  lui   $t5, %hi(D_802BFB80) # $t5, 0x802c
/* 006934 80005D34 25ADFB80 */  addiu $t5, %lo(D_802BFB80) # addiu $t5, $t5, -0x480
/* 006938 80005D38 1469000C */  bne   $v1, $t1, .L80005D6C
/* 00693C 80005D3C 3C0A8016 */   lui   $t2, %hi(D_80162DC8) # $t2, 0x8016
/* 006940 80005D40 8D4A2DC8 */  lw    $t2, %lo(D_80162DC8)($t2)
/* 006944 80005D44 3C0F8016 */  lui   $t7, %hi(D_80162D84+0x2) # $t7, 0x8016
/* 006948 80005D48 85EF2D86 */  lh    $t7, %lo(D_80162D84+0x2)($t7)
/* 00694C 80005D4C 000A5BC0 */  sll   $t3, $t2, 0xf
/* 006950 80005D50 256C3000 */  addiu $t4, $t3, 0x3000
/* 006954 80005D54 018D7021 */  addu  $t6, $t4, $t5
/* 006958 80005D58 3C018016 */  lui   $at, %hi(D_80162D80) # $at, 0x8016
/* 00695C 80005D5C AC2E2D80 */  sw    $t6, %lo(D_80162D80)($at)
/* 006960 80005D60 3C018016 */  lui   $at, %hi(D_80162D84) # $at, 0x8016
/* 006964 80005D64 A42F2D84 */  sh    $t7, %lo(D_80162D84)($at)
/* 006968 80005D68 ACA30000 */  sw    $v1, ($a1)
.L80005D6C:
/* 00696C 80005D6C 3C18800E */  lui   $t8, %hi(gPlayerOne) # $t8, 0x800e
/* 006970 80005D70 8F18C4DC */  lw    $t8, %lo(gPlayerOne)($t8)
/* 006974 80005D74 24010800 */  li    $at, 2048
/* 006978 80005D78 3C028016 */  lui   $v0, %hi(D_80162DEC) # $v0, 0x8016
/* 00697C 80005D7C 97190000 */  lhu   $t9, ($t8)
/* 006980 80005D80 24422DEC */  addiu $v0, %lo(D_80162DEC) # addiu $v0, $v0, 0x2dec
/* 006984 80005D84 33290800 */  andi  $t1, $t9, 0x800
/* 006988 80005D88 5521000A */  bnel  $t1, $at, .L80005DB4
/* 00698C 80005D8C 8C4A0000 */   lw    $t2, ($v0)
/* 006990 80005D90 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 006994 80005D94 0C0016BA */  jal   func_80005AE8
/* 006998 80005D98 8C84C4E0 */   lw    $a0, %lo(gPlayerTwo)($a0)
/* 00699C 80005D9C 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0069A0 80005DA0 0C0016BA */  jal   func_80005AE8
/* 0069A4 80005DA4 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 0069A8 80005DA8 1000002D */  b     .L80005E60
/* 0069AC 80005DAC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0069B0 80005DB0 8C4A0000 */  lw    $t2, ($v0)
.L80005DB4:
/* 0069B4 80005DB4 240D0064 */  li    $t5, 100
/* 0069B8 80005DB8 3C0E800E */  lui   $t6, %hi(gActiveScreenMode) # $t6, 0x800e
/* 0069BC 80005DBC 254B0001 */  addiu $t3, $t2, 1
/* 0069C0 80005DC0 29610065 */  slti  $at, $t3, 0x65
/* 0069C4 80005DC4 14200002 */  bnez  $at, .L80005DD0
/* 0069C8 80005DC8 AC4B0000 */   sw    $t3, ($v0)
/* 0069CC 80005DCC AC4D0000 */  sw    $t5, ($v0)
.L80005DD0:
/* 0069D0 80005DD0 54640023 */  bnel  $v1, $a0, .L80005E60
/* 0069D4 80005DD4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0069D8 80005DD8 8DCEC52C */  lw    $t6, %lo(gActiveScreenMode)($t6)
/* 0069DC 80005DDC 3C078016 */  lui   $a3, %hi(D_80162DD4) # $a3, 0x8016
/* 0069E0 80005DE0 24E72DD4 */  addiu $a3, %lo(D_80162DD4) # addiu $a3, $a3, 0x2dd4
/* 0069E4 80005DE4 55C0001E */  bnel  $t6, $zero, .L80005E60
/* 0069E8 80005DE8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0069EC 80005DEC 94EF0000 */  lhu   $t7, ($a3)
/* 0069F0 80005DF0 15E00009 */  bnez  $t7, .L80005E18
/* 0069F4 80005DF4 00000000 */   nop
/* 0069F8 80005DF8 8D180004 */  lw    $t8, 4($t0)
/* 0069FC 80005DFC 10D80006 */  beq   $a2, $t8, .L80005E18
/* 006A00 80005E00 00000000 */   nop
/* 006A04 80005E04 0C0015F7 */  jal   func_800057DC
/* 006A08 80005E08 00000000 */   nop
/* 006A0C 80005E0C 3C088016 */  lui   $t0, %hi(gLapCountByPlayerId) # $t0, 0x8016
/* 006A10 80005E10 25084390 */  addiu $t0, %lo(gLapCountByPlayerId) # addiu $t0, $t0, 0x4390
/* 006A14 80005E14 24060003 */  li    $a2, 3
.L80005E18:
/* 006A18 80005E18 3C198016 */  lui   $t9, %hi(D_80162DD4+0x2) # $t9, 0x8016
/* 006A1C 80005E1C 97392DD6 */  lhu   $t9, %lo(D_80162DD4+0x2)($t9)
/* 006A20 80005E20 17200006 */  bnez  $t9, .L80005E3C
/* 006A24 80005E24 00000000 */   nop
/* 006A28 80005E28 8D090008 */  lw    $t1, 8($t0)
/* 006A2C 80005E2C 10C90003 */  beq   $a2, $t1, .L80005E3C
/* 006A30 80005E30 00000000 */   nop
/* 006A34 80005E34 0C001587 */  jal   func_8000561C
/* 006A38 80005E38 00000000 */   nop
.L80005E3C:
/* 006A3C 80005E3C 3C0A800E */  lui   $t2, %hi(gPlayerOne) # $t2, 0x800e
/* 006A40 80005E40 8D4AC4DC */  lw    $t2, %lo(gPlayerOne)($t2)
/* 006A44 80005E44 954B0000 */  lhu   $t3, ($t2)
/* 006A48 80005E48 316C0800 */  andi  $t4, $t3, 0x800
/* 006A4C 80005E4C 55800004 */  bnel  $t4, $zero, .L80005E60
/* 006A50 80005E50 8FBF0014 */   lw    $ra, 0x14($sp)
/* 006A54 80005E54 0C001667 */  jal   func_8000599C
/* 006A58 80005E58 00000000 */   nop
.L80005E5C:
/* 006A5C 80005E5C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80005E60:
/* 006A60 80005E60 27BD0018 */  addiu $sp, $sp, 0x18
/* 006A64 80005E64 03E00008 */  jr    $ra
/* 006A68 80005E68 00000000 */   nop
