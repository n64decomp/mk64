glabel func_80060BCC
/* 0617CC 80060BCC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0617D0 80060BD0 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0617D4 80060BD4 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 0617D8 80060BD8 AFB20030 */  sw    $s2, 0x30($sp)
/* 0617DC 80060BDC AFB00028 */  sw    $s0, 0x28($sp)
/* 0617E0 80060BE0 24010010 */  li    $at, 16
/* 0617E4 80060BE4 00C08025 */  move  $s0, $a2
/* 0617E8 80060BE8 00809025 */  move  $s2, $a0
/* 0617EC 80060BEC AFBF0034 */  sw    $ra, 0x34($sp)
/* 0617F0 80060BF0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0617F4 80060BF4 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0617F8 80060BF8 104100CF */  beq   $v0, $at, .L80060F38
/* 0617FC 80060BFC AFA70064 */   sw    $a3, 0x64($sp)
/* 061800 80060C00 2401000D */  li    $at, 13
/* 061804 80060C04 504100CD */  beql  $v0, $at, .L80060F3C
/* 061808 80060C08 8FBF0034 */   lw    $ra, 0x34($sp)
/* 06180C 80060C0C 0C0ADF8D */  jal   random_int
/* 061810 80060C10 24040168 */   li    $a0, 360
/* 061814 80060C14 244EFF4C */  addiu $t6, $v0, -0xb4
/* 061818 80060C18 AFAE0054 */  sw    $t6, 0x54($sp)
/* 06181C 80060C1C 0C0ADF8D */  jal   random_int
/* 061820 80060C20 24040006 */   li    $a0, 6
/* 061824 80060C24 AFA2004C */  sw    $v0, 0x4c($sp)
/* 061828 80060C28 0C0ADF8D */  jal   random_int
/* 06182C 80060C2C 24040006 */   li    $a0, 6
/* 061830 80060C30 44822000 */  mtc1  $v0, $f4
/* 061834 80060C34 24040003 */  li    $a0, 3
/* 061838 80060C38 04410005 */  bgez  $v0, .L80060C50
/* 06183C 80060C3C 468021A0 */   cvt.s.w $f6, $f4
/* 061840 80060C40 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 061844 80060C44 44814000 */  mtc1  $at, $f8
/* 061848 80060C48 00000000 */  nop   
/* 06184C 80060C4C 46083180 */  add.s $f6, $f6, $f8
.L80060C50:
/* 061850 80060C50 0C0ADF8D */  jal   random_int
/* 061854 80060C54 E7A60044 */   swc1  $f6, 0x44($sp)
/* 061858 80060C58 44825000 */  mtc1  $v0, $f10
/* 06185C 80060C5C 3C0F800E */  lui   $t7, %hi(D_800DC4DC) # $t7, 0x800e
/* 061860 80060C60 04410005 */  bgez  $v0, .L80060C78
/* 061864 80060C64 46805420 */   cvt.s.w $f16, $f10
/* 061868 80060C68 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 06186C 80060C6C 44819000 */  mtc1  $at, $f18
/* 061870 80060C70 00000000 */  nop   
/* 061874 80060C74 46128400 */  add.s $f16, $f16, $f18
.L80060C78:
/* 061878 80060C78 8DEFC4DC */  lw    $t7, %lo(D_800DC4DC)($t7)
/* 06187C 80060C7C E7B00048 */  swc1  $f16, 0x48($sp)
/* 061880 80060C80 87A8005E */  lh    $t0, 0x5e($sp)
/* 061884 80060C84 564F00AD */  bnel  $s2, $t7, .L80060F3C
/* 061888 80060C88 8FBF0034 */   lw    $ra, 0x34($sp)
/* 06188C 80060C8C 15000057 */  bnez  $t0, .L80060DEC
/* 061890 80060C90 24030048 */   li    $v1, 72
/* 061894 80060C94 02030019 */  multu $s0, $v1
/* 061898 80060C98 0000C012 */  mflo  $t8
/* 06189C 80060C9C 02581021 */  addu  $v0, $s2, $t8
/* 0618A0 80060CA0 84590546 */  lh    $t9, 0x546($v0)
/* 0618A4 80060CA4 1F200004 */  bgtz  $t9, .L80060CB8
/* 0618A8 80060CA8 00000000 */   nop   
/* 0618AC 80060CAC 84490544 */  lh    $t1, 0x544($v0)
/* 0618B0 80060CB0 5520004F */  bnel  $t1, $zero, .L80060DF0
/* 0618B4 80060CB4 24030048 */   li    $v1, 72
.L80060CB8:
/* 0618B8 80060CB8 01030019 */  multu $t0, $v1
/* 0618BC 80060CBC 44800000 */  mtc1  $zero, $f0
/* 0618C0 80060CC0 02402025 */  move  $a0, $s2
/* 0618C4 80060CC4 AFA00014 */  sw    $zero, 0x14($sp)
/* 0618C8 80060CC8 44060000 */  mfc1  $a2, $f0
/* 0618CC 80060CCC 44070000 */  mfc1  $a3, $f0
/* 0618D0 80060CD0 AFA00018 */  sw    $zero, 0x18($sp)
/* 0618D4 80060CD4 E7A00010 */  swc1  $f0, 0x10($sp)
/* 0618D8 80060CD8 00005012 */  mflo  $t2
/* 0618DC 80060CDC 024A8021 */  addu  $s0, $s2, $t2
/* 0618E0 80060CE0 26110528 */  addiu $s1, $s0, 0x528
/* 0618E4 80060CE4 0C0175E5 */  jal   func_8005D794
/* 0618E8 80060CE8 02202825 */   move  $a1, $s1
/* 0618EC 80060CEC 3C063ECC */  lui   $a2, (0x3ECCCCCD >> 16) # lui $a2, 0x3ecc
/* 0618F0 80060CF0 34C6CCCD */  ori   $a2, (0x3ECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 0618F4 80060CF4 02202025 */  move  $a0, $s1
/* 0618F8 80060CF8 0C0175F6 */  jal   func_8005D7D8
/* 0618FC 80060CFC 2405000B */   li    $a1, 11
/* 061900 80060D00 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 061904 80060D04 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 061908 80060D08 02202025 */  move  $a0, $s1
/* 06190C 80060D0C 0C017600 */  jal   func_8005D800
/* 061910 80060D10 240600FF */   li    $a2, 255
/* 061914 80060D14 8FA40054 */  lw    $a0, 0x54($sp)
/* 061918 80060D18 00045880 */  sll   $t3, $a0, 2
/* 06191C 80060D1C 01645823 */  subu  $t3, $t3, $a0
/* 061920 80060D20 000B58C0 */  sll   $t3, $t3, 3
/* 061924 80060D24 01645823 */  subu  $t3, $t3, $a0
/* 061928 80060D28 000B5880 */  sll   $t3, $t3, 2
/* 06192C 80060D2C 01645823 */  subu  $t3, $t3, $a0
/* 061930 80060D30 000B5840 */  sll   $t3, $t3, 1
/* 061934 80060D34 3164FFFF */  andi  $a0, $t3, 0xffff
/* 061938 80060D38 0C0AE00E */  jal   func_802B8038
/* 06193C 80060D3C AFA4003C */   sw    $a0, 0x3c($sp)
/* 061940 80060D40 3C01800F */  lui   $at, %hi(D_800EE588)
/* 061944 80060D44 D428E588 */  ldc1  $f8, %lo(D_800EE588)($at)
/* 061948 80060D48 46000121 */  cvt.d.s $f4, $f0
/* 06194C 80060D4C C64A001C */  lwc1  $f10, 0x1c($s2)
/* 061950 80060D50 46282182 */  mul.d $f6, $f4, $f8
/* 061954 80060D54 8FA4003C */  lw    $a0, 0x3c($sp)
/* 061958 80060D58 460054A1 */  cvt.d.s $f18, $f10
/* 06195C 80060D5C 46323400 */  add.d $f16, $f6, $f18
/* 061960 80060D60 46208120 */  cvt.s.d $f4, $f16
/* 061964 80060D64 0C0AE006 */  jal   func_802B8018
/* 061968 80060D68 E6040530 */   swc1  $f4, 0x530($s0)
/* 06196C 80060D6C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 061970 80060D70 44811000 */  mtc1  $at, $f2
/* 061974 80060D74 3C01800F */  lui   $at, %hi(D_800EE590)
/* 061978 80060D78 D42AE590 */  ldc1  $f10, %lo(D_800EE590)($at)
/* 06197C 80060D7C 46000221 */  cvt.d.s $f8, $f0
/* 061980 80060D80 C6520014 */  lwc1  $f18, 0x14($s2)
/* 061984 80060D84 462A4182 */  mul.d $f6, $f8, $f10
/* 061988 80060D88 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06198C 80060D8C 46009421 */  cvt.d.s $f16, $f18
/* 061990 80060D90 46303100 */  add.d $f4, $f6, $f16
/* 061994 80060D94 46202220 */  cvt.s.d $f8, $f4
/* 061998 80060D98 E6080528 */  swc1  $f8, 0x528($s0)
/* 06199C 80060D9C 8FAD004C */  lw    $t5, 0x4c($sp)
/* 0619A0 80060DA0 C6520070 */  lwc1  $f18, 0x70($s2)
/* 0619A4 80060DA4 C64A0018 */  lwc1  $f10, 0x18($s2)
/* 0619A8 80060DA8 448D8000 */  mtc1  $t5, $f16
/* 0619AC 80060DAC 46125181 */  sub.s $f6, $f10, $f18
/* 0619B0 80060DB0 46808120 */  cvt.s.w $f4, $f16
/* 0619B4 80060DB4 44818000 */  mtc1  $at, $f16
/* 0619B8 80060DB8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0619BC 80060DBC 46043200 */  add.s $f8, $f6, $f4
/* 0619C0 80060DC0 46024280 */  add.s $f10, $f8, $f2
/* 0619C4 80060DC4 E60A052C */  swc1  $f10, 0x52c($s0)
/* 0619C8 80060DC8 C7B20044 */  lwc1  $f18, 0x44($sp)
/* 0619CC 80060DCC 44815000 */  mtc1  $at, $f10
/* 0619D0 80060DD0 46109180 */  add.s $f6, $f18, $f16
/* 0619D4 80060DD4 E6060540 */  swc1  $f6, 0x540($s0)
/* 0619D8 80060DD8 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 0619DC 80060DDC 46022200 */  add.s $f8, $f4, $f2
/* 0619E0 80060DE0 460A4483 */  div.s $f18, $f8, $f10
/* 0619E4 80060DE4 10000054 */  b     .L80060F38
/* 0619E8 80060DE8 E6120534 */   swc1  $f18, 0x534($s0)
.L80060DEC:
/* 0619EC 80060DEC 24030048 */  li    $v1, 72
.L80060DF0:
/* 0619F0 80060DF0 02030019 */  multu $s0, $v1
/* 0619F4 80060DF4 00007012 */  mflo  $t6
/* 0619F8 80060DF8 024E7821 */  addu  $t7, $s2, $t6
/* 0619FC 80060DFC 85F80546 */  lh    $t8, 0x546($t7)
/* 061A00 80060E00 5B00004E */  blezl $t8, .L80060F3C
/* 061A04 80060E04 8FBF0034 */   lw    $ra, 0x34($sp)
/* 061A08 80060E08 01030019 */  multu $t0, $v1
/* 061A0C 80060E0C 44800000 */  mtc1  $zero, $f0
/* 061A10 80060E10 02402025 */  move  $a0, $s2
/* 061A14 80060E14 AFA00014 */  sw    $zero, 0x14($sp)
/* 061A18 80060E18 44060000 */  mfc1  $a2, $f0
/* 061A1C 80060E1C 44070000 */  mfc1  $a3, $f0
/* 061A20 80060E20 AFA00018 */  sw    $zero, 0x18($sp)
/* 061A24 80060E24 E7A00010 */  swc1  $f0, 0x10($sp)
/* 061A28 80060E28 0000C812 */  mflo  $t9
/* 061A2C 80060E2C 02598021 */  addu  $s0, $s2, $t9
/* 061A30 80060E30 26110528 */  addiu $s1, $s0, 0x528
/* 061A34 80060E34 0C0175E5 */  jal   func_8005D794
/* 061A38 80060E38 02202825 */   move  $a1, $s1
/* 061A3C 80060E3C 3C063ECC */  lui   $a2, (0x3ECCCCCD >> 16) # lui $a2, 0x3ecc
/* 061A40 80060E40 34C6CCCD */  ori   $a2, (0x3ECCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 061A44 80060E44 02202025 */  move  $a0, $s1
/* 061A48 80060E48 0C0175F6 */  jal   func_8005D7D8
/* 061A4C 80060E4C 2405000B */   li    $a1, 11
/* 061A50 80060E50 3C0500FF */  lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* 061A54 80060E54 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 061A58 80060E58 02202025 */  move  $a0, $s1
/* 061A5C 80060E5C 0C017600 */  jal   func_8005D800
/* 061A60 80060E60 240600FF */   li    $a2, 255
/* 061A64 80060E64 8FA40054 */  lw    $a0, 0x54($sp)
/* 061A68 80060E68 00044880 */  sll   $t1, $a0, 2
/* 061A6C 80060E6C 01244823 */  subu  $t1, $t1, $a0
/* 061A70 80060E70 000948C0 */  sll   $t1, $t1, 3
/* 061A74 80060E74 01244823 */  subu  $t1, $t1, $a0
/* 061A78 80060E78 00094880 */  sll   $t1, $t1, 2
/* 061A7C 80060E7C 01244823 */  subu  $t1, $t1, $a0
/* 061A80 80060E80 00094840 */  sll   $t1, $t1, 1
/* 061A84 80060E84 3124FFFF */  andi  $a0, $t1, 0xffff
/* 061A88 80060E88 0C0AE00E */  jal   func_802B8038
/* 061A8C 80060E8C AFA4003C */   sw    $a0, 0x3c($sp)
/* 061A90 80060E90 3C01800F */  lui   $at, %hi(D_800EE598)
/* 061A94 80060E94 D426E598 */  ldc1  $f6, %lo(D_800EE598)($at)
/* 061A98 80060E98 46000421 */  cvt.d.s $f16, $f0
/* 061A9C 80060E9C C648001C */  lwc1  $f8, 0x1c($s2)
/* 061AA0 80060EA0 46268102 */  mul.d $f4, $f16, $f6
/* 061AA4 80060EA4 8FA4003C */  lw    $a0, 0x3c($sp)
/* 061AA8 80060EA8 460042A1 */  cvt.d.s $f10, $f8
/* 061AAC 80060EAC 462A2480 */  add.d $f18, $f4, $f10
/* 061AB0 80060EB0 46209420 */  cvt.s.d $f16, $f18
/* 061AB4 80060EB4 0C0AE006 */  jal   func_802B8018
/* 061AB8 80060EB8 E6100530 */   swc1  $f16, 0x530($s0)
/* 061ABC 80060EBC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 061AC0 80060EC0 44811000 */  mtc1  $at, $f2
/* 061AC4 80060EC4 3C01800F */  lui   $at, %hi(D_800EE5A0)
/* 061AC8 80060EC8 D428E5A0 */  ldc1  $f8, %lo(D_800EE5A0)($at)
/* 061ACC 80060ECC 460001A1 */  cvt.d.s $f6, $f0
/* 061AD0 80060ED0 C64A0014 */  lwc1  $f10, 0x14($s2)
/* 061AD4 80060ED4 46283102 */  mul.d $f4, $f6, $f8
/* 061AD8 80060ED8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 061ADC 80060EDC 460054A1 */  cvt.d.s $f18, $f10
/* 061AE0 80060EE0 46322400 */  add.d $f16, $f4, $f18
/* 061AE4 80060EE4 462081A0 */  cvt.s.d $f6, $f16
/* 061AE8 80060EE8 E6060528 */  swc1  $f6, 0x528($s0)
/* 061AEC 80060EEC 8FAB004C */  lw    $t3, 0x4c($sp)
/* 061AF0 80060EF0 C64A0070 */  lwc1  $f10, 0x70($s2)
/* 061AF4 80060EF4 C6480018 */  lwc1  $f8, 0x18($s2)
/* 061AF8 80060EF8 448B9000 */  mtc1  $t3, $f18
/* 061AFC 80060EFC 460A4101 */  sub.s $f4, $f8, $f10
/* 061B00 80060F00 46809420 */  cvt.s.w $f16, $f18
/* 061B04 80060F04 44819000 */  mtc1  $at, $f18
/* 061B08 80060F08 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 061B0C 80060F0C 46102180 */  add.s $f6, $f4, $f16
/* 061B10 80060F10 46023200 */  add.s $f8, $f6, $f2
/* 061B14 80060F14 E608052C */  swc1  $f8, 0x52c($s0)
/* 061B18 80060F18 C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 061B1C 80060F1C 44814000 */  mtc1  $at, $f8
/* 061B20 80060F20 46125100 */  add.s $f4, $f10, $f18
/* 061B24 80060F24 E6040540 */  swc1  $f4, 0x540($s0)
/* 061B28 80060F28 C7B00048 */  lwc1  $f16, 0x48($sp)
/* 061B2C 80060F2C 46028180 */  add.s $f6, $f16, $f2
/* 061B30 80060F30 46083283 */  div.s $f10, $f6, $f8
/* 061B34 80060F34 E60A0534 */  swc1  $f10, 0x534($s0)
.L80060F38:
/* 061B38 80060F38 8FBF0034 */  lw    $ra, 0x34($sp)
.L80060F3C:
/* 061B3C 80060F3C 8FB00028 */  lw    $s0, 0x28($sp)
/* 061B40 80060F40 8FB1002C */  lw    $s1, 0x2c($sp)
/* 061B44 80060F44 8FB20030 */  lw    $s2, 0x30($sp)
/* 061B48 80060F48 03E00008 */  jr    $ra
/* 061B4C 80060F4C 27BD0058 */   addiu $sp, $sp, 0x58
