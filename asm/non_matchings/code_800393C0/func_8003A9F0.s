glabel func_8003A9F0
/* 03B5F0 8003A9F0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 03B5F4 8003A9F4 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 03B5F8 8003A9F8 4486B000 */  mtc1  $a2, $f22
/* 03B5FC 8003A9FC AFBF004C */  sw    $ra, 0x4c($sp)
/* 03B600 8003AA00 AFB40048 */  sw    $s4, 0x48($sp)
/* 03B604 8003AA04 AFB30044 */  sw    $s3, 0x44($sp)
/* 03B608 8003AA08 00809825 */  move  $s3, $a0
/* 03B60C 8003AA0C 00A0A025 */  move  $s4, $a1
/* 03B610 8003AA10 AFB20040 */  sw    $s2, 0x40($sp)
/* 03B614 8003AA14 AFB1003C */  sw    $s1, 0x3c($sp)
/* 03B618 8003AA18 AFB00038 */  sw    $s0, 0x38($sp)
/* 03B61C 8003AA1C 0C00E769 */  jal   func_80039DA4
/* 03B620 8003AA20 F7B40028 */   sdc1  $f20, 0x28($sp)
/* 03B624 8003AA24 3C0E8019 */  lui   $t6, %hi(gCupCourseSelection) # $t6, 0x8019
/* 03B628 8003AA28 81CEEE0B */  lb    $t6, %lo(gCupCourseSelection)($t6)
/* 03B62C 8003AA2C 3C0F800E */  lui   $t7, %hi(D_800DC51C) # $t7, 0x800e
/* 03B630 8003AA30 11C00009 */  beqz  $t6, .L8003AA58
/* 03B634 8003AA34 00000000 */   nop
/* 03B638 8003AA38 95EFC51C */  lhu   $t7, %lo(D_800DC51C)($t7)
/* 03B63C 8003AA3C 24010001 */  li    $at, 1
/* 03B640 8003AA40 3C188019 */  lui   $t8, %hi(gDebugMenuSelection) # $t8, 0x8019
/* 03B644 8003AA44 11E10004 */  beq   $t7, $at, .L8003AA58
/* 03B648 8003AA48 00000000 */   nop
/* 03B64C 8003AA4C 8318EDEF */  lb    $t8, %lo(gDebugMenuSelection)($t8)
/* 03B650 8003AA50 24010040 */  li    $at, 64
/* 03B654 8003AA54 17010028 */  bne   $t8, $at, .L8003AAF8
.L8003AA58:
/* 03B658 8003AA58 3C11800F */   lui   $s1, %hi(D_800E86A8) # $s1, 0x800f
/* 03B65C 8003AA5C 263186A8 */  addiu $s1, %lo(D_800E86A8) # addiu $s1, $s1, -0x7958
.L8003AA60:
/* 03B660 8003AA60 0C0ADF8D */  jal   random_int
/* 03B664 8003AA64 24040007 */   li    $a0, 7
/* 03B668 8003AA68 82230000 */  lb    $v1, ($s1)
/* 03B66C 8003AA6C 00023400 */  sll   $a2, $v0, 0x10
/* 03B670 8003AA70 0006CC03 */  sra   $t9, $a2, 0x10
/* 03B674 8003AA74 1323FFFA */  beq   $t9, $v1, .L8003AA60
/* 03B678 8003AA78 03203025 */   move  $a2, $t9
/* 03B67C 8003AA7C 82240001 */  lb    $a0, 1($s1)
/* 03B680 8003AA80 1324FFF7 */  beq   $t9, $a0, .L8003AA60
/* 03B684 8003AA84 00000000 */   nop
/* 03B688 8003AA88 00034080 */  sll   $t0, $v1, 2
/* 03B68C 8003AA8C 3C09800E */  lui   $t1, %hi(D_800E3C50)
/* 03B690 8003AA90 01284821 */  addu  $t1, $t1, $t0
/* 03B694 8003AA94 8D293C50 */  lw    $t1, %lo(D_800E3C50)($t1)
/* 03B698 8003AA98 3C018016 */  lui   $at, %hi(D_80165560) # $at, 0x8016
/* 03B69C 8003AA9C 00045080 */  sll   $t2, $a0, 2
/* 03B6A0 8003AAA0 3C108016 */  lui   $s0, %hi(D_80165560) # $s0, 0x8016
/* 03B6A4 8003AAA4 A4395560 */  sh    $t9, %lo(D_80165560)($at)
/* 03B6A8 8003AAA8 26105560 */  addiu $s0, %lo(D_80165560) # addiu $s0, $s0, 0x5560
/* 03B6AC 8003AAAC 24020001 */  li    $v0, 1
/* 03B6B0 8003AAB0 012A3821 */  addu  $a3, $t1, $t2
/* 03B6B4 8003AAB4 8CE40000 */  lw    $a0, ($a3)
.L8003AAB8:
/* 03B6B8 8003AAB8 00021840 */  sll   $v1, $v0, 1
/* 03B6BC 8003AABC 24420001 */  addiu $v0, $v0, 1
/* 03B6C0 8003AAC0 00835821 */  addu  $t3, $a0, $v1
/* 03B6C4 8003AAC4 95650000 */  lhu   $a1, ($t3)
/* 03B6C8 8003AAC8 00027C00 */  sll   $t7, $v0, 0x10
/* 03B6CC 8003AACC 000F1403 */  sra   $v0, $t7, 0x10
/* 03B6D0 8003AAD0 14C50005 */  bne   $a2, $a1, .L8003AAE8
/* 03B6D4 8003AAD4 28410006 */   slti  $at, $v0, 6
/* 03B6D8 8003AAD8 948C0000 */  lhu   $t4, ($a0)
/* 03B6DC 8003AADC 02036821 */  addu  $t5, $s0, $v1
/* 03B6E0 8003AAE0 10000003 */  b     .L8003AAF0
/* 03B6E4 8003AAE4 A5AC0000 */   sh    $t4, ($t5)
.L8003AAE8:
/* 03B6E8 8003AAE8 02037021 */  addu  $t6, $s0, $v1
/* 03B6EC 8003AAEC A5C50000 */  sh    $a1, ($t6)
.L8003AAF0:
/* 03B6F0 8003AAF0 5420FFF1 */  bnel  $at, $zero, .L8003AAB8
/* 03B6F4 8003AAF4 8CE40000 */   lw    $a0, ($a3)
.L8003AAF8:
/* 03B6F8 8003AAF8 3C128016 */  lui   $s2, %hi(D_80165270) # $s2, 0x8016
/* 03B6FC 8003AAFC 26525270 */  addiu $s2, %lo(D_80165270) # addiu $s2, $s2, 0x5270
/* 03B700 8003AB00 86420004 */  lh    $v0, 4($s2)
/* 03B704 8003AB04 3C108016 */  lui   $s0, %hi(D_80165560) # $s0, 0x8016
/* 03B708 8003AB08 26105560 */  addiu $s0, %lo(D_80165560) # addiu $s0, $s0, 0x5560
/* 03B70C 8003AB0C 0002C880 */  sll   $t9, $v0, 2
/* 03B710 8003AB10 02794021 */  addu  $t0, $s3, $t9
/* 03B714 8003AB14 02994821 */  addu  $t1, $s4, $t9
/* 03B718 8003AB18 3C014700 */  li    $at, 0x47000000 # 32768.000000
/* 03B71C 8003AB1C 8D270000 */  lw    $a3, ($t1)
/* 03B720 8003AB20 8D060000 */  lw    $a2, ($t0)
/* 03B724 8003AB24 4481A000 */  mtc1  $at, $f20
/* 03B728 8003AB28 860A0000 */  lh    $t2, ($s0)
/* 03B72C 8003AB2C 3C11800F */  lui   $s1, %hi(D_800E86A8) # $s1, 0x800f
/* 03B730 8003AB30 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 03B734 8003AB34 240BB000 */  li    $t3, -20480
/* 03B738 8003AB38 263186A8 */  addiu $s1, %lo(D_800E86A8) # addiu $s1, $s1, -0x7958
/* 03B73C 8003AB3C AFAB001C */  sw    $t3, 0x1c($sp)
/* 03B740 8003AB40 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 03B744 8003AB44 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B748 8003AB48 03201025 */  move  $v0, $t9
/* 03B74C 8003AB4C 24050002 */  li    $a1, 2
/* 03B750 8003AB50 AFAA0018 */  sw    $t2, 0x18($sp)
/* 03B754 8003AB54 0C00E4F0 */  jal   spawn_player
/* 03B758 8003AB58 E7B40014 */   swc1  $f20, 0x14($sp)
/* 03B75C 8003AB5C 86420006 */  lh    $v0, 6($s2)
/* 03B760 8003AB60 860F0002 */  lh    $t7, 2($s0)
/* 03B764 8003AB64 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 03B768 8003AB68 00026080 */  sll   $t4, $v0, 2
/* 03B76C 8003AB6C 026C6821 */  addu  $t5, $s3, $t4
/* 03B770 8003AB70 028C7021 */  addu  $t6, $s4, $t4
/* 03B774 8003AB74 8DC70000 */  lw    $a3, ($t6)
/* 03B778 8003AB78 8DA60000 */  lw    $a2, ($t5)
/* 03B77C 8003AB7C 2418B000 */  li    $t8, -20480
/* 03B780 8003AB80 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03B784 8003AB84 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B788 8003AB88 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B78C 8003AB8C 01801025 */  move  $v0, $t4
/* 03B790 8003AB90 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 03B794 8003AB94 24050003 */  li    $a1, 3
/* 03B798 8003AB98 0C00E4F0 */  jal   spawn_player
/* 03B79C 8003AB9C AFAF0018 */   sw    $t7, 0x18($sp)
/* 03B7A0 8003ABA0 86420008 */  lh    $v0, 8($s2)
/* 03B7A4 8003ABA4 860A0004 */  lh    $t2, 4($s0)
/* 03B7A8 8003ABA8 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 03B7AC 8003ABAC 0002C880 */  sll   $t9, $v0, 2
/* 03B7B0 8003ABB0 02794021 */  addu  $t0, $s3, $t9
/* 03B7B4 8003ABB4 02994821 */  addu  $t1, $s4, $t9
/* 03B7B8 8003ABB8 8D270000 */  lw    $a3, ($t1)
/* 03B7BC 8003ABBC 8D060000 */  lw    $a2, ($t0)
/* 03B7C0 8003ABC0 240BB000 */  li    $t3, -20480
/* 03B7C4 8003ABC4 AFAB001C */  sw    $t3, 0x1c($sp)
/* 03B7C8 8003ABC8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B7CC 8003ABCC E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B7D0 8003ABD0 03201025 */  move  $v0, $t9
/* 03B7D4 8003ABD4 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 03B7D8 8003ABD8 24050004 */  li    $a1, 4
/* 03B7DC 8003ABDC 0C00E4F0 */  jal   spawn_player
/* 03B7E0 8003ABE0 AFAA0018 */   sw    $t2, 0x18($sp)
/* 03B7E4 8003ABE4 8642000A */  lh    $v0, 0xa($s2)
/* 03B7E8 8003ABE8 860F0006 */  lh    $t7, 6($s0)
/* 03B7EC 8003ABEC 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 03B7F0 8003ABF0 00026080 */  sll   $t4, $v0, 2
/* 03B7F4 8003ABF4 026C6821 */  addu  $t5, $s3, $t4
/* 03B7F8 8003ABF8 028C7021 */  addu  $t6, $s4, $t4
/* 03B7FC 8003ABFC 8DC70000 */  lw    $a3, ($t6)
/* 03B800 8003AC00 8DA60000 */  lw    $a2, ($t5)
/* 03B804 8003AC04 2418B000 */  li    $t8, -20480
/* 03B808 8003AC08 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03B80C 8003AC0C E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B810 8003AC10 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B814 8003AC14 01801025 */  move  $v0, $t4
/* 03B818 8003AC18 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 03B81C 8003AC1C 24050005 */  li    $a1, 5
/* 03B820 8003AC20 0C00E4F0 */  jal   spawn_player
/* 03B824 8003AC24 AFAF0018 */   sw    $t7, 0x18($sp)
/* 03B828 8003AC28 8642000C */  lh    $v0, 0xc($s2)
/* 03B82C 8003AC2C 860A0008 */  lh    $t2, 8($s0)
/* 03B830 8003AC30 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 03B834 8003AC34 0002C880 */  sll   $t9, $v0, 2
/* 03B838 8003AC38 02794021 */  addu  $t0, $s3, $t9
/* 03B83C 8003AC3C 02994821 */  addu  $t1, $s4, $t9
/* 03B840 8003AC40 8D270000 */  lw    $a3, ($t1)
/* 03B844 8003AC44 8D060000 */  lw    $a2, ($t0)
/* 03B848 8003AC48 240BB000 */  li    $t3, -20480
/* 03B84C 8003AC4C AFAB001C */  sw    $t3, 0x1c($sp)
/* 03B850 8003AC50 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B854 8003AC54 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B858 8003AC58 03201025 */  move  $v0, $t9
/* 03B85C 8003AC5C 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 03B860 8003AC60 24050006 */  li    $a1, 6
/* 03B864 8003AC64 0C00E4F0 */  jal   spawn_player
/* 03B868 8003AC68 AFAA0018 */   sw    $t2, 0x18($sp)
/* 03B86C 8003AC6C 8642000E */  lh    $v0, 0xe($s2)
/* 03B870 8003AC70 860F000A */  lh    $t7, 0xa($s0)
/* 03B874 8003AC74 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 03B878 8003AC78 00026080 */  sll   $t4, $v0, 2
/* 03B87C 8003AC7C 026C6821 */  addu  $t5, $s3, $t4
/* 03B880 8003AC80 028C7021 */  addu  $t6, $s4, $t4
/* 03B884 8003AC84 8DC70000 */  lw    $a3, ($t6)
/* 03B888 8003AC88 8DA60000 */  lw    $a2, ($t5)
/* 03B88C 8003AC8C 2418B000 */  li    $t8, -20480
/* 03B890 8003AC90 AFB8001C */  sw    $t8, 0x1c($sp)
/* 03B894 8003AC94 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B898 8003AC98 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B89C 8003AC9C 01801025 */  move  $v0, $t4
/* 03B8A0 8003ACA0 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 03B8A4 8003ACA4 24050007 */  li    $a1, 7
/* 03B8A8 8003ACA8 0C00E4F0 */  jal   spawn_player
/* 03B8AC 8003ACAC AFAF0018 */   sw    $t7, 0x18($sp)
/* 03B8B0 8003ACB0 3C19800E */  lui   $t9, %hi(D_800DC51C) # $t9, 0x800e
/* 03B8B4 8003ACB4 9739C51C */  lhu   $t9, %lo(D_800DC51C)($t9)
/* 03B8B8 8003ACB8 24010001 */  li    $at, 1
/* 03B8BC 8003ACBC 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # 0x800e
/* 03B8C0 8003ACC0 17210014 */  bne   $t9, $at, .L8003AD14
/* 03B8C4 8003ACC4 00002825 */   move  $a1, $zero
/* 03B8C8 8003ACC8 86420000 */  lh    $v0, ($s2)
/* 03B8CC 8003ACCC 822B0000 */  lb    $t3, ($s1)
/* 03B8D0 8003ACD0 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 03B8D4 8003ACD4 00024080 */  sll   $t0, $v0, 2
/* 03B8D8 8003ACD8 02684821 */  addu  $t1, $s3, $t0
/* 03B8DC 8003ACDC 02885021 */  addu  $t2, $s4, $t0
/* 03B8E0 8003ACE0 8D470000 */  lw    $a3, ($t2)
/* 03B8E4 8003ACE4 8D260000 */  lw    $a2, ($t1)
/* 03B8E8 8003ACE8 240CF000 */  li    $t4, -4096
/* 03B8EC 8003ACEC AFAC001C */  sw    $t4, 0x1c($sp)
/* 03B8F0 8003ACF0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B8F4 8003ACF4 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B8F8 8003ACF8 01001025 */  move  $v0, $t0
/* 03B8FC 8003ACFC 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 03B900 8003AD00 00002825 */  move  $a1, $zero
/* 03B904 8003AD04 0C00E4F0 */  jal   spawn_player
/* 03B908 8003AD08 AFAB0018 */   sw    $t3, 0x18($sp)
/* 03B90C 8003AD0C 10000010 */  b     .L8003AD50
/* 03B910 8003AD10 00000000 */   nop
.L8003AD14:
/* 03B914 8003AD14 86420000 */  lh    $v0, ($s2)
/* 03B918 8003AD18 82380000 */  lb    $t8, ($s1)
/* 03B91C 8003AD1C 2419E000 */  li    $t9, -8192
/* 03B920 8003AD20 00026880 */  sll   $t5, $v0, 2
/* 03B924 8003AD24 026D7021 */  addu  $t6, $s3, $t5
/* 03B928 8003AD28 028D7821 */  addu  $t7, $s4, $t5
/* 03B92C 8003AD2C 8DE70000 */  lw    $a3, ($t7)
/* 03B930 8003AD30 8DC60000 */  lw    $a2, ($t6)
/* 03B934 8003AD34 AFB9001C */  sw    $t9, 0x1c($sp)
/* 03B938 8003AD38 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B93C 8003AD3C E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B940 8003AD40 01A01025 */  move  $v0, $t5
/* 03B944 8003AD44 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)-0x3b04($a0)
/* 03B948 8003AD48 0C00E4F0 */  jal   spawn_player
/* 03B94C 8003AD4C AFB80018 */   sw    $t8, 0x18($sp)
.L8003AD50:
/* 03B950 8003AD50 3C08800E */  lui   $t0, %hi(D_800DC51C) # $t0, 0x800e
/* 03B954 8003AD54 9508C51C */  lhu   $t0, %lo(D_800DC51C)($t0)
/* 03B958 8003AD58 24010001 */  li    $at, 1
/* 03B95C 8003AD5C 3C04800E */  lui   $a0, %hi(gPlayerTwo) # 0x800e
/* 03B960 8003AD60 15010014 */  bne   $t0, $at, .L8003ADB4
/* 03B964 8003AD64 24050001 */   li    $a1, 1
/* 03B968 8003AD68 86420002 */  lh    $v0, 2($s2)
/* 03B96C 8003AD6C 822C0001 */  lb    $t4, 1($s1)
/* 03B970 8003AD70 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 03B974 8003AD74 00024880 */  sll   $t1, $v0, 2
/* 03B978 8003AD78 02695021 */  addu  $t2, $s3, $t1
/* 03B97C 8003AD7C 02895821 */  addu  $t3, $s4, $t1
/* 03B980 8003AD80 8D670000 */  lw    $a3, ($t3)
/* 03B984 8003AD84 8D460000 */  lw    $a2, ($t2)
/* 03B988 8003AD88 240DB000 */  li    $t5, -20480
/* 03B98C 8003AD8C AFAD001C */  sw    $t5, 0x1c($sp)
/* 03B990 8003AD90 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B994 8003AD94 E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B998 8003AD98 01201025 */  move  $v0, $t1
/* 03B99C 8003AD9C 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 03B9A0 8003ADA0 24050001 */  li    $a1, 1
/* 03B9A4 8003ADA4 0C00E4F0 */  jal   spawn_player
/* 03B9A8 8003ADA8 AFAC0018 */   sw    $t4, 0x18($sp)
/* 03B9AC 8003ADAC 10000010 */  b     .L8003ADF0
/* 03B9B0 8003ADB0 00000000 */   nop
.L8003ADB4:
/* 03B9B4 8003ADB4 86420002 */  lh    $v0, 2($s2)
/* 03B9B8 8003ADB8 82390001 */  lb    $t9, 1($s1)
/* 03B9BC 8003ADBC 2408E000 */  li    $t0, -8192
/* 03B9C0 8003ADC0 00027080 */  sll   $t6, $v0, 2
/* 03B9C4 8003ADC4 026E7821 */  addu  $t7, $s3, $t6
/* 03B9C8 8003ADC8 028EC021 */  addu  $t8, $s4, $t6
/* 03B9CC 8003ADCC 8F070000 */  lw    $a3, ($t8)
/* 03B9D0 8003ADD0 8DE60000 */  lw    $a2, ($t7)
/* 03B9D4 8003ADD4 AFA8001C */  sw    $t0, 0x1c($sp)
/* 03B9D8 8003ADD8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 03B9DC 8003ADDC E7B60010 */  swc1  $f22, 0x10($sp)
/* 03B9E0 8003ADE0 01C01025 */  move  $v0, $t6
/* 03B9E4 8003ADE4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0) # -0x3b20($a0)
/* 03B9E8 8003ADE8 0C00E4F0 */  jal   spawn_player
/* 03B9EC 8003ADEC AFB90018 */   sw    $t9, 0x18($sp)
.L8003ADF0:
/* 03B9F0 8003ADF0 3C018016 */  lui   $at, %hi(D_80164A28) # $at, 0x8016
/* 03B9F4 8003ADF4 0C00E6B9 */  jal   func_80039AE4
/* 03B9F8 8003ADF8 AC204A28 */   sw    $zero, %lo(D_80164A28)($at)
/* 03B9FC 8003ADFC 8FBF004C */  lw    $ra, 0x4c($sp)
/* 03BA00 8003AE00 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 03BA04 8003AE04 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 03BA08 8003AE08 8FB00038 */  lw    $s0, 0x38($sp)
/* 03BA0C 8003AE0C 8FB1003C */  lw    $s1, 0x3c($sp)
/* 03BA10 8003AE10 8FB20040 */  lw    $s2, 0x40($sp)
/* 03BA14 8003AE14 8FB30044 */  lw    $s3, 0x44($sp)
/* 03BA18 8003AE18 8FB40048 */  lw    $s4, 0x48($sp)
/* 03BA1C 8003AE1C 03E00008 */  jr    $ra
/* 03BA20 8003AE20 27BD0050 */   addiu $sp, $sp, 0x50
