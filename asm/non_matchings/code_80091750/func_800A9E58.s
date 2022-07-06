glabel func_800A9E58
/* 0AAA58 800A9E58 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0AAA5C 800A9E5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AAA60 800A9E60 8C8E0000 */  lw    $t6, ($a0)
/* 0AAA64 800A9E64 25CFFFEE */  addiu $t7, $t6, -0x12
/* 0AAA68 800A9E68 2DE10008 */  sltiu $at, $t7, 8
/* 0AAA6C 800A9E6C 10200019 */  beqz  $at, .L800A9ED4
/* 0AAA70 800A9E70 000F7880 */   sll   $t7, $t7, 2
/* 0AAA74 800A9E74 3C01800F */  lui   $at, %hi(jpt_800F2524)
/* 0AAA78 800A9E78 002F0821 */  addu  $at, $at, $t7
/* 0AAA7C 800A9E7C 8C2F2524 */  lw    $t7, %lo(jpt_800F2524)($at)
/* 0AAA80 800A9E80 01E00008 */  jr    $t7
/* 0AAA84 800A9E84 00000000 */   nop   
glabel L800A9E88
/* 0AAA88 800A9E88 24180012 */  li    $t8, 18
/* 0AAA8C 800A9E8C 24080002 */  li    $t0, 2
/* 0AAA90 800A9E90 AFB80024 */  sw    $t8, 0x24($sp)
/* 0AAA94 800A9E94 AFA8001C */  sw    $t0, 0x1c($sp)
/* 0AAA98 800A9E98 1000000E */  b     .L800A9ED4
/* 0AAA9C 800A9E9C AFA00020 */   sw    $zero, 0x20($sp)
glabel L800A9EA0
/* 0AAAA0 800A9EA0 24190016 */  li    $t9, 22
/* 0AAAA4 800A9EA4 24070002 */  li    $a3, 2
/* 0AAAA8 800A9EA8 24080002 */  li    $t0, 2
/* 0AAAAC 800A9EAC AFB90024 */  sw    $t9, 0x24($sp)
/* 0AAAB0 800A9EB0 AFA8001C */  sw    $t0, 0x1c($sp)
/* 0AAAB4 800A9EB4 10000007 */  b     .L800A9ED4
/* 0AAAB8 800A9EB8 AFA70020 */   sw    $a3, 0x20($sp)
glabel L800A9EBC
/* 0AAABC 800A9EBC 24090018 */  li    $t1, 24
/* 0AAAC0 800A9EC0 24070001 */  li    $a3, 1
/* 0AAAC4 800A9EC4 24080001 */  li    $t0, 1
/* 0AAAC8 800A9EC8 AFA90024 */  sw    $t1, 0x24($sp)
/* 0AAACC 800A9ECC AFA8001C */  sw    $t0, 0x1c($sp)
/* 0AAAD0 800A9ED0 AFA70020 */  sw    $a3, 0x20($sp)
.L800A9ED4:
/* 0AAAD4 800A9ED4 3C028019 */  lui   $v0, %hi(D_8018EDF3) # $v0, 0x8019
/* 0AAAD8 800A9ED8 8042EDF3 */  lb    $v0, %lo(D_8018EDF3)($v0)
/* 0AAADC 800A9EDC 3C06800F */  lui   $a2, %hi((D_800E86AC - 1)) # 0x800f
/* 0AAAE0 800A9EE0 8C830004 */  lw    $v1, 4($a0)
/* 0AAAE4 800A9EE4 00C23021 */  addu  $a2, $a2, $v0
/* 0AAAE8 800A9EE8 80C686AB */  lb    $a2, %lo((D_800E86AC - 1))($a2) # -0x7955($a2)
/* 0AAAEC 800A9EEC 00025080 */  sll   $t2, $v0, 2   # playerCount * 4
/* 0AAAF0 800A9EF0 01425023 */  subu  $t2, $t2, $v0 # playerCount * 3
/* 0AAAF4 800A9EF4 000A5080 */  sll   $t2, $t2, 2   # playerCount * 12
/* 0AAAF8 800A9EF8 00065880 */  sll   $t3, $a2, 2
/* 0AAAFC 800A9EFC 014B6021 */  addu  $t4, $t2, $t3 # a2 * 4 + playerCount * 12
/* 0AAB00 800A9F00 3C05800F */  lui   $a1, %hi(gGameModeFromNumPlayersAndRowSelection) # 0x800f
/* 0AAB04 800A9F04 00AC2821 */  addu  $a1, $a1, $t4
/* 0AAB08 800A9F08 8FA70020 */  lw    $a3, 0x20($sp)
/* 0AAB0C 800A9F0C 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0AAB10 800A9F10 10600009 */  beqz  $v1, .L800A9F38
/* 0AAB14 800A9F14 8CA52B70 */   lw    $a1, %lo(gGameModeFromNumPlayersAndRowSelection)($a1) # 0x2b70($a1)
/* 0AAB18 800A9F18 24010001 */  li    $at, 1
/* 0AAB1C 800A9F1C 10610055 */  beq   $v1, $at, .L800AA074
/* 0AAB20 800A9F20 3C0A8019 */   lui   $t2, %hi(gMainMenuSelectionDepth) # 0x8019
/* 0AAB24 800A9F24 24010002 */  li    $at, 2
/* 0AAB28 800A9F28 10610091 */  beq   $v1, $at, .L800AA170
/* 0AAB2C 800A9F2C 3C198019 */   lui   $t9, %hi(gMainMenuSelectionDepth) # 0x8019
/* 0AAB30 800A9F30 100000D0 */  b     .L800AA274
/* 0AAB34 800A9F34 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A9F38:
/* 0AAB38 800A9F38 10A70005 */  beq   $a1, $a3, .L800A9F50
/* 0AAB3C 800A9F3C 3C0D8019 */   lui   $t5, %hi(gMainMenuSelectionDepth) # $t5, 0x8019
/* 0AAB40 800A9F40 50A80004 */  beql  $a1, $t0, .L800A9F54
/* 0AAB44 800A9F44 AC860020 */   sw    $a2, 0x20($a0)
/* 0AAB48 800A9F48 100000C9 */  b     .L800AA270
/* 0AAB4C 800A9F4C A0800015 */   sb    $zero, 0x15($a0)
.L800A9F50:
/* 0AAB50 800A9F50 AC860020 */  sw    $a2, 0x20($a0)
.L800A9F54:
/* 0AAB54 800A9F54 81ADEDED */  lb    $t5, %lo(gMainMenuSelectionDepth)($t5)
/* 0AAB58 800A9F58 25AEFFFC */  addiu $t6, $t5, -4
/* 0AAB5C 800A9F5C 2DC10005 */  sltiu $at, $t6, 5
/* 0AAB60 800A9F60 10200042 */  beqz  $at, .L800AA06C
/* 0AAB64 800A9F64 000E7080 */   sll   $t6, $t6, 2
/* 0AAB68 800A9F68 3C01800F */  lui   $at, %hi(jpt_800F2544)
/* 0AAB6C 800A9F6C 002E0821 */  addu  $at, $at, $t6
/* 0AAB70 800A9F70 8C2E2544 */  lw    $t6, %lo(jpt_800F2544)($at)
/* 0AAB74 800A9F74 01C00008 */  jr    $t6
/* 0AAB78 800A9F78 00000000 */   nop   
glabel L800A9F7C
/* 0AAB7C 800A9F7C 240F0001 */  li    $t7, 1
/* 0AAB80 800A9F80 A08F0015 */  sb    $t7, 0x15($a0)
/* 0AAB84 800A9F84 0C02AB9A */  jal   func_800AAE68
/* 0AAB88 800A9F88 AFA40030 */   sw    $a0, 0x30($sp)
/* 0AAB8C 800A9F8C 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AAB90 800A9F90 8C58000C */  lw    $t8, 0xc($v0)
/* 0AAB94 800A9F94 3C198019 */  lui   $t9, %hi(D_8018EDF3) # $t9, 0x8019
/* 0AAB98 800A9F98 3C09800F */  lui   $t1, %hi((D_800E86AC - 1)) # 0x800f
/* 0AAB9C 800A9F9C AC98000C */  sw    $t8, 0xc($a0)
/* 0AABA0 800A9FA0 8339EDF3 */  lb    $t9, %lo(D_8018EDF3)($t9)
/* 0AABA4 800A9FA4 8C4B0010 */  lw    $t3, 0x10($v0)
/* 0AABA8 800A9FA8 240E0001 */  li    $t6, 1
/* 0AABAC 800A9FAC 01394821 */  addu  $t1, $t1, $t9
/* 0AABB0 800A9FB0 812986AB */  lb    $t1, %lo((D_800E86AC - 1))($t1) # -0x7955($t1)
/* 0AABB4 800A9FB4 AC80001C */  sw    $zero, 0x1c($a0)
/* 0AABB8 800A9FB8 AC8E0004 */  sw    $t6, 4($a0)
/* 0AABBC 800A9FBC 000950C0 */  sll   $t2, $t1, 3
/* 0AABC0 800A9FC0 01495021 */  addu  $t2, $t2, $t1
/* 0AABC4 800A9FC4 000A5040 */  sll   $t2, $t2, 1
/* 0AABC8 800A9FC8 014B6021 */  addu  $t4, $t2, $t3
/* 0AABCC 800A9FCC 258D0041 */  addiu $t5, $t4, 0x41
/* 0AABD0 800A9FD0 100000A7 */  b     .L800AA270
/* 0AABD4 800A9FD4 AC8D0010 */   sw    $t5, 0x10($a0)
glabel L800A9FD8
/* 0AABD8 800A9FD8 0C02AB9A */  jal   func_800AAE68
/* 0AABDC 800A9FDC AFA40030 */   sw    $a0, 0x30($sp)
/* 0AABE0 800A9FE0 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AABE4 800A9FE4 8FB90024 */  lw    $t9, 0x24($sp)
/* 0AABE8 800A9FE8 3C0C800E */  lui   $t4, %hi(D_800E70E8) # $t4, 0x800e
/* 0AABEC 800A9FEC 8C8F0000 */  lw    $t7, ($a0)
/* 0AABF0 800A9FF0 001948C0 */  sll   $t1, $t9, 3
/* 0AABF4 800A9FF4 00095023 */  negu  $t2, $t1
/* 0AABF8 800A9FF8 000FC0C0 */  sll   $t8, $t7, 3
/* 0AABFC 800A9FFC 030A5821 */  addu  $t3, $t8, $t2
/* 0AAC00 800AA000 258C70E8 */  addiu $t4, %lo(D_800E70E8) # addiu $t4, $t4, 0x70e8
/* 0AAC04 800AA004 016C1821 */  addu  $v1, $t3, $t4
/* 0AAC08 800AA008 846E0000 */  lh    $t6, ($v1)
/* 0AAC0C 800AA00C 8C4D000C */  lw    $t5, 0xc($v0)
/* 0AAC10 800AA010 3C198019 */  lui   $t9, %hi(D_8018EDF3) # $t9, 0x8019
/* 0AAC14 800AA014 3C09800F */  lui   $t1, %hi((D_800E86AC - 1)) # 0x800f
/* 0AAC18 800AA018 01AE7821 */  addu  $t7, $t5, $t6
/* 0AAC1C 800AA01C AC8F000C */  sw    $t7, 0xc($a0)
/* 0AAC20 800AA020 8339EDF3 */  lb    $t9, %lo(D_8018EDF3)($t9)
/* 0AAC24 800AA024 8C4A0010 */  lw    $t2, 0x10($v0)
/* 0AAC28 800AA028 846C0002 */  lh    $t4, 2($v1)
/* 0AAC2C 800AA02C 01394821 */  addu  $t1, $t1, $t9
/* 0AAC30 800AA030 812986AB */  lb    $t1, %lo((D_800E86AC - 1))($t1) # -0x7955($t1)
/* 0AAC34 800AA034 0009C0C0 */  sll   $t8, $t1, 3
/* 0AAC38 800AA038 0309C021 */  addu  $t8, $t8, $t1
/* 0AAC3C 800AA03C 0018C040 */  sll   $t8, $t8, 1
/* 0AAC40 800AA040 030A5821 */  addu  $t3, $t8, $t2
/* 0AAC44 800AA044 016C6821 */  addu  $t5, $t3, $t4
/* 0AAC48 800AA048 AC8D0010 */  sw    $t5, 0x10($a0)
/* 0AAC4C 800AA04C 8C4F0010 */  lw    $t7, 0x10($v0)
/* 0AAC50 800AA050 24090001 */  li    $t1, 1
/* 0AAC54 800AA054 24180002 */  li    $t8, 2
/* 0AAC58 800AA058 01AFC823 */  subu  $t9, $t5, $t7
/* 0AAC5C 800AA05C AC99001C */  sw    $t9, 0x1c($a0)
/* 0AAC60 800AA060 A0890015 */  sb    $t1, 0x15($a0)
/* 0AAC64 800AA064 10000082 */  b     .L800AA270
/* 0AAC68 800AA068 AC980004 */   sw    $t8, 4($a0)
.L800AA06C:
/* 0AAC6C 800AA06C 10000080 */  b     .L800AA270
/* 0AAC70 800AA070 A0800015 */   sb    $zero, 0x15($a0)
.L800AA074:
/* 0AAC74 800AA074 814AEDED */  lb    $t2, %lo(gMainMenuSelectionDepth)($t2) # -0x1213($t2)
/* 0AAC78 800AA078 254BFFFC */  addiu $t3, $t2, -4
/* 0AAC7C 800AA07C 2D610005 */  sltiu $at, $t3, 5
/* 0AAC80 800AA080 10200038 */  beqz  $at, .L800AA164
/* 0AAC84 800AA084 000B5880 */   sll   $t3, $t3, 2
/* 0AAC88 800AA088 3C01800F */  lui   $at, %hi(jpt_800F2558)
/* 0AAC8C 800AA08C 002B0821 */  addu  $at, $at, $t3
/* 0AAC90 800AA090 8C2B2558 */  lw    $t3, %lo(jpt_800F2558)($at)
/* 0AAC94 800AA094 01600008 */  jr    $t3
/* 0AAC98 800AA098 00000000 */   nop   
glabel L800AA09C
/* 0AAC9C 800AA09C 50A70007 */  beql  $a1, $a3, .L800AA0BC
/* 0AACA0 800AA0A0 8C8C0020 */   lw    $t4, 0x20($a0)
/* 0AACA4 800AA0A4 50A80005 */  beql  $a1, $t0, .L800AA0BC
/* 0AACA8 800AA0A8 8C8C0020 */   lw    $t4, 0x20($a0)
/* 0AACAC 800AA0AC A0800015 */  sb    $zero, 0x15($a0)
/* 0AACB0 800AA0B0 1000006F */  b     .L800AA270
/* 0AACB4 800AA0B4 AC800004 */   sw    $zero, 4($a0)
/* 0AACB8 800AA0B8 8C8C0020 */  lw    $t4, 0x20($a0)
.L800AA0BC:
/* 0AACBC 800AA0BC 11860002 */  beq   $t4, $a2, .L800AA0C8
/* 0AACC0 800AA0C0 00000000 */   nop   
/* 0AACC4 800AA0C4 AC800004 */  sw    $zero, 4($a0)
.L800AA0C8:
/* 0AACC8 800AA0C8 0C02AB9A */  jal   func_800AAE68
/* 0AACCC 800AA0CC AFA40030 */   sw    $a0, 0x30($sp)
/* 0AACD0 800AA0D0 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AACD4 800AA0D4 8C4D000C */  lw    $t5, 0xc($v0)
/* 0AACD8 800AA0D8 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0AACDC 800AA0DC 8C990000 */  lw    $t9, ($a0)
/* 0AACE0 800AA0E0 01AE7821 */  addu  $t7, $t5, $t6
/* 0AACE4 800AA0E4 AC8F000C */  sw    $t7, 0xc($a0)
/* 0AACE8 800AA0E8 8FB80024 */  lw    $t8, 0x24($sp)
/* 0AACEC 800AA0EC 3C0D800E */  lui   $t5, %hi(D_800E70E8) # $t5, 0x800e
/* 0AACF0 800AA0F0 001948C0 */  sll   $t1, $t9, 3
/* 0AACF4 800AA0F4 001850C0 */  sll   $t2, $t8, 3
/* 0AACF8 800AA0F8 000A5823 */  negu  $t3, $t2
/* 0AACFC 800AA0FC 012B6021 */  addu  $t4, $t1, $t3
/* 0AAD00 800AA100 25AD70E8 */  addiu $t5, %lo(D_800E70E8) # addiu $t5, $t5, 0x70e8
/* 0AAD04 800AA104 018D1821 */  addu  $v1, $t4, $t5
/* 0AAD08 800AA108 846F0000 */  lh    $t7, ($v1)
/* 0AAD0C 800AA10C 8C4E000C */  lw    $t6, 0xc($v0)
/* 0AAD10 800AA110 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0AAD14 800AA114 AFA30028 */  sw    $v1, 0x28($sp)
/* 0AAD18 800AA118 0C02A4BA */  jal   func_800A92E8
/* 0AAD1C 800AA11C 01CF2821 */   addu  $a1, $t6, $t7
/* 0AAD20 800AA120 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AAD24 800AA124 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0AAD28 800AA128 8FA30028 */  lw    $v1, 0x28($sp)
/* 0AAD2C 800AA12C 8C99000C */  lw    $t9, 0xc($a0)
/* 0AAD30 800AA130 8CF8000C */  lw    $t8, 0xc($a3)
/* 0AAD34 800AA134 240C0002 */  li    $t4, 2
/* 0AAD38 800AA138 03385023 */  subu  $t2, $t9, $t8
/* 0AAD3C 800AA13C AC8A001C */  sw    $t2, 0x1c($a0)
/* 0AAD40 800AA140 84690000 */  lh    $t1, ($v1)
/* 0AAD44 800AA144 552A004B */  bnel  $t1, $t2, .L800AA274
/* 0AAD48 800AA148 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0AAD4C 800AA14C AC8C0004 */  sw    $t4, 4($a0)
/* 0AAD50 800AA150 8CEE0010 */  lw    $t6, 0x10($a3)
/* 0AAD54 800AA154 8C8D0010 */  lw    $t5, 0x10($a0)
/* 0AAD58 800AA158 01AE7823 */  subu  $t7, $t5, $t6
/* 0AAD5C 800AA15C 10000044 */  b     .L800AA270
/* 0AAD60 800AA160 AC8F001C */   sw    $t7, 0x1c($a0)
.L800AA164:
/* 0AAD64 800AA164 A0800015 */  sb    $zero, 0x15($a0)
/* 0AAD68 800AA168 10000041 */  b     .L800AA270
/* 0AAD6C 800AA16C AC800004 */   sw    $zero, 4($a0)
.L800AA170:
/* 0AAD70 800AA170 8339EDED */  lb    $t9, %lo(gMainMenuSelectionDepth)($t9) # -0x1213($t9)
/* 0AAD74 800AA174 2738FFFC */  addiu $t8, $t9, -4
/* 0AAD78 800AA178 2F010005 */  sltiu $at, $t8, 5
/* 0AAD7C 800AA17C 1020003A */  beqz  $at, .L800AA268
/* 0AAD80 800AA180 0018C080 */   sll   $t8, $t8, 2
/* 0AAD84 800AA184 3C01800F */  lui   $at, %hi(jpt_800F256C)
/* 0AAD88 800AA188 00380821 */  addu  $at, $at, $t8
/* 0AAD8C 800AA18C 8C38256C */  lw    $t8, %lo(jpt_800F256C)($at)
/* 0AAD90 800AA190 03000008 */  jr    $t8
/* 0AAD94 800AA194 00000000 */   nop   
glabel L800AA198
/* 0AAD98 800AA198 50A70007 */  beql  $a1, $a3, .L800AA1B8
/* 0AAD9C 800AA19C 8C8A0020 */   lw    $t2, 0x20($a0)
/* 0AADA0 800AA1A0 50A80005 */  beql  $a1, $t0, .L800AA1B8
/* 0AADA4 800AA1A4 8C8A0020 */   lw    $t2, 0x20($a0)
/* 0AADA8 800AA1A8 A0800015 */  sb    $zero, 0x15($a0)
/* 0AADAC 800AA1AC 10000030 */  b     .L800AA270
/* 0AADB0 800AA1B0 AC800004 */   sw    $zero, 4($a0)
/* 0AADB4 800AA1B4 8C8A0020 */  lw    $t2, 0x20($a0)
.L800AA1B8:
/* 0AADB8 800AA1B8 11460002 */  beq   $t2, $a2, .L800AA1C4
/* 0AADBC 800AA1BC 00000000 */   nop   
/* 0AADC0 800AA1C0 AC800004 */  sw    $zero, 4($a0)
.L800AA1C4:
/* 0AADC4 800AA1C4 0C02AB9A */  jal   func_800AAE68
/* 0AADC8 800AA1C8 AFA40030 */   sw    $a0, 0x30($sp)
/* 0AADCC 800AA1CC 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AADD0 800AA1D0 8FAC0024 */  lw    $t4, 0x24($sp)
/* 0AADD4 800AA1D4 3C19800E */  lui   $t9, %hi(D_800E70E8) # $t9, 0x800e
/* 0AADD8 800AA1D8 8C890000 */  lw    $t1, ($a0)
/* 0AADDC 800AA1DC 000C68C0 */  sll   $t5, $t4, 3
/* 0AADE0 800AA1E0 000D7023 */  negu  $t6, $t5
/* 0AADE4 800AA1E4 000958C0 */  sll   $t3, $t1, 3
/* 0AADE8 800AA1E8 016E7821 */  addu  $t7, $t3, $t6
/* 0AADEC 800AA1EC 273970E8 */  addiu $t9, %lo(D_800E70E8) # addiu $t9, $t9, 0x70e8
/* 0AADF0 800AA1F0 01F91821 */  addu  $v1, $t7, $t9
/* 0AADF4 800AA1F4 846A0000 */  lh    $t2, ($v1)
/* 0AADF8 800AA1F8 8C58000C */  lw    $t8, 0xc($v0)
/* 0AADFC 800AA1FC 8C8D001C */  lw    $t5, 0x1c($a0)
/* 0AAE00 800AA200 3C0E8019 */  lui   $t6, %hi(D_8018EDF3) # $t6, 0x8019
/* 0AAE04 800AA204 030A2821 */  addu  $a1, $t8, $t2
/* 0AAE08 800AA208 AC85000C */  sw    $a1, 0xc($a0)
/* 0AAE0C 800AA20C 8C4C0010 */  lw    $t4, 0x10($v0)
/* 0AAE10 800AA210 3C0F800F */  lui   $t7, %hi((D_800E86AC - 1)) # 0x800f
/* 0AAE14 800AA214 018D5821 */  addu  $t3, $t4, $t5
/* 0AAE18 800AA218 AC8B0010 */  sw    $t3, 0x10($a0)
/* 0AAE1C 800AA21C 81CEEDF3 */  lb    $t6, %lo(D_8018EDF3)($t6)
/* 0AAE20 800AA220 8C580010 */  lw    $t8, 0x10($v0)
/* 0AAE24 800AA224 84690002 */  lh    $t1, 2($v1)
/* 0AAE28 800AA228 01EE7821 */  addu  $t7, $t7, $t6
/* 0AAE2C 800AA22C 81EF86AB */  lb    $t7, %lo((D_800E86AC - 1))($t7) # -0x7955($t7)
/* 0AAE30 800AA230 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0AAE34 800AA234 000FC8C0 */  sll   $t9, $t7, 3
/* 0AAE38 800AA238 032FC821 */  addu  $t9, $t9, $t7
/* 0AAE3C 800AA23C 0019C840 */  sll   $t9, $t9, 1
/* 0AAE40 800AA240 03385021 */  addu  $t2, $t9, $t8
/* 0AAE44 800AA244 0C02A476 */  jal   func_800A91D8
/* 0AAE48 800AA248 01493021 */   addu  $a2, $t2, $t1
/* 0AAE4C 800AA24C 8FA40030 */  lw    $a0, 0x30($sp)
/* 0AAE50 800AA250 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0AAE54 800AA254 8C8C0010 */  lw    $t4, 0x10($a0)
/* 0AAE58 800AA258 8CED0010 */  lw    $t5, 0x10($a3)
/* 0AAE5C 800AA25C 018D5823 */  subu  $t3, $t4, $t5
/* 0AAE60 800AA260 10000003 */  b     .L800AA270
/* 0AAE64 800AA264 AC8B001C */   sw    $t3, 0x1c($a0)
.L800AA268:
/* 0AAE68 800AA268 A0800015 */  sb    $zero, 0x15($a0)
/* 0AAE6C 800AA26C AC800004 */  sw    $zero, 4($a0)
.L800AA270:
/* 0AAE70 800AA270 8FBF0014 */  lw    $ra, 0x14($sp)
.L800AA274:
/* 0AAE74 800AA274 27BD0030 */  addiu $sp, $sp, 0x30
/* 0AAE78 800AA278 03E00008 */  jr    $ra
/* 0AAE7C 800AA27C 00000000 */   nop   
