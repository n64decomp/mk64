.section .text, "ax"

glabel func_80002A18
/* 003618 80002A18 3C0E8019 */  lui   $t6, %hi(D_8018EDF3) # $t6, 0x8019
/* 00361C 80002A1C 81CEEDF3 */  lb    $t6, %lo(D_8018EDF3)($t6)
/* 003620 80002A20 3C0F800E */  lui   $t7, %hi(D_800DC50C) # $t7, 0x800e
/* 003624 80002A24 8DEFC50C */  lw    $t7, %lo(D_800DC50C)($t7)
/* 003628 80002A28 3C01800E */  lui   $at, %hi(gPlayerCountSelection1) # $at, 0x800e
/* 00362C 80002A2C AC2EC538 */  sw    $t6, %lo(gPlayerCountSelection1)($at)
/* 003630 80002A30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 003634 80002A34 24010004 */  li    $at, 4
/* 003638 80002A38 11E10003 */  beq   $t7, $at, .L80002A48
/* 00363C 80002A3C AFBF0014 */   sw    $ra, 0x14($sp)
/* 003640 80002A40 3C01800E */  lui   $at, %hi(gIsMirrorMode) # $at, 0x800e
/* 003644 80002A44 AC20C604 */  sw    $zero, %lo(gIsMirrorMode)($at)
.L80002A48:
/* 003648 80002A48 3C18800E */  lui   $t8, %hi(gIsMirrorMode) # $t8, 0x800e
/* 00364C 80002A4C 8F18C604 */  lw    $t8, %lo(gIsMirrorMode)($t8)
/* 003650 80002A50 3C02800E */  lui   $v0, %hi(gCurrentlyLoadedCourseId) # $v0, 0x800e
/* 003654 80002A54 3C19800E */  lui   $t9, %hi(gModeSelection) # $t9, 0x800e
/* 003658 80002A58 13000006 */  beqz  $t8, .L80002A74
/* 00365C 80002A5C 2442C5A4 */   addiu $v0, %lo(gCurrentlyLoadedCourseId) # addiu $v0, $v0, -0x3a5c
/* 003660 80002A60 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 003664 80002A64 44812000 */  mtc1  $at, $f4
/* 003668 80002A68 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 00366C 80002A6C 10000005 */  b     .L80002A84
/* 003670 80002A70 E424F784 */   swc1  $f4, %lo(gCourseDirection)($at)
.L80002A74:
/* 003674 80002A74 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 003678 80002A78 44813000 */  mtc1  $at, $f6
/* 00367C 80002A7C 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 003680 80002A80 E426F784 */  swc1  $f6, %lo(gCourseDirection)($at)
.L80002A84:
/* 003684 80002A84 8F39C53C */  lw    $t9, %lo(gModeSelection)($t9)
/* 003688 80002A88 3C0E800E */  lui   $t6, %hi(D_800DC530) # $t6, 0x800e
/* 00368C 80002A8C 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 003690 80002A90 1720000C */  bnez  $t9, .L80002AC4
/* 003694 80002A94 3C088019 */   lui   $t0, %hi(gCupSelection) # $t0, 0x8019
/* 003698 80002A98 3C0A8019 */  lui   $t2, %hi(gCourseSelection) # $t2, 0x8019
/* 00369C 80002A9C 814AEE0B */  lb    $t2, %lo(gCourseSelection)($t2)
/* 0036A0 80002AA0 8108EE09 */  lb    $t0, %lo(gCupSelection)($t0)
/* 0036A4 80002AA4 3C0D800F */  lui   $t5, %hi(gCupTrackOrder) # 0x800f
/* 0036A8 80002AA8 000A5840 */  sll   $t3, $t2, 1
/* 0036AC 80002AAC 000848C0 */  sll   $t1, $t0, 3
/* 0036B0 80002AB0 012B6021 */  addu  $t4, $t1, $t3
/* 0036B4 80002AB4 01AC6821 */  addu  $t5, $t5, $t4
/* 0036B8 80002AB8 85AD2BB4 */  lh    $t5, %lo(gCupTrackOrder) # 0x2bb4($t5)
/* 0036BC 80002ABC 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 0036C0 80002AC0 A42DC5A0 */  sh    $t5, %lo(gCurrentCourseId)($at)
.L80002AC4:
/* 0036C4 80002AC4 8DCEC530 */  lw    $t6, %lo(D_800DC530)($t6)
/* 0036C8 80002AC8 3C01800E */  lui   $at, %hi(D_800DC52C) # $at, 0x800e
/* 0036CC 80002ACC 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 0036D0 80002AD0 AC2EC52C */  sw    $t6, %lo(D_800DC52C)($at)
/* 0036D4 80002AD4 844F0000 */  lh    $t7, ($v0)
/* 0036D8 80002AD8 11E4000F */  beq   $t7, $a0, .L80002B18
/* 0036DC 80002ADC 3C018015 */   lui   $at, %hi(D_80150120) # $at, 0x8015
/* 0036E0 80002AE0 AC200120 */  sw    $zero, %lo(D_80150120)($at)
/* 0036E4 80002AE4 A4440000 */  sh    $a0, ($v0)
/* 0036E8 80002AE8 3C188016 */  lui   $t8, %hi(D_8015F734) # $t8, 0x8016
/* 0036EC 80002AEC 8F18F734 */  lw    $t8, %lo(D_8015F734)($t8)
/* 0036F0 80002AF0 3C018016 */  lui   $at, %hi(D_8015F728) # $at, 0x8016
/* 0036F4 80002AF4 0C0AAA46 */  jal   load_course
/* 0036F8 80002AF8 AC38F728 */   sw    $t8, %lo(D_8015F728)($at)
/* 0036FC 80002AFC 0C0A5762 */  jal   func_80295D88
/* 003700 80002B00 00000000 */   nop   
/* 003704 80002B04 3C198016 */  lui   $t9, %hi(D_8015F728) # $t9, 0x8016
/* 003708 80002B08 8F39F728 */  lw    $t9, %lo(D_8015F728)($t9)
/* 00370C 80002B0C 3C018016 */  lui   $at, %hi(D_8015F730) # $at, 0x8016
/* 003710 80002B10 10000005 */  b     .L80002B28
/* 003714 80002B14 AC39F730 */   sw    $t9, %lo(D_8015F730)($at)
.L80002B18:
/* 003718 80002B18 3C088016 */  lui   $t0, %hi(D_8015F730) # $t0, 0x8016
/* 00371C 80002B1C 8D08F730 */  lw    $t0, %lo(D_8015F730)($t0)
/* 003720 80002B20 3C018016 */  lui   $at, %hi(D_8015F728) # $at, 0x8016
/* 003724 80002B24 AC28F728 */  sw    $t0, %lo(D_8015F728)($at)
.L80002B28:
/* 003728 80002B28 0C0A5A7E */  jal   func_802969F8
/* 00372C 80002B2C 00000000 */   nop   
/* 003730 80002B30 0C0014C4 */  jal   func_80005310
/* 003734 80002B34 00000000 */   nop   
/* 003738 80002B38 0C00F420 */  jal   func_8003D080
/* 00373C 80002B3C 00000000 */   nop   
/* 003740 80002B40 0C01BA70 */  jal   func_8006E9C0
/* 003744 80002B44 00000000 */   nop   
/* 003748 80002B48 3C01800E */  lui   $at, %hi(D_800DC510) # $at, 0x800e
/* 00374C 80002B4C AC20C510 */  sw    $zero, %lo(D_800DC510)($at)
/* 003750 80002B50 3C018016 */  lui   $at, %hi(D_8015F6FE) # $at, 0x8016
/* 003754 80002B54 A420F6FE */  sh    $zero, %lo(D_8015F6FE)($at)
/* 003758 80002B58 3C01800E */  lui   $at, %hi(D_800DC5B8) # $at, 0x800e
/* 00375C 80002B5C A420C5B8 */  sh    $zero, %lo(D_800DC5B8)($at)
/* 003760 80002B60 3C018015 */  lui   $at, %hi(D_80152308) # $at, 0x8015
/* 003764 80002B64 A4202308 */  sh    $zero, %lo(D_80152308)($at)
/* 003768 80002B68 3C01802C */  lui   $at, %hi(D_802BA038) # $at, 0x802c
/* 00376C 80002B6C 240AFFFF */  li    $t2, -1
/* 003770 80002B70 AC2AA038 */  sw    $t2, %lo(D_802BA038)($at)
/* 003774 80002B74 3C01802C */  lui   $at, %hi(D_802BA048) # $at, 0x802c
/* 003778 80002B78 0C0A9D2F */  jal   func_802A74BC
/* 00377C 80002B7C A420A048 */   sh    $zero, %lo(D_802BA048)($at)
/* 003780 80002B80 0C0A9346 */  jal   func_802A4D18
/* 003784 80002B84 00000000 */   nop   
/* 003788 80002B88 0C0247E9 */  jal   func_80091FA4
/* 00378C 80002B8C 00000000 */   nop   
/* 003790 80002B90 0C0A7856 */  jal   func_8029E158
/* 003794 80002B94 00000000 */   nop   
/* 003798 80002B98 3C09800E */  lui   $t1, %hi(gModeSelection) # $t1, 0x800e
/* 00379C 80002B9C 8D29C53C */  lw    $t1, %lo(gModeSelection)($t1)
/* 0037A0 80002BA0 24010003 */  li    $at, 3
/* 0037A4 80002BA4 3C028016 */  lui   $v0, %hi(D_80164490) # $v0, 0x8016
/* 0037A8 80002BA8 11210046 */  beq   $t1, $at, .L80002CC4
/* 0037AC 80002BAC 3C05800E */   lui   $a1, %hi(gCurrentCourseId) # $a1, 0x800e
/* 0037B0 80002BB0 8C424490 */  lw    $v0, %lo(D_80164490)($v0)
/* 0037B4 80002BB4 3C038016 */  lui   $v1, %hi(D_8015F8D0) # $v1, 0x8016
/* 0037B8 80002BB8 2463F8D0 */  addiu $v1, %lo(D_8015F8D0) # addiu $v1, $v1, -0x730
/* 0037BC 80002BBC 844B0002 */  lh    $t3, 2($v0)
/* 0037C0 80002BC0 3C04800E */  lui   $a0, %hi(gCurrentCourseId) # $a0, 0x800e
/* 0037C4 80002BC4 2401000A */  li    $at, 10
/* 0037C8 80002BC8 256CFFF1 */  addiu $t4, $t3, -0xf
/* 0037CC 80002BCC 448C4000 */  mtc1  $t4, $f8
/* 0037D0 80002BD0 3C0E800E */  lui   $t6, %hi(gIsMirrorMode) # $t6, 0x800e
/* 0037D4 80002BD4 468042A0 */  cvt.s.w $f10, $f8
/* 0037D8 80002BD8 E46A0004 */  swc1  $f10, 4($v1)
/* 0037DC 80002BDC 844D0004 */  lh    $t5, 4($v0)
/* 0037E0 80002BE0 448D8000 */  mtc1  $t5, $f16
/* 0037E4 80002BE4 00000000 */  nop   
/* 0037E8 80002BE8 468084A0 */  cvt.s.w $f18, $f16
/* 0037EC 80002BEC E4720008 */  swc1  $f18, 8($v1)
/* 0037F0 80002BF0 8484C5A0 */  lh    $a0, %lo(gCurrentCourseId)($a0)
/* 0037F4 80002BF4 54810017 */  bnel  $a0, $at, .L80002C54
/* 0037F8 80002BF8 2401000E */   li    $at, 14
/* 0037FC 80002BFC 8DCEC604 */  lw    $t6, %lo(gIsMirrorMode)($t6)
/* 003800 80002C00 51C0000B */  beql  $t6, $zero, .L80002C30
/* 003804 80002C04 84580000 */   lh    $t8, ($v0)
/* 003808 80002C08 844F0000 */  lh    $t7, ($v0)
/* 00380C 80002C0C 3C01430A */  li    $at, 0x430A0000 # 138.000000
/* 003810 80002C10 44814000 */  mtc1  $at, $f8
/* 003814 80002C14 448F2000 */  mtc1  $t7, $f4
/* 003818 80002C18 00000000 */  nop   
/* 00381C 80002C1C 468021A0 */  cvt.s.w $f6, $f4
/* 003820 80002C20 46083280 */  add.s $f10, $f6, $f8
/* 003824 80002C24 10000027 */  b     .L80002CC4
/* 003828 80002C28 E46A0000 */   swc1  $f10, ($v1)
/* 00382C 80002C2C 84580000 */  lh    $t8, ($v0)
.L80002C30:
/* 003830 80002C30 3C01430A */  li    $at, 0x430A0000 # 138.000000
/* 003834 80002C34 44812000 */  mtc1  $at, $f4
/* 003838 80002C38 44988000 */  mtc1  $t8, $f16
/* 00383C 80002C3C 00000000 */  nop   
/* 003840 80002C40 468084A0 */  cvt.s.w $f18, $f16
/* 003844 80002C44 46049181 */  sub.s $f6, $f18, $f4
/* 003848 80002C48 1000001E */  b     .L80002CC4
/* 00384C 80002C4C E4660000 */   swc1  $f6, ($v1)
/* 003850 80002C50 2401000E */  li    $at, 14
.L80002C54:
/* 003854 80002C54 14810016 */  bne   $a0, $at, .L80002CB0
/* 003858 80002C58 3C19800E */   lui   $t9, %hi(gIsMirrorMode) # $t9, 0x800e
/* 00385C 80002C5C 8F39C604 */  lw    $t9, %lo(gIsMirrorMode)($t9)
/* 003860 80002C60 5320000B */  beql  $t9, $zero, .L80002C90
/* 003864 80002C64 844A0000 */   lh    $t2, ($v0)
/* 003868 80002C68 84480000 */  lh    $t0, ($v0)
/* 00386C 80002C6C 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 003870 80002C70 44818000 */  mtc1  $at, $f16
/* 003874 80002C74 44884000 */  mtc1  $t0, $f8
/* 003878 80002C78 00000000 */  nop   
/* 00387C 80002C7C 468042A0 */  cvt.s.w $f10, $f8
/* 003880 80002C80 46105480 */  add.s $f18, $f10, $f16
/* 003884 80002C84 1000000F */  b     .L80002CC4
/* 003888 80002C88 E4720000 */   swc1  $f18, ($v1)
/* 00388C 80002C8C 844A0000 */  lh    $t2, ($v0)
.L80002C90:
/* 003890 80002C90 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 003894 80002C94 44814000 */  mtc1  $at, $f8
/* 003898 80002C98 448A2000 */  mtc1  $t2, $f4
/* 00389C 80002C9C 00000000 */  nop   
/* 0038A0 80002CA0 468021A0 */  cvt.s.w $f6, $f4
/* 0038A4 80002CA4 46083281 */  sub.s $f10, $f6, $f8
/* 0038A8 80002CA8 10000006 */  b     .L80002CC4
/* 0038AC 80002CAC E46A0000 */   swc1  $f10, ($v1)
.L80002CB0:
/* 0038B0 80002CB0 84490000 */  lh    $t1, ($v0)
/* 0038B4 80002CB4 44898000 */  mtc1  $t1, $f16
/* 0038B8 80002CB8 00000000 */  nop   
/* 0038BC 80002CBC 468084A0 */  cvt.s.w $f18, $f16
/* 0038C0 80002CC0 E4720000 */  swc1  $f18, ($v1)
.L80002CC4:
/* 0038C4 80002CC4 3C0B800E */  lui   $t3, %hi(D_800DC51C) # $t3, 0x800e
/* 0038C8 80002CC8 956BC51C */  lhu   $t3, %lo(D_800DC51C)($t3)
/* 0038CC 80002CCC 3C04800E */  lui   $a0, %hi(gPlayerCountSelection1) # $a0, 0x800e
/* 0038D0 80002CD0 1560000C */  bnez  $t3, .L80002D04
/* 0038D4 80002CD4 00000000 */   nop   
/* 0038D8 80002CD8 8C84C538 */  lw    $a0, %lo(gPlayerCountSelection1)($a0)
/* 0038DC 80002CDC 84A5C5A0 */  lh    $a1, %lo(gCurrentCourseId)($a1)
/* 0038E0 80002CE0 2484FFFF */  addiu $a0, $a0, -1
/* 0038E4 80002CE4 24A50004 */  addiu $a1, $a1, 4
/* 0038E8 80002CE8 30AD00FF */  andi  $t5, $a1, 0xff
/* 0038EC 80002CEC 308C00FF */  andi  $t4, $a0, 0xff
/* 0038F0 80002CF0 01802025 */  move  $a0, $t4
/* 0038F4 80002CF4 0C032802 */  jal   func_800CA008
/* 0038F8 80002CF8 01A02825 */   move  $a1, $t5
/* 0038FC 80002CFC 0C032CB1 */  jal   func_800CB2C4
/* 003900 80002D00 00000000 */   nop   
.L80002D04:
/* 003904 80002D04 3C02800E */  lui   $v0, %hi(D_800DC4BC) # $v0, 0x800e
/* 003908 80002D08 8C42C4BC */  lw    $v0, %lo(D_800DC4BC)($v0)
/* 00390C 80002D0C A4400000 */  sh    $zero, ($v0)
/* 003910 80002D10 A4400002 */  sh    $zero, 2($v0)
/* 003914 80002D14 A4400006 */  sh    $zero, 6($v0)
/* 003918 80002D18 A4400008 */  sh    $zero, 8($v0)
/* 00391C 80002D1C A4400004 */  sh    $zero, 4($v0)
/* 003920 80002D20 A4400010 */  sh    $zero, 0x10($v0)
/* 003924 80002D24 A4400012 */  sh    $zero, 0x12($v0)
/* 003928 80002D28 A4400016 */  sh    $zero, 0x16($v0)
/* 00392C 80002D2C A4400018 */  sh    $zero, 0x18($v0)
/* 003930 80002D30 A4400014 */  sh    $zero, 0x14($v0)
/* 003934 80002D34 A4400020 */  sh    $zero, 0x20($v0)
/* 003938 80002D38 A4400022 */  sh    $zero, 0x22($v0)
/* 00393C 80002D3C A4400026 */  sh    $zero, 0x26($v0)
/* 003940 80002D40 A4400028 */  sh    $zero, 0x28($v0)
/* 003944 80002D44 A4400024 */  sh    $zero, 0x24($v0)
/* 003948 80002D48 A4400040 */  sh    $zero, 0x40($v0)
/* 00394C 80002D4C A4400042 */  sh    $zero, 0x42($v0)
/* 003950 80002D50 A4400046 */  sh    $zero, 0x46($v0)
/* 003954 80002D54 A4400048 */  sh    $zero, 0x48($v0)
/* 003958 80002D58 A4400044 */  sh    $zero, 0x44($v0)
/* 00395C 80002D5C A4400050 */  sh    $zero, 0x50($v0)
/* 003960 80002D60 A4400052 */  sh    $zero, 0x52($v0)
/* 003964 80002D64 A4400056 */  sh    $zero, 0x56($v0)
/* 003968 80002D68 A4400058 */  sh    $zero, 0x58($v0)
/* 00396C 80002D6C A4400054 */  sh    $zero, 0x54($v0)
/* 003970 80002D70 A4400064 */  sh    $zero, 0x64($v0)
/* 003974 80002D74 A4400068 */  sh    $zero, 0x68($v0)
/* 003978 80002D78 A4400066 */  sh    $zero, 0x66($v0)
/* 00397C 80002D7C A4400062 */  sh    $zero, 0x62($v0)
/* 003980 80002D80 A4400060 */  sh    $zero, 0x60($v0)
/* 003984 80002D84 A4400030 */  sh    $zero, 0x30($v0)
/* 003988 80002D88 A4400032 */  sh    $zero, 0x32($v0)
/* 00398C 80002D8C A4400036 */  sh    $zero, 0x36($v0)
/* 003990 80002D90 A4400038 */  sh    $zero, 0x38($v0)
/* 003994 80002D94 A4400034 */  sh    $zero, 0x34($v0)
/* 003998 80002D98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00399C 80002D9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0039A0 80002DA0 24420060 */  addiu $v0, $v0, 0x60
/* 0039A4 80002DA4 03E00008 */  jr    $ra
/* 0039A8 80002DA8 00000000 */   nop   

