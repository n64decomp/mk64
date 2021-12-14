glabel func_800A3C84
/* 0A4884 800A3C84 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0A4888 800A3C88 AFB20030 */  sw    $s2, 0x30($sp)
/* 0A488C 800A3C8C 00809025 */  move  $s2, $a0
/* 0A4890 800A3C90 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0A4894 800A3C94 AFB40038 */  sw    $s4, 0x38($sp)
/* 0A4898 800A3C98 AFB30034 */  sw    $s3, 0x34($sp)
/* 0A489C 800A3C9C AFB1002C */  sw    $s1, 0x2c($sp)
/* 0A48A0 800A3CA0 AFB00028 */  sw    $s0, 0x28($sp)
/* 0A48A4 800A3CA4 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A48A8 800A3CA8 0C024C36 */  jal   set_text_color
/* 0A48AC 800A3CAC 24040004 */   li    $a0, 4
/* 0A48B0 800A3CB0 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0A48B4 800A3CB4 3C188019 */  lui   $t8, %hi(gCupCourseSelection) # $t8, 0x8019
/* 0A48B8 800A3CB8 8318EE0B */  lb    $t8, %lo(gCupCourseSelection)($t8)
/* 0A48BC 800A3CBC 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0A48C0 800A3CC0 3C09800F */  lui   $t1, %hi(gCupTrackOrder)
/* 0A48C4 800A3CC4 0018C840 */  sll   $t9, $t8, 1
/* 0A48C8 800A3CC8 000E78C0 */  sll   $t7, $t6, 3
/* 0A48CC 800A3CCC 01F94021 */  addu  $t0, $t7, $t9
/* 0A48D0 800A3CD0 01284821 */  addu  $t1, $t1, $t0
/* 0A48D4 800A3CD4 85292BB4 */  lh    $t1, %lo(gCupTrackOrder)($t1)
/* 0A48D8 800A3CD8 3C01800F */  lui   $at, %hi(D_800F1CC8) # $at, 0x800f
/* 0A48DC 800A3CDC C4201CC8 */  lwc1  $f0, %lo(D_800F1CC8)($at)
/* 0A48E0 800A3CE0 8E44000C */  lw    $a0, 0xc($s2)
/* 0A48E4 800A3CE4 8E450010 */  lw    $a1, 0x10($s2)
/* 0A48E8 800A3CE8 3C06800E */  lui   $a2, %hi(D_800E7574)
/* 0A48EC 800A3CEC 00095080 */  sll   $t2, $t1, 2
/* 0A48F0 800A3CF0 00CA3021 */  addu  $a2, $a2, $t2
/* 0A48F4 800A3CF4 8CC67574 */  lw    $a2, %lo(D_800E7574)($a2)
/* 0A48F8 800A3CF8 00003825 */  move  $a3, $zero
/* 0A48FC 800A3CFC E7A00014 */  swc1  $f0, 0x14($sp)
/* 0A4900 800A3D00 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A4904 800A3D04 24840043 */  addiu $a0, $a0, 0x43
/* 0A4908 800A3D08 0C024DBB */  jal   draw_text
/* 0A490C 800A3D0C 24A50019 */   addiu $a1, $a1, 0x19
/* 0A4910 800A3D10 0C024C36 */  jal   set_text_color
/* 0A4914 800A3D14 24040003 */   li    $a0, 3
/* 0A4918 800A3D18 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A491C 800A3D1C 4481A000 */  mtc1  $at, $f20
/* 0A4920 800A3D20 8E44000C */  lw    $a0, 0xc($s2)
/* 0A4924 800A3D24 8E450010 */  lw    $a1, 0x10($s2)
/* 0A4928 800A3D28 3C06800E */  lui   $a2, %hi(D_800E7730) # $a2, 0x800e
/* 0A492C 800A3D2C 8CC67730 */  lw    $a2, %lo(D_800E7730)($a2)
/* 0A4930 800A3D30 00003825 */  move  $a3, $zero
/* 0A4934 800A3D34 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4938 800A3D38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A493C 800A3D3C 24840046 */  addiu $a0, $a0, 0x46
/* 0A4940 800A3D40 0C024DBB */  jal   draw_text
/* 0A4944 800A3D44 24A50028 */   addiu $a1, $a1, 0x28
/* 0A4948 800A3D48 00008025 */  move  $s0, $zero
/* 0A494C 800A3D4C 00008825 */  move  $s1, $zero
.L800A3D50:
/* 0A4950 800A3D50 8E4B0010 */  lw    $t3, 0x10($s2)
/* 0A4954 800A3D54 8E45000C */  lw    $a1, 0xc($s2)
/* 0A4958 800A3D58 02002025 */  move  $a0, $s0
/* 0A495C 800A3D5C 01713021 */  addu  $a2, $t3, $s1
/* 0A4960 800A3D60 24C60037 */  addiu $a2, $a2, 0x37
/* 0A4964 800A3D64 0C029154 */  jal   func_800A4550
/* 0A4968 800A3D68 24A50017 */   addiu $a1, $a1, 0x17
/* 0A496C 800A3D6C 26100001 */  addiu $s0, $s0, 1
/* 0A4970 800A3D70 2A010004 */  slti  $at, $s0, 4
/* 0A4974 800A3D74 1420FFF6 */  bnez  $at, .L800A3D50
/* 0A4978 800A3D78 2631000F */   addiu $s1, $s1, 0xf
/* 0A497C 800A3D7C 0C024C36 */  jal   set_text_color
/* 0A4980 800A3D80 24040003 */   li    $a0, 3
/* 0A4984 800A3D84 8E4C000C */  lw    $t4, 0xc($s2)
/* 0A4988 800A3D88 8E450010 */  lw    $a1, 0x10($s2)
/* 0A498C 800A3D8C 240D00B4 */  li    $t5, 180
/* 0A4990 800A3D90 3C06800E */  lui   $a2, %hi(D_800E7728) # $a2, 0x800e
/* 0A4994 800A3D94 8CC67728 */  lw    $a2, %lo(D_800E7728)($a2)
/* 0A4998 800A3D98 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A499C 800A3D9C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A49A0 800A3DA0 00003825 */  move  $a3, $zero
/* 0A49A4 800A3DA4 01AC2023 */  subu  $a0, $t5, $t4
/* 0A49A8 800A3DA8 0C024CC9 */  jal   func_80093324
/* 0A49AC 800A3DAC 24A50086 */   addiu $a1, $a1, 0x86
/* 0A49B0 800A3DB0 00008025 */  move  $s0, $zero
/* 0A49B4 800A3DB4 00008825 */  move  $s1, $zero
/* 0A49B8 800A3DB8 241400AA */  li    $s4, 170
/* 0A49BC 800A3DBC 24130005 */  li    $s3, 5
.L800A3DC0:
/* 0A49C0 800A3DC0 0C024C36 */  jal   set_text_color
/* 0A49C4 800A3DC4 24040002 */   li    $a0, 2
/* 0A49C8 800A3DC8 8E580010 */  lw    $t8, 0x10($s2)
/* 0A49CC 800A3DCC 8E4E000C */  lw    $t6, 0xc($s2)
/* 0A49D0 800A3DD0 02002025 */  move  $a0, $s0
/* 0A49D4 800A3DD4 03113021 */  addu  $a2, $t8, $s1
/* 0A49D8 800A3DD8 24C60092 */  addiu $a2, $a2, 0x92
/* 0A49DC 800A3DDC 0C0291D3 */  jal   func_800A474C
/* 0A49E0 800A3DE0 028E2823 */   subu  $a1, $s4, $t6
/* 0A49E4 800A3DE4 26100001 */  addiu $s0, $s0, 1
/* 0A49E8 800A3DE8 1613FFF5 */  bne   $s0, $s3, .L800A3DC0
/* 0A49EC 800A3DEC 2631000D */   addiu $s1, $s1, 0xd
/* 0A49F0 800A3DF0 0C024C36 */  jal   set_text_color
/* 0A49F4 800A3DF4 24040003 */   li    $a0, 3
/* 0A49F8 800A3DF8 8E4F000C */  lw    $t7, 0xc($s2)
/* 0A49FC 800A3DFC 8E450010 */  lw    $a1, 0x10($s2)
/* 0A4A00 800A3E00 241900B4 */  li    $t9, 180
/* 0A4A04 800A3E04 3C06800E */  lui   $a2, %hi(D_800E772C) # $a2, 0x800e
/* 0A4A08 800A3E08 8CC6772C */  lw    $a2, %lo(D_800E772C)($a2)
/* 0A4A0C 800A3E0C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A4A10 800A3E10 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A4A14 800A3E14 00003825 */  move  $a3, $zero
/* 0A4A18 800A3E18 032F2023 */  subu  $a0, $t9, $t7
/* 0A4A1C 800A3E1C 0C024CC9 */  jal   func_80093324
/* 0A4A20 800A3E20 24A500D5 */   addiu $a1, $a1, 0xd5
/* 0A4A24 800A3E24 8E48000C */  lw    $t0, 0xc($s2)
/* 0A4A28 800A3E28 8E460010 */  lw    $a2, 0x10($s2)
/* 0A4A2C 800A3E2C 24040005 */  li    $a0, 5
/* 0A4A30 800A3E30 02882823 */  subu  $a1, $s4, $t0
/* 0A4A34 800A3E34 0C0291D3 */  jal   func_800A474C
/* 0A4A38 800A3E38 24C600E1 */   addiu $a2, $a2, 0xe1
/* 0A4A3C 800A3E3C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0A4A40 800A3E40 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A4A44 800A3E44 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A4A48 800A3E48 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0A4A4C 800A3E4C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0A4A50 800A3E50 8FB30034 */  lw    $s3, 0x34($sp)
/* 0A4A54 800A3E54 8FB40038 */  lw    $s4, 0x38($sp)
/* 0A4A58 800A3E58 03E00008 */  jr    $ra
/* 0A4A5C 800A3E5C 27BD0040 */   addiu $sp, $sp, 0x40
