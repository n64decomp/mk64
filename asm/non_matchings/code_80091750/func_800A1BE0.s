glabel func_800A1BE0
/* 0A27E0 800A1BE0 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0A27E4 800A1BE4 AFB70044 */  sw    $s7, 0x44($sp)
/* 0A27E8 800A1BE8 3C178019 */  lui   $s7, %hi(gTimeTrialDataCourseIndex) # $s7, 0x8019
/* 0A27EC 800A1BEC 26F7EDF7 */  addiu $s7, %lo(gTimeTrialDataCourseIndex) # addiu $s7, $s7, -0x1209
/* 0A27F0 800A1BF0 82E20000 */  lb    $v0, ($s7)
/* 0A27F4 800A1BF4 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0A27F8 800A1BF8 AFB30034 */  sw    $s3, 0x34($sp)
/* 0A27FC 800A1BFC 3C098019 */  lui   $t1, %hi(D_8018EB90) # $t1, 0x8019
/* 0A2800 800A1C00 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0A2804 800A1C04 AFB60040 */  sw    $s6, 0x40($sp)
/* 0A2808 800A1C08 AFB40038 */  sw    $s4, 0x38($sp)
/* 0A280C 800A1C0C AFB00028 */  sw    $s0, 0x28($sp)
/* 0A2810 800A1C10 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A2814 800A1C14 2529EB90 */  addiu $t1, %lo(D_8018EB90) # addiu $t1, $t1, -0x1470
/* 0A2818 800A1C18 3C13800E */  lui   $s3, %hi(D_800E7834) # $s3, 0x800e
/* 0A281C 800A1C1C 3C158015 */  lui   $s5, %hi(gDisplayListHead) # $s5, 0x8015
/* 0A2820 800A1C20 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A2824 800A1C24 AFB20030 */  sw    $s2, 0x30($sp)
/* 0A2828 800A1C28 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0A282C 800A1C2C AFA40090 */  sw    $a0, 0x90($sp)
/* 0A2830 800A1C30 04410003 */  bgez  $v0, .L800A1C40
/* 0A2834 800A1C34 00027083 */   sra   $t6, $v0, 2
/* 0A2838 800A1C38 24410003 */  addiu $at, $v0, 3
/* 0A283C 800A1C3C 00017083 */  sra   $t6, $at, 2
.L800A1C40:
/* 0A2840 800A1C40 000E7880 */  sll   $t7, $t6, 2
/* 0A2844 800A1C44 01EE7823 */  subu  $t7, $t7, $t6
/* 0A2848 800A1C48 000F7940 */  sll   $t7, $t7, 5
/* 0A284C 800A1C4C 04410004 */  bgez  $v0, .L800A1C60
/* 0A2850 800A1C50 30580003 */   andi  $t8, $v0, 3
/* 0A2854 800A1C54 13000002 */  beqz  $t8, .L800A1C60
/* 0A2858 800A1C58 00000000 */   nop   
/* 0A285C 800A1C5C 2718FFFC */  addiu $t8, $t8, -4
.L800A1C60:
/* 0A2860 800A1C60 0018C880 */  sll   $t9, $t8, 2
/* 0A2864 800A1C64 0338C823 */  subu  $t9, $t9, $t8
/* 0A2868 800A1C68 0019C8C0 */  sll   $t9, $t9, 3
/* 0A286C 800A1C6C 01F94021 */  addu  $t0, $t7, $t9
/* 0A2870 800A1C70 3C01800F */  lui   $at, %hi(D_800F1B54) # $at, 0x800f
/* 0A2874 800A1C74 0109B021 */  addu  $s6, $t0, $t1
/* 0A2878 800A1C78 C4341B54 */  lwc1  $f20, %lo(D_800F1B54)($at)
/* 0A287C 800A1C7C 26B50298 */  addiu $s5, %lo(gDisplayListHead) # addiu $s5, $s5, 0x298
/* 0A2880 800A1C80 26737834 */  addiu $s3, %lo(D_800E7834) # addiu $s3, $s3, 0x7834
/* 0A2884 800A1C84 00008025 */  move  $s0, $zero
/* 0A2888 800A1C88 2414003F */  li    $s4, 63
/* 0A288C 800A1C8C 3C1EFA00 */  lui   $fp, 0xfa00
.L800A1C90:
/* 0A2890 800A1C90 3C0A8019 */  lui   $t2, %hi(gCourseRecordsMenuSelection) # $t2, 0x8019
/* 0A2894 800A1C94 814AEDF8 */  lb    $t2, %lo(gCourseRecordsMenuSelection)($t2)
/* 0A2898 800A1C98 00008825 */  move  $s1, $zero
/* 0A289C 800A1C9C 24010001 */  li    $at, 1
/* 0A28A0 800A1CA0 160A0003 */  bne   $s0, $t2, .L800A1CB0
/* 0A28A4 800A1CA4 00000000 */   nop   
/* 0A28A8 800A1CA8 10000012 */  b     .L800A1CF4
/* 0A28AC 800A1CAC 24120005 */   li    $s2, 5
.L800A1CB0:
/* 0A28B0 800A1CB0 12010006 */  beq   $s0, $at, .L800A1CCC
/* 0A28B4 800A1CB4 24120001 */   li    $s2, 1
/* 0A28B8 800A1CB8 24010002 */  li    $at, 2
/* 0A28BC 800A1CBC 12010008 */  beq   $s0, $at, .L800A1CE0
/* 0A28C0 800A1CC0 00000000 */   nop   
/* 0A28C4 800A1CC4 1000000B */  b     .L800A1CF4
/* 0A28C8 800A1CC8 00000000 */   nop   
.L800A1CCC:
/* 0A28CC 800A1CCC 92CB0012 */  lbu   $t3, 0x12($s6)
/* 0A28D0 800A1CD0 15600008 */  bnez  $t3, .L800A1CF4
/* 0A28D4 800A1CD4 00000000 */   nop   
/* 0A28D8 800A1CD8 10000006 */  b     .L800A1CF4
/* 0A28DC 800A1CDC 24110001 */   li    $s1, 1
.L800A1CE0:
/* 0A28E0 800A1CE0 0C02D8E7 */  jal   func_800B639C
/* 0A28E4 800A1CE4 82E40000 */   lb    $a0, ($s7)
/* 0A28E8 800A1CE8 04410002 */  bgez  $v0, .L800A1CF4
/* 0A28EC 800A1CEC 00000000 */   nop   
/* 0A28F0 800A1CF0 24110001 */  li    $s1, 1
.L800A1CF4:
/* 0A28F4 800A1CF4 12200012 */  beqz  $s1, .L800A1D40
/* 0A28F8 800A1CF8 00000000 */   nop   
/* 0A28FC 800A1CFC 0C024C36 */  jal   set_text_color
/* 0A2900 800A1D00 00002025 */   move  $a0, $zero
/* 0A2904 800A1D04 8EA30000 */  lw    $v1, ($s5)
/* 0A2908 800A1D08 240D0096 */  li    $t5, 150
/* 0A290C 800A1D0C 24040025 */  li    $a0, 37
/* 0A2910 800A1D10 246C0008 */  addiu $t4, $v1, 8
/* 0A2914 800A1D14 AEAC0000 */  sw    $t4, ($s5)
/* 0A2918 800A1D18 AC6D0004 */  sw    $t5, 4($v1)
/* 0A291C 800A1D1C AC7E0000 */  sw    $fp, ($v1)
/* 0A2920 800A1D20 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A2924 800A1D24 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A2928 800A1D28 8E660000 */  lw    $a2, ($s3)
/* 0A292C 800A1D2C 02802825 */  move  $a1, $s4
/* 0A2930 800A1D30 0C024CD6 */  jal   func_80093358
/* 0A2934 800A1D34 00003825 */   move  $a3, $zero
/* 0A2938 800A1D38 1000000B */  b     .L800A1D68
/* 0A293C 800A1D3C 26100001 */   addiu $s0, $s0, 1
.L800A1D40:
/* 0A2940 800A1D40 0C024C36 */  jal   set_text_color
/* 0A2944 800A1D44 02402025 */   move  $a0, $s2
/* 0A2948 800A1D48 24040025 */  li    $a0, 37
/* 0A294C 800A1D4C 02802825 */  move  $a1, $s4
/* 0A2950 800A1D50 8E660000 */  lw    $a2, ($s3)
/* 0A2954 800A1D54 00003825 */  move  $a3, $zero
/* 0A2958 800A1D58 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A295C 800A1D5C 0C024CC9 */  jal   func_80093324
/* 0A2960 800A1D60 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A2964 800A1D64 26100001 */  addiu $s0, $s0, 1
.L800A1D68:
/* 0A2968 800A1D68 24010003 */  li    $at, 3
/* 0A296C 800A1D6C 26730004 */  addiu $s3, $s3, 4
/* 0A2970 800A1D70 1601FFC7 */  bne   $s0, $at, .L800A1C90
/* 0A2974 800A1D74 2694000D */   addiu $s4, $s4, 0xd
/* 0A2978 800A1D78 3C188019 */  lui   $t8, %hi(gCourseRecordsMenuSelection) # $t8, 0x8019
/* 0A297C 800A1D7C 8318EDF8 */  lb    $t8, %lo(gCourseRecordsMenuSelection)($t8)
/* 0A2980 800A1D80 240E001F */  li    $t6, 31
/* 0A2984 800A1D84 A7AE0078 */  sh    $t6, 0x78($sp)
/* 0A2988 800A1D88 00187880 */  sll   $t7, $t8, 2
/* 0A298C 800A1D8C 01F87823 */  subu  $t7, $t7, $t8
/* 0A2990 800A1D90 000F7880 */  sll   $t7, $t7, 2
/* 0A2994 800A1D94 01F87821 */  addu  $t7, $t7, $t8
/* 0A2998 800A1D98 25F9003A */  addiu $t9, $t7, 0x3a
/* 0A299C 800A1D9C A7B9007A */  sh    $t9, 0x7a($sp)
/* 0A29A0 800A1DA0 8FA40090 */  lw    $a0, 0x90($sp)
/* 0A29A4 800A1DA4 0C0299AA */  jal   func_800A66A8
/* 0A29A8 800A1DA8 27A50078 */   addiu $a1, $sp, 0x78
/* 0A29AC 800A1DAC 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0A29B0 800A1DB0 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A29B4 800A1DB4 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A29B8 800A1DB8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0A29BC 800A1DBC 8FB20030 */  lw    $s2, 0x30($sp)
/* 0A29C0 800A1DC0 8FB30034 */  lw    $s3, 0x34($sp)
/* 0A29C4 800A1DC4 8FB40038 */  lw    $s4, 0x38($sp)
/* 0A29C8 800A1DC8 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0A29CC 800A1DCC 8FB60040 */  lw    $s6, 0x40($sp)
/* 0A29D0 800A1DD0 8FB70044 */  lw    $s7, 0x44($sp)
/* 0A29D4 800A1DD4 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0A29D8 800A1DD8 03E00008 */  jr    $ra
/* 0A29DC 800A1DDC 27BD0090 */   addiu $sp, $sp, 0x90