glabel func_80002DAC
/* 0039AC 80002DAC 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 0039B0 80002DB0 95CEC5A0 */  lhu   $t6, %lo(gCurrentCourseId)($t6)
/* 0039B4 80002DB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0039B8 80002DB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0039BC 80002DBC 2DC10013 */  sltiu $at, $t6, 0x13
/* 0039C0 80002DC0 1020008F */  beqz  $at, .L80003000
/* 0039C4 80002DC4 000E7080 */   sll   $t6, $t6, 2
/* 0039C8 80002DC8 3C01800F */  lui   $at, %hi(D_800EB670) # 0x800f
/* 0039CC 80002DCC 002E0821 */  addu  $at, $at, $t6
/* 0039D0 80002DD0 8C2EB670 */  lw    $t6, %lo(D_800EB670)($at) # -0x4990($at)
/* 0039D4 80002DD4 01C00008 */  jr    $t6
/* 0039D8 80002DD8 00000000 */   nop   
glabel L80002DDC
/* 0039DC 80002DDC 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 0039E0 80002DE0 2484F748 */  addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 0039E4 80002DE4 3C05C35F */  lui   $a1, 0xc35f
/* 0039E8 80002DE8 3C0642BC */  lui   $a2, 0x42bc
/* 0039EC 80002DEC 0C0AD4A7 */  jal   load_giant_egg
/* 0039F0 80002DF0 3C07C31B */   lui   $a3, 0xc31b
/* 0039F4 80002DF4 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 0039F8 80002DF8 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 0039FC 80002DFC 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003A00 80002E00 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003A04 80002E04 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003A08 80002E08 0C032760 */  jal   func_800C9D80
/* 003A0C 80002E0C 2484F748 */   addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003A10 80002E10 1000007C */  b     .L80003004
/* 003A14 80002E14 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80002E18
/* 003A18 80002E18 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003A1C 80002E1C 3C07C3C4 */  lui   $a3, (0xC3C48000 >> 16) # lui $a3, 0xc3c4
/* 003A20 80002E20 34E78000 */  ori   $a3, (0xC3C48000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 003A24 80002E24 2484F748 */  addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003A28 80002E28 3C054331 */  lui   $a1, 0x4331
/* 003A2C 80002E2C 0C0AD4A7 */  jal   load_giant_egg
/* 003A30 80002E30 3C0642AE */   lui   $a2, 0x42ae
/* 003A34 80002E34 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003A38 80002E38 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003A3C 80002E3C 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003A40 80002E40 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003A44 80002E44 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003A48 80002E48 0C032760 */  jal   func_800C9D80
/* 003A4C 80002E4C 2484F748 */   addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003A50 80002E50 1000006C */  b     .L80003004
/* 003A54 80002E54 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80002E58
/* 003A58 80002E58 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003A5C 80002E5C 2484F748 */  addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003A60 80002E60 3C0542AA */  lui   $a1, 0x42aa
/* 003A64 80002E64 3C0641A8 */  lui   $a2, 0x41a8
/* 003A68 80002E68 0C0AD4A7 */  jal   load_giant_egg
/* 003A6C 80002E6C 3C07C35B */   lui   $a3, 0xc35b
/* 003A70 80002E70 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003A74 80002E74 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003A78 80002E78 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003A7C 80002E7C 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003A80 80002E80 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003A84 80002E84 0C032760 */  jal   func_800C9D80
/* 003A88 80002E88 2484F748 */   addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003A8C 80002E8C 1000005D */  b     .L80003004
/* 003A90 80002E90 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80002E94
/* 003A94 80002E94 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003A98 80002E98 3C07C454 */  lui   $a3, (0xC4548000 >> 16) # lui $a3, 0xc454
/* 003A9C 80002E9C 34E78000 */  ori   $a3, (0xC4548000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 003AA0 80002EA0 2484F748 */  addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003AA4 80002EA4 3C054395 */  lui   $a1, 0x4395
/* 003AA8 80002EA8 0C0AD4A7 */  jal   load_giant_egg
/* 003AAC 80002EAC 3C06434A */   lui   $a2, 0x434a
/* 003AB0 80002EB0 3C048016 */  lui   $a0, %hi(D_8015F748) # $a0, 0x8016
/* 003AB4 80002EB4 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003AB8 80002EB8 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003ABC 80002EBC 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003AC0 80002EC0 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003AC4 80002EC4 0C032760 */  jal   func_800C9D80
/* 003AC8 80002EC8 2484F748 */   addiu $a0, %lo(D_8015F748) # addiu $a0, $a0, -0x8b8
/* 003ACC 80002ECC 3C048016 */  lui   $a0, %hi(D_8015F758) # $a0, 0x8016
/* 003AD0 80002ED0 3C07C517 */  lui   $a3, (0xC517E000 >> 16) # lui $a3, 0xc517
/* 003AD4 80002ED4 34E7E000 */  ori   $a3, (0xC517E000 & 0xFFFF) # ori $a3, $a3, 0xe000
/* 003AD8 80002ED8 2484F758 */  addiu $a0, %lo(D_8015F758) # addiu $a0, $a0, -0x8a8
/* 003ADC 80002EDC 3C05C4C8 */  lui   $a1, 0xc4c8
/* 003AE0 80002EE0 0C0AD4A7 */  jal   load_giant_egg
/* 003AE4 80002EE4 3C06434A */   lui   $a2, 0x434a
/* 003AE8 80002EE8 3C048016 */  lui   $a0, %hi(D_8015F758) # $a0, 0x8016
/* 003AEC 80002EEC 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003AF0 80002EF0 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003AF4 80002EF4 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003AF8 80002EF8 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003AFC 80002EFC 0C032760 */  jal   func_800C9D80
/* 003B00 80002F00 2484F758 */   addiu $a0, %lo(D_8015F758) # addiu $a0, $a0, -0x8a8
/* 003B04 80002F04 3C048016 */  lui   $a0, %hi(D_8015F768) # $a0, 0x8016
/* 003B08 80002F08 3C05C529 */  lui   $a1, (0xC5294000 >> 16) # lui $a1, 0xc529
/* 003B0C 80002F0C 3C0744DC */  lui   $a3, (0x44DC4000 >> 16) # lui $a3, 0x44dc
/* 003B10 80002F10 34E74000 */  ori   $a3, (0x44DC4000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 003B14 80002F14 34A54000 */  ori   $a1, (0xC5294000 & 0xFFFF) # ori $a1, $a1, 0x4000
/* 003B18 80002F18 2484F768 */  addiu $a0, %lo(D_8015F768) # addiu $a0, $a0, -0x898
/* 003B1C 80002F1C 0C0AD4A7 */  jal   load_giant_egg
/* 003B20 80002F20 3C06434A */   lui   $a2, 0x434a
/* 003B24 80002F24 3C048016 */  lui   $a0, %hi(D_8015F768) # $a0, 0x8016
/* 003B28 80002F28 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003B2C 80002F2C 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003B30 80002F30 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003B34 80002F34 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003B38 80002F38 0C032760 */  jal   func_800C9D80
/* 003B3C 80002F3C 2484F768 */   addiu $a0, %lo(D_8015F768) # addiu $a0, $a0, -0x898
/* 003B40 80002F40 3C048016 */  lui   $a0, %hi(D_8015F778) # $a0, 0x8016
/* 003B44 80002F44 3C05C441 */  lui   $a1, (0xC441C000 >> 16) # lui $a1, 0xc441
/* 003B48 80002F48 3C0744F1 */  lui   $a3, (0x44F14000 >> 16) # lui $a3, 0x44f1
/* 003B4C 80002F4C 34E74000 */  ori   $a3, (0x44F14000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 003B50 80002F50 34A5C000 */  ori   $a1, (0xC441C000 & 0xFFFF) # ori $a1, $a1, 0xc000
/* 003B54 80002F54 2484F778 */  addiu $a0, %lo(D_8015F778) # addiu $a0, $a0, -0x888
/* 003B58 80002F58 0C0AD4A7 */  jal   load_giant_egg
/* 003B5C 80002F5C 3C06434A */   lui   $a2, 0x434a
/* 003B60 80002F60 3C048016 */  lui   $a0, %hi(D_8015F778) # $a0, 0x8016
/* 003B64 80002F64 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003B68 80002F68 3C065103 */  lui   $a2, (0x5103700B >> 16) # lui $a2, 0x5103
/* 003B6C 80002F6C 34C6700B */  ori   $a2, (0x5103700B & 0xFFFF) # ori $a2, $a2, 0x700b
/* 003B70 80002F70 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003B74 80002F74 0C032760 */  jal   func_800C9D80
/* 003B78 80002F78 2484F778 */   addiu $a0, %lo(D_8015F778) # addiu $a0, $a0, -0x888
/* 003B7C 80002F7C 10000021 */  b     .L80003004
/* 003B80 80002F80 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80002F84
/* 003B84 80002F84 3C048016 */  lui   $a0, %hi(D_8015F738) # $a0, 0x8016
/* 003B88 80002F88 3C074510 */  lui   $a3, (0x4510F000 >> 16) # lui $a3, 0x4510
/* 003B8C 80002F8C 34E7F000 */  ori   $a3, (0x4510F000 & 0xFFFF) # ori $a3, $a3, 0xf000
/* 003B90 80002F90 2484F738 */  addiu $a0, %lo(D_8015F738) # addiu $a0, $a0, -0x8c8
/* 003B94 80002F94 3C054319 */  lui   $a1, 0x4319
/* 003B98 80002F98 0C0AD4A7 */  jal   load_giant_egg
/* 003B9C 80002F9C 24060000 */   li    $a2, 0
/* 003BA0 80002FA0 3C048016 */  lui   $a0, %hi(D_8015F738) # $a0, 0x8016
/* 003BA4 80002FA4 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003BA8 80002FA8 3C065102 */  lui   $a2, (0x51028001 >> 16) # lui $a2, 0x5102
/* 003BAC 80002FAC 34C68001 */  ori   $a2, (0x51028001 & 0xFFFF) # ori $a2, $a2, 0x8001
/* 003BB0 80002FB0 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003BB4 80002FB4 0C032760 */  jal   func_800C9D80
/* 003BB8 80002FB8 2484F738 */   addiu $a0, %lo(D_8015F738) # addiu $a0, $a0, -0x8c8
/* 003BBC 80002FBC 10000011 */  b     .L80003004
/* 003BC0 80002FC0 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L80002FC4
/* 003BC4 80002FC4 3C048016 */  lui   $a0, %hi(D_8015F738) # $a0, 0x8016
/* 003BC8 80002FC8 3C05C445 */  lui   $a1, (0xC4458000 >> 16) # lui $a1, 0xc445
/* 003BCC 80002FCC 3C07C3DF */  lui   $a3, (0xC3DF8000 >> 16) # lui $a3, 0xc3df
/* 003BD0 80002FD0 34E78000 */  ori   $a3, (0xC3DF8000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 003BD4 80002FD4 34A58000 */  ori   $a1, (0xC4458000 & 0xFFFF) # ori $a1, $a1, 0x8000
/* 003BD8 80002FD8 2484F738 */  addiu $a0, %lo(D_8015F738) # addiu $a0, $a0, -0x8c8
/* 003BDC 80002FDC 0C0AD4A7 */  jal   load_giant_egg
/* 003BE0 80002FE0 3C06C37F */   lui   $a2, 0xc37f
/* 003BE4 80002FE4 3C048016 */  lui   $a0, %hi(D_8015F738) # $a0, 0x8016
/* 003BE8 80002FE8 3C05802C */  lui   $a1, %hi(D_802B91C8) # $a1, 0x802c
/* 003BEC 80002FEC 3C065102 */  lui   $a2, (0x51028001 >> 16) # lui $a2, 0x5102
/* 003BF0 80002FF0 34C68001 */  ori   $a2, (0x51028001 & 0xFFFF) # ori $a2, $a2, 0x8001
/* 003BF4 80002FF4 24A591C8 */  addiu $a1, %lo(D_802B91C8) # addiu $a1, $a1, -0x6e38
/* 003BF8 80002FF8 0C032760 */  jal   func_800C9D80
/* 003BFC 80002FFC 2484F738 */   addiu $a0, %lo(D_8015F738) # addiu $a0, $a0, -0x8c8
.L80003000:
glabel L80003000
/* 003C00 80003000 8FBF0014 */  lw    $ra, 0x14($sp)
.L80003004:
/* 003C04 80003004 27BD0018 */  addiu $sp, $sp, 0x18
/* 003C08 80003008 03E00008 */  jr    $ra
/* 003C0C 8000300C 00000000 */   nop   

glabel func_80003010
/* 003C10 80003010 3C038000 */  lui   $v1, %hi(osAppNmiBuffer) # $v1, 0x8000
/* 003C14 80003014 3C028000 */  lui   $v0, %hi(D_8000035C) # $v0, 0x8000
/* 003C18 80003018 2442035C */  addiu $v0, %lo(D_8000035C) # addiu $v0, $v0, 0x35c
/* 003C1C 8000301C 2463031C */  addiu $v1, %lo(osAppNmiBuffer) # addiu $v1, $v1, 0x31c
.L80003020:
/* 003C20 80003020 24630010 */  addiu $v1, $v1, 0x10
/* 003C24 80003024 AC60FFF4 */  sw    $zero, -0xc($v1)
/* 003C28 80003028 AC60FFF8 */  sw    $zero, -8($v1)
/* 003C2C 8000302C AC60FFFC */  sw    $zero, -4($v1)
/* 003C30 80003030 1462FFFB */  bne   $v1, $v0, .L80003020
/* 003C34 80003034 AC60FFF0 */   sw    $zero, -0x10($v1)
/* 003C38 80003038 03E00008 */  jr    $ra
/* 003C3C 8000303C 00000000 */   nop   

glabel func_80003040
/* 003C40 80003040 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 003C44 80003044 3C0F800E */  lui   $t7, %hi(D_800DC64C) # $t7, 0x800e
/* 003C48 80003048 AFBF001C */  sw    $ra, 0x1c($sp)
/* 003C4C 8000304C 25EFC64C */  addiu $t7, %lo(D_800DC64C) # addiu $t7, $t7, -0x39b4
/* 003C50 80003050 8DE10000 */  lw    $at, ($t7)
/* 003C54 80003054 27AE0028 */  addiu $t6, $sp, 0x28
/* 003C58 80003058 8DE80004 */  lw    $t0, 4($t7)
/* 003C5C 8000305C ADC10000 */  sw    $at, ($t6)
/* 003C60 80003060 8DE10008 */  lw    $at, 8($t7)
/* 003C64 80003064 3C0A800E */  lui   $t2, %hi(D_800DC658) # $t2, 0x800e
/* 003C68 80003068 254AC658 */  addiu $t2, %lo(D_800DC658) # addiu $t2, $t2, -0x39a8
/* 003C6C 8000306C ADC80004 */  sw    $t0, 4($t6)
/* 003C70 80003070 ADC10008 */  sw    $at, 8($t6)
/* 003C74 80003074 8D410000 */  lw    $at, ($t2)
/* 003C78 80003078 27A90020 */  addiu $t1, $sp, 0x20
/* 003C7C 8000307C 24190001 */  li    $t9, 1
/* 003C80 80003080 AD210000 */  sw    $at, ($t1)
/* 003C84 80003084 95410004 */  lhu   $at, 4($t2)
/* 003C88 80003088 3C058016 */  lui   $a1, %hi(D_8015F728) # $a1, 0x8016
/* 003C8C 8000308C 24040003 */  li    $a0, 3
/* 003C90 80003090 A5210004 */  sh    $at, 4($t1)
/* 003C94 80003094 3C01800E */  lui   $at, %hi(D_800DC5BC) # $at, 0x800e
/* 003C98 80003098 A420C5BC */  sh    $zero, %lo(D_800DC5BC)($at)
/* 003C9C 8000309C 3C01800E */  lui   $at, %hi(D_800DC5C8) # $at, 0x800e
/* 003CA0 800030A0 A420C5C8 */  sh    $zero, %lo(D_800DC5C8)($at)
/* 003CA4 800030A4 3C018015 */  lui   $at, %hi(D_80150110) # $at, 0x8015
/* 003CA8 800030A8 A4200110 */  sh    $zero, %lo(D_80150110)($at)
/* 003CAC 800030AC 3C01800E */  lui   $at, %hi(gIsMirrorMode) # $at, 0x800e
/* 003CB0 800030B0 AC20C604 */  sw    $zero, %lo(gIsMirrorMode)($at)
/* 003CB4 800030B4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 003CB8 800030B8 44812000 */  mtc1  $at, $f4
/* 003CBC 800030BC 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 003CC0 800030C0 8CA5F728 */  lw    $a1, %lo(D_8015F728)($a1)
/* 003CC4 800030C4 E424F784 */  swc1  $f4, %lo(gCourseDirection)($at)
/* 003CC8 800030C8 3C01800E */  lui   $at, %hi(gPlayerCountSelection1) # $at, 0x800e
/* 003CCC 800030CC AC39C538 */  sw    $t9, %lo(gPlayerCountSelection1)($at)
/* 003CD0 800030D0 3C01FFFF */  lui   $at, (0xFFFF7000 >> 16) # lui $at, 0xffff
/* 003CD4 800030D4 34217000 */  ori   $at, (0xFFFF7000 & 0xFFFF) # ori $at, $at, 0x7000
/* 003CD8 800030D8 0C0A9EE5 */  jal   set_segment_base_addr
/* 003CDC 800030DC 00A12821 */   addu  $a1, $a1, $at
/* 003CE0 800030E0 0C0A76AE */  jal   func_8029DAB8
/* 003CE4 800030E4 00000000 */   nop   
/* 003CE8 800030E8 3C18800E */  lui   $t8, %hi(gCurrentCourseId) # $t8, 0x800e
/* 003CEC 800030EC 9718C5A0 */  lhu   $t8, %lo(gCurrentCourseId)($t8)
/* 003CF0 800030F0 2F010013 */  sltiu $at, $t8, 0x13
/* 003CF4 800030F4 1020010C */  beqz  $at, .L80003528
/* 003CF8 800030F8 0018C080 */   sll   $t8, $t8, 2
/* 003CFC 800030FC 3C01800F */  lui   $at, %hi(D_800EB6BC) # 0x800f
/* 003D00 80003100 00380821 */  addu  $at, $at, $t8
/* 003D04 80003104 8C38B6BC */  lw    $t8, %lo(D_800EB6BC)($at) # -0x4944($at)
/* 003D08 80003108 03000008 */  jr    $t8
/* 003D0C 8000310C 00000000 */   nop   
glabel L80003110
/* 003D10 80003110 3C040F05 */  lui   $a0, %hi(D_0F04F45C) # $a0, 0xf05
/* 003D14 80003114 2484F45C */  addiu $a0, %lo(D_0F04F45C) # addiu $a0, $a0, -0xba4
/* 003D18 80003118 2405035B */  li    $a1, 859
/* 003D1C 8000311C 0C0AA13D */  jal   func_802A84F4
/* 003D20 80003120 24060800 */   li    $a2, 2048
/* 003D24 80003124 3C040601 */  lui   $a0, %hi(D_06009570) # $a0, 0x601
/* 003D28 80003128 0C0A7561 */  jal   place_segment_06
/* 003D2C 8000312C 24849570 */   addiu $a0, %lo(D_06009570) # addiu $a0, $a0, -0x6a90
/* 003D30 80003130 100000FE */  b     .L8000352C
/* 003D34 80003134 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80003138
/* 003D38 80003138 3C040700 */  lui   $a0, (0x07001350 >> 16) # lui $a0, 0x700
/* 003D3C 8000313C 34841350 */  ori   $a0, (0x07001350 & 0xFFFF) # ori $a0, $a0, 0x1350
/* 003D40 80003140 24050032 */  li    $a1, 50
/* 003D44 80003144 00003025 */  move  $a2, $zero
/* 003D48 80003148 00003825 */  move  $a3, $zero
/* 003D4C 8000314C 0C0ABE2F */  jal   func_802AF8BC
/* 003D50 80003150 AFA00010 */   sw    $zero, 0x10($sp)
/* 003D54 80003154 100000F5 */  b     .L8000352C
/* 003D58 80003158 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8000315C
/* 003D5C 8000315C 3C040700 */  lui   $a0, (0x07000878 >> 16) # lui $a0, 0x700
/* 003D60 80003160 34840878 */  ori   $a0, (0x07000878 & 0xFFFF) # ori $a0, $a0, 0x878
/* 003D64 80003164 2405FF80 */  li    $a1, -128
/* 003D68 80003168 00003025 */  move  $a2, $zero
/* 003D6C 8000316C 00003825 */  move  $a3, $zero
/* 003D70 80003170 0C0ABE2F */  jal   func_802AF8BC
/* 003D74 80003174 AFA00010 */   sw    $zero, 0x10($sp)
/* 003D78 80003178 100000EC */  b     .L8000352C
/* 003D7C 8000317C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80003180
/* 003D80 80003180 3C05C50F */  lui   $a1, (0xC50FC000 >> 16) # lui $a1, 0xc50f
/* 003D84 80003184 3C07441E */  lui   $a3, (0x441E8000 >> 16) # lui $a3, 0x441e
/* 003D88 80003188 34E78000 */  ori   $a3, (0x441E8000 & 0xFFFF) # ori $a3, $a3, 0x8000
/* 003D8C 8000318C 34A5C000 */  ori   $a1, (0xC50FC000 & 0xFFFF) # ori $a1, $a1, 0xc000
/* 003D90 80003190 27A40034 */  addiu $a0, $sp, 0x34
/* 003D94 80003194 0C0AD4A7 */  jal   load_giant_egg
/* 003D98 80003198 24060000 */   li    $a2, 0
/* 003D9C 8000319C 3C018016 */  lui   $at, %hi(gCourseDirection) # $at, 0x8016
/* 003DA0 800031A0 C428F784 */  lwc1  $f8, %lo(gCourseDirection)($at)
/* 003DA4 800031A4 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 003DA8 800031A8 27A40034 */  addiu $a0, $sp, 0x34
/* 003DAC 800031AC 27A50020 */  addiu $a1, $sp, 0x20
/* 003DB0 800031B0 46083282 */  mul.s $f10, $f6, $f8
/* 003DB4 800031B4 27A60028 */  addiu $a2, $sp, 0x28
/* 003DB8 800031B8 24070009 */  li    $a3, 9
/* 003DBC 800031BC 0C0A7B22 */  jal   func_8029EC88
/* 003DC0 800031C0 E7AA0034 */   swc1  $f10, 0x34($sp)
/* 003DC4 800031C4 100000D9 */  b     .L8000352C
/* 003DC8 800031C8 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800031CC
/* 003DCC 800031CC 3C040F05 */  lui   $a0, %hi(D_0F04FE28) # $a0, 0xf05
/* 003DD0 800031D0 2484FE28 */  addiu $a0, %lo(D_0F04FE28) # addiu $a0, $a0, -0x1d8
/* 003DD4 800031D4 240503E8 */  li    $a1, 1000
/* 003DD8 800031D8 0C0AA13D */  jal   func_802A84F4
/* 003DDC 800031DC 24060800 */   li    $a2, 2048
/* 003DE0 800031E0 3C040F05 */  lui   $a0, %hi(D_0F050118) # $a0, 0xf05
/* 003DE4 800031E4 24840118 */  addiu $a0, %lo(D_0F050118) # addiu $a0, $a0, 0x118
/* 003DE8 800031E8 240503E8 */  li    $a1, 1000
/* 003DEC 800031EC 0C0AA13D */  jal   func_802A84F4
/* 003DF0 800031F0 24060800 */   li    $a2, 2048
/* 003DF4 800031F4 3C040F05 */  lui   $a0, %hi(D_0F051C54) # $a0, 0xf05
/* 003DF8 800031F8 24841C54 */  addiu $a0, %lo(D_0F051C54) # addiu $a0, $a0, 0x1c54
/* 003DFC 800031FC 24050400 */  li    $a1, 1024
/* 003E00 80003200 0C0AA13D */  jal   func_802A84F4
/* 003E04 80003204 24060800 */   li    $a2, 2048
/* 003E08 80003208 3C040F05 */  lui   $a0, %hi(D_0F051FD8) # $a0, 0xf05
/* 003E0C 8000320C 24841FD8 */  addiu $a0, %lo(D_0F051FD8) # addiu $a0, $a0, 0x1fd8
/* 003E10 80003210 24050400 */  li    $a1, 1024
/* 003E14 80003214 0C0AA13D */  jal   func_802A84F4
/* 003E18 80003218 24060800 */   li    $a2, 2048
/* 003E1C 8000321C 3C040F05 */  lui   $a0, %hi(D_0F05232C) # $a0, 0xf05
/* 003E20 80003220 2484232C */  addiu $a0, %lo(D_0F05232C) # addiu $a0, $a0, 0x232c
/* 003E24 80003224 24050400 */  li    $a1, 1024
/* 003E28 80003228 0C0AA13D */  jal   func_802A84F4
/* 003E2C 8000322C 24060800 */   li    $a2, 2048
/* 003E30 80003230 3C040F05 */  lui   $a0, %hi(D_0F0526B8) # $a0, 0xf05
/* 003E34 80003234 248426B8 */  addiu $a0, %lo(D_0F0526B8) # addiu $a0, $a0, 0x26b8
/* 003E38 80003238 24050400 */  li    $a1, 1024
/* 003E3C 8000323C 0C0AA13D */  jal   func_802A84F4
/* 003E40 80003240 24060800 */   li    $a2, 2048
/* 003E44 80003244 3C040F05 */  lui   $a0, %hi(D_0F052A20) # $a0, 0xf05
/* 003E48 80003248 24842A20 */  addiu $a0, %lo(D_0F052A20) # addiu $a0, $a0, 0x2a20
/* 003E4C 8000324C 24050400 */  li    $a1, 1024
/* 003E50 80003250 0C0AA13D */  jal   func_802A84F4
/* 003E54 80003254 24060800 */   li    $a2, 2048
/* 003E58 80003258 3C040F05 */  lui   $a0, %hi(D_0F052D3C) # $a0, 0xf05
/* 003E5C 8000325C 24842D3C */  addiu $a0, %lo(D_0F052D3C) # addiu $a0, $a0, 0x2d3c
/* 003E60 80003260 24050400 */  li    $a1, 1024
/* 003E64 80003264 0C0AA13D */  jal   func_802A84F4
/* 003E68 80003268 24060800 */   li    $a2, 2048
/* 003E6C 8000326C 3C040F05 */  lui   $a0, %hi(D_0F05300C) # $a0, 0xf05
/* 003E70 80003270 2484300C */  addiu $a0, %lo(D_0F05300C) # addiu $a0, $a0, 0x300c
/* 003E74 80003274 24050400 */  li    $a1, 1024
/* 003E78 80003278 0C0AA13D */  jal   func_802A84F4
/* 003E7C 8000327C 24060800 */   li    $a2, 2048
/* 003E80 80003280 3C040F05 */  lui   $a0, %hi(D_0F0532F8) # $a0, 0xf05
/* 003E84 80003284 248432F8 */  addiu $a0, %lo(D_0F0532F8) # addiu $a0, $a0, 0x32f8
/* 003E88 80003288 24050400 */  li    $a1, 1024
/* 003E8C 8000328C 0C0AA13D */  jal   func_802A84F4
/* 003E90 80003290 24060800 */   li    $a2, 2048
/* 003E94 80003294 3C040F05 */  lui   $a0, %hi(D_0F05363C) # $a0, 0xf05
/* 003E98 80003298 2484363C */  addiu $a0, %lo(D_0F05363C) # addiu $a0, $a0, 0x363c
/* 003E9C 8000329C 24050400 */  li    $a1, 1024
/* 003EA0 800032A0 0C0AA13D */  jal   func_802A84F4
/* 003EA4 800032A4 24060800 */   li    $a2, 2048
/* 003EA8 800032A8 3C040F05 */  lui   $a0, %hi(D_0F053950) # $a0, 0xf05
/* 003EAC 800032AC 24843950 */  addiu $a0, %lo(D_0F053950) # addiu $a0, $a0, 0x3950
/* 003EB0 800032B0 24050400 */  li    $a1, 1024
/* 003EB4 800032B4 0C0AA13D */  jal   func_802A84F4
/* 003EB8 800032B8 24060800 */   li    $a2, 2048
/* 003EBC 800032BC 3C040601 */  lui   $a0, %hi(D_06014330) # $a0, 0x601
/* 003EC0 800032C0 0C0A7561 */  jal   place_segment_06
/* 003EC4 800032C4 24844330 */   addiu $a0, %lo(D_06014330) # addiu $a0, $a0, 0x4330
/* 003EC8 800032C8 10000098 */  b     .L8000352C
/* 003ECC 800032CC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800032D0
/* 003ED0 800032D0 3C040700 */  lui   $a0, (0x07001EB8 >> 16) # lui $a0, 0x700
/* 003ED4 800032D4 240E00FF */  li    $t6, 255
/* 003ED8 800032D8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 003EDC 800032DC 34841EB8 */  ori   $a0, (0x07001EB8 & 0xFFFF) # ori $a0, $a0, 0x1eb8
/* 003EE0 800032E0 2405FFB4 */  li    $a1, -76
/* 003EE4 800032E4 240600FF */  li    $a2, 255
/* 003EE8 800032E8 0C0ABE2F */  jal   func_802AF8BC
/* 003EEC 800032EC 240700FF */   li    $a3, 255
/* 003EF0 800032F0 3C040700 */  lui   $a0, (0x07002308 >> 16) # lui $a0, 0x700
/* 003EF4 800032F4 240F00FF */  li    $t7, 255
/* 003EF8 800032F8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 003EFC 800032FC 34842308 */  ori   $a0, (0x07002308 & 0xFFFF) # ori $a0, $a0, 0x2308
/* 003F00 80003300 2405FF96 */  li    $a1, -106
/* 003F04 80003304 240600FF */  li    $a2, 255
/* 003F08 80003308 0C0ABE2F */  jal   func_802AF8BC
/* 003F0C 8000330C 240700FF */   li    $a3, 255
/* 003F10 80003310 10000086 */  b     .L8000352C
/* 003F14 80003314 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80003318
/* 003F18 80003318 3C040700 */  lui   $a0, (0x07002068 >> 16) # lui $a0, 0x700
/* 003F1C 8000331C 240800FF */  li    $t0, 255
/* 003F20 80003320 AFA80010 */  sw    $t0, 0x10($sp)
/* 003F24 80003324 34842068 */  ori   $a0, (0x07002068 & 0xFFFF) # ori $a0, $a0, 0x2068
/* 003F28 80003328 2405FF96 */  li    $a1, -106
/* 003F2C 8000332C 240600FF */  li    $a2, 255
/* 003F30 80003330 0C0ABE2F */  jal   func_802AF8BC
/* 003F34 80003334 240700FF */   li    $a3, 255
/* 003F38 80003338 3C040700 */  lui   $a0, (0x07001E18 >> 16) # lui $a0, 0x700
/* 003F3C 8000333C 240C00FF */  li    $t4, 255
/* 003F40 80003340 AFAC0010 */  sw    $t4, 0x10($sp)
/* 003F44 80003344 34841E18 */  ori   $a0, (0x07001E18 & 0xFFFF) # ori $a0, $a0, 0x1e18
/* 003F48 80003348 2405FF96 */  li    $a1, -106
/* 003F4C 8000334C 240600FF */  li    $a2, 255
/* 003F50 80003350 0C0ABE2F */  jal   func_802AF8BC
/* 003F54 80003354 240700FF */   li    $a3, 255
/* 003F58 80003358 3C040700 */  lui   $a0, (0x07001318 >> 16) # lui $a0, 0x700
/* 003F5C 8000335C 34841318 */  ori   $a0, (0x07001318 & 0xFFFF) # ori $a0, $a0, 0x1318
/* 003F60 80003360 2405FFFF */  li    $a1, -1
/* 003F64 80003364 240600FF */  li    $a2, 255
/* 003F68 80003368 240700FF */  li    $a3, 255
/* 003F6C 8000336C 0C0ABE2F */  jal   func_802AF8BC
/* 003F70 80003370 AFA00010 */   sw    $zero, 0x10($sp)
/* 003F74 80003374 1000006D */  b     .L8000352C
/* 003F78 80003378 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8000337C
/* 003F7C 8000337C 27A40034 */  addiu $a0, $sp, 0x34
/* 003F80 80003380 3C05C303 */  lui   $a1, 0xc303
/* 003F84 80003384 3C0642A6 */  lui   $a2, 0x42a6
/* 003F88 80003388 0C0AD4A7 */  jal   load_giant_egg
/* 003F8C 8000338C 3C07438F */   lui   $a3, 0x438f
/* 003F90 80003390 27A40034 */  addiu $a0, $sp, 0x34
/* 003F94 80003394 27A50020 */  addiu $a1, $sp, 0x20
/* 003F98 80003398 27A60028 */  addiu $a2, $sp, 0x28
/* 003F9C 8000339C 0C0A7B22 */  jal   func_8029EC88
/* 003FA0 800033A0 24070023 */   li    $a3, 35
/* 003FA4 800033A4 3C05C513 */  lui   $a1, (0xC5131000 >> 16) # lui $a1, 0xc513
/* 003FA8 800033A8 34A51000 */  ori   $a1, (0xC5131000 & 0xFFFF) # ori $a1, $a1, 0x1000
/* 003FAC 800033AC 27A40034 */  addiu $a0, $sp, 0x34
/* 003FB0 800033B0 3C064290 */  lui   $a2, 0x4290
/* 003FB4 800033B4 0C0AD4A7 */  jal   load_giant_egg
/* 003FB8 800033B8 3C07C4C9 */   lui   $a3, 0xc4c9
/* 003FBC 800033BC 27A40034 */  addiu $a0, $sp, 0x34
/* 003FC0 800033C0 27A50020 */  addiu $a1, $sp, 0x20
/* 003FC4 800033C4 27A60028 */  addiu $a2, $sp, 0x28
/* 003FC8 800033C8 0C0A7B22 */  jal   func_8029EC88
/* 003FCC 800033CC 24070023 */   li    $a3, 35
/* 003FD0 800033D0 3C05C523 */  lui   $a1, (0xC523E000 >> 16) # lui $a1, 0xc523
/* 003FD4 800033D4 3C074438 */  lui   $a3, (0x4438C000 >> 16) # lui $a3, 0x4438
/* 003FD8 800033D8 34E7C000 */  ori   $a3, (0x4438C000 & 0xFFFF) # ori $a3, $a3, 0xc000
/* 003FDC 800033DC 34A5E000 */  ori   $a1, (0xC523E000 & 0xFFFF) # ori $a1, $a1, 0xe000
/* 003FE0 800033E0 27A40034 */  addiu $a0, $sp, 0x34
/* 003FE4 800033E4 0C0AD4A7 */  jal   load_giant_egg
/* 003FE8 800033E8 3C06429E */   lui   $a2, 0x429e
/* 003FEC 800033EC 27A40034 */  addiu $a0, $sp, 0x34
/* 003FF0 800033F0 27A50020 */  addiu $a1, $sp, 0x20
/* 003FF4 800033F4 27A60028 */  addiu $a2, $sp, 0x28
/* 003FF8 800033F8 0C0A7B22 */  jal   func_8029EC88
/* 003FFC 800033FC 24070023 */   li    $a3, 35
/* 004000 80003400 3C040700 */  lui   $a0, (0x07000C50 >> 16) # lui $a0, 0x700
/* 004004 80003404 240B00FF */  li    $t3, 255
/* 004008 80003408 AFAB0010 */  sw    $t3, 0x10($sp)
/* 00400C 8000340C 34840C50 */  ori   $a0, (0x07000C50 & 0xFFFF) # ori $a0, $a0, 0xc50
/* 004010 80003410 24050064 */  li    $a1, 100
/* 004014 80003414 240600FF */  li    $a2, 255
/* 004018 80003418 0C0ABE2F */  jal   func_802AF8BC
/* 00401C 8000341C 240700FF */   li    $a3, 255
/* 004020 80003420 3C040700 */  lui   $a0, (0x07000BD8 >> 16) # lui $a0, 0x700
/* 004024 80003424 240900FF */  li    $t1, 255
/* 004028 80003428 AFA90010 */  sw    $t1, 0x10($sp)
/* 00402C 8000342C 34840BD8 */  ori   $a0, (0x07000BD8 & 0xFFFF) # ori $a0, $a0, 0xbd8
/* 004030 80003430 24050064 */  li    $a1, 100
/* 004034 80003434 240600FF */  li    $a2, 255
/* 004038 80003438 0C0ABE2F */  jal   func_802AF8BC
/* 00403C 8000343C 240700FF */   li    $a3, 255
/* 004040 80003440 3C040700 */  lui   $a0, (0x07000B60 >> 16) # lui $a0, 0x700
/* 004044 80003444 240A00FF */  li    $t2, 255
/* 004048 80003448 AFAA0010 */  sw    $t2, 0x10($sp)
/* 00404C 8000344C 34840B60 */  ori   $a0, (0x07000B60 & 0xFFFF) # ori $a0, $a0, 0xb60
/* 004050 80003450 24050064 */  li    $a1, 100
/* 004054 80003454 240600FF */  li    $a2, 255
/* 004058 80003458 0C0ABE2F */  jal   func_802AF8BC
/* 00405C 8000345C 240700FF */   li    $a3, 255
/* 004060 80003460 3C040700 */  lui   $a0, (0x07000AE8 >> 16) # lui $a0, 0x700
/* 004064 80003464 240D00FF */  li    $t5, 255
/* 004068 80003468 AFAD0010 */  sw    $t5, 0x10($sp)
/* 00406C 8000346C 34840AE8 */  ori   $a0, (0x07000AE8 & 0xFFFF) # ori $a0, $a0, 0xae8
/* 004070 80003470 24050064 */  li    $a1, 100
/* 004074 80003474 240600FF */  li    $a2, 255
/* 004078 80003478 0C0ABE2F */  jal   func_802AF8BC
/* 00407C 8000347C 240700FF */   li    $a3, 255
/* 004080 80003480 3C040700 */  lui   $a0, (0x07000CC8 >> 16) # lui $a0, 0x700
/* 004084 80003484 241900FF */  li    $t9, 255
/* 004088 80003488 AFB90010 */  sw    $t9, 0x10($sp)
/* 00408C 8000348C 34840CC8 */  ori   $a0, (0x07000CC8 & 0xFFFF) # ori $a0, $a0, 0xcc8
/* 004090 80003490 24050064 */  li    $a1, 100
/* 004094 80003494 240600FF */  li    $a2, 255
/* 004098 80003498 0C0ABE2F */  jal   func_802AF8BC
/* 00409C 8000349C 240700FF */   li    $a3, 255
/* 0040A0 800034A0 3C040700 */  lui   $a0, (0x07000D50 >> 16) # lui $a0, 0x700
/* 0040A4 800034A4 241800FF */  li    $t8, 255
/* 0040A8 800034A8 AFB80010 */  sw    $t8, 0x10($sp)
/* 0040AC 800034AC 34840D50 */  ori   $a0, (0x07000D50 & 0xFFFF) # ori $a0, $a0, 0xd50
/* 0040B0 800034B0 24050064 */  li    $a1, 100
/* 0040B4 800034B4 240600FF */  li    $a2, 255
/* 0040B8 800034B8 0C0ABE2F */  jal   func_802AF8BC
/* 0040BC 800034BC 240700FF */   li    $a3, 255
/* 0040C0 800034C0 3C040700 */  lui   $a0, (0x07000DD0 >> 16) # lui $a0, 0x700
/* 0040C4 800034C4 240E00FF */  li    $t6, 255
/* 0040C8 800034C8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0040CC 800034CC 34840DD0 */  ori   $a0, (0x07000DD0 & 0xFFFF) # ori $a0, $a0, 0xdd0
/* 0040D0 800034D0 24050064 */  li    $a1, 100
/* 0040D4 800034D4 240600FF */  li    $a2, 255
/* 0040D8 800034D8 0C0ABE2F */  jal   func_802AF8BC
/* 0040DC 800034DC 240700FF */   li    $a3, 255
/* 0040E0 800034E0 3C040700 */  lui   $a0, (0x07000E48 >> 16) # lui $a0, 0x700
/* 0040E4 800034E4 240F00FF */  li    $t7, 255
/* 0040E8 800034E8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0040EC 800034EC 34840E48 */  ori   $a0, (0x07000E48 & 0xFFFF) # ori $a0, $a0, 0xe48
/* 0040F0 800034F0 24050064 */  li    $a1, 100
/* 0040F4 800034F4 240600FF */  li    $a2, 255
/* 0040F8 800034F8 0C0ABE2F */  jal   func_802AF8BC
/* 0040FC 800034FC 240700FF */   li    $a3, 255
/* 004100 80003500 1000000A */  b     .L8000352C
/* 004104 80003504 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L80003508
/* 004108 80003508 3C040700 */  lui   $a0, (0x07003FA8 >> 16) # lui $a0, 0x700
/* 00410C 8000350C 240800FF */  li    $t0, 255
/* 004110 80003510 AFA80010 */  sw    $t0, 0x10($sp)
/* 004114 80003514 34843FA8 */  ori   $a0, (0x07003FA8 & 0xFFFF) # ori $a0, $a0, 0x3fa8
/* 004118 80003518 24050078 */  li    $a1, 120
/* 00411C 8000351C 240600FF */  li    $a2, 255
/* 004120 80003520 0C0ABE2F */  jal   func_802AF8BC
/* 004124 80003524 240700FF */   li    $a3, 255
.L80003528:
glabel L80003528
/* 004128 80003528 8FBF001C */  lw    $ra, 0x1c($sp)
.L8000352C:
/* 00412C 8000352C 3C0C8015 */  lui   $t4, %hi(D_80150110) # $t4, 0x8015
/* 004130 80003530 958C0110 */  lhu   $t4, %lo(D_80150110)($t4)
/* 004134 80003534 3C018016 */  lui   $at, %hi(D_8015F900) # 0x8016
/* 004138 80003538 27BD0040 */  addiu $sp, $sp, 0x40
/* 00413C 8000353C 03E00008 */  jr    $ra
/* 004140 80003540 A42CF900 */   sh    $t4, %lo(D_8015F900)($at) # -0x700($at)

/* 004144 80003544 00000000 */  nop   
/* 004148 80003548 00000000 */  nop   
/* 00414C 8000354C 00000000 */  nop   
