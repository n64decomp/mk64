.section .late_rodata

glabel D_800ED260
.float 0.1

glabel D_800ED264
.float -0.1

glabel D_800ED268
.float 16.666666031
.word 0x00000000

.section .text

glabel func_80016C3C
/* 01783C 80016C3C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 017840 80016C40 AFBF0024 */  sw    $ra, 0x24($sp)
/* 017844 80016C44 AFA40068 */  sw    $a0, 0x68($sp)
/* 017848 80016C48 AFB20020 */  sw    $s2, 0x20($sp)
/* 01784C 80016C4C AFB1001C */  sw    $s1, 0x1c($sp)
/* 017850 80016C50 AFB00018 */  sw    $s0, 0x18($sp)
/* 017854 80016C54 AFA5006C */  sw    $a1, 0x6c($sp)
/* 017858 80016C58 AFA60070 */  sw    $a2, 0x70($sp)
/* 01785C 80016C5C 0C0ADF8D */  jal   random_int
/* 017860 80016C60 24040064 */   li    $a0, 100
/* 017864 80016C64 28410032 */  slti  $at, $v0, 0x32
/* 017868 80016C68 1020000B */  beqz  $at, .L80016C98
/* 01786C 80016C6C 3C0C8016 */   lui   $t4, %hi(D_80163DD8) # $t4, 0x8016
/* 017870 80016C70 8FA70070 */  lw    $a3, 0x70($sp)
/* 017874 80016C74 3C0F8016 */  lui   $t7, %hi(D_80164688) # $t7, 0x8016
/* 017878 80016C78 3C01800F */  lui   $at, %hi(D_800ED260) # $at, 0x800f
/* 01787C 80016C7C C424D260 */  lwc1  $f4, %lo(D_800ED260)($at)
/* 017880 80016C80 25EF4688 */  addiu $t7, %lo(D_80164688) # addiu $t7, $t7, 0x4688
/* 017884 80016C84 00077080 */  sll   $t6, $a3, 2
/* 017888 80016C88 01CF9021 */  addu  $s2, $t6, $t7
/* 01788C 80016C8C 01C03825 */  move  $a3, $t6
/* 017890 80016C90 1000000A */  b     .L80016CBC
/* 017894 80016C94 E6440000 */   swc1  $f4, ($s2)
.L80016C98:
/* 017898 80016C98 8FA70070 */  lw    $a3, 0x70($sp)
/* 01789C 80016C9C 3C01800F */  lui   $at, %hi(D_800ED264) # $at, 0x800f
/* 0178A0 80016CA0 C426D264 */  lwc1  $f6, %lo(D_800ED264)($at)
/* 0178A4 80016CA4 3C198016 */  lui   $t9, %hi(D_80164688) # $t9, 0x8016
/* 0178A8 80016CA8 27394688 */  addiu $t9, %lo(D_80164688) # addiu $t9, $t9, 0x4688
/* 0178AC 80016CAC 0007C080 */  sll   $t8, $a3, 2
/* 0178B0 80016CB0 03199021 */  addu  $s2, $t8, $t9
/* 0178B4 80016CB4 03003825 */  move  $a3, $t8
/* 0178B8 80016CB8 E6460000 */  swc1  $f6, ($s2)
.L80016CBC:
/* 0178BC 80016CBC 258C3DD8 */  addiu $t4, %lo(D_80163DD8) # addiu $t4, $t4, 0x3dd8
/* 0178C0 80016CC0 00EC1821 */  addu  $v1, $a3, $t4
/* 0178C4 80016CC4 AC600000 */  sw    $zero, ($v1)
/* 0178C8 80016CC8 3C0D800E */  lui   $t5, %hi(gCurrentCourseId)
/* 0178CC 80016CCC 85ADC5A0 */  lh    $t5, %lo(gCurrentCourseId)($t5)
/* 0178D0 80016CD0 24010004 */  li    $at, 4
/* 0178D4 80016CD4 55A1000B */  bnel  $t5, $at, .L80016D04
/* 0178D8 80016CD8 8C6E0000 */   lw    $t6, ($v1)
/* 0178DC 80016CDC 24040004 */  li    $a0, 4
/* 0178E0 80016CE0 AFA30034 */  sw    $v1, 0x34($sp)
/* 0178E4 80016CE4 0C0ADF8D */  jal   random_int
/* 0178E8 80016CE8 AFA7003C */   sw    $a3, 0x3c($sp)
/* 0178EC 80016CEC 8FA30034 */  lw    $v1, 0x34($sp)
/* 0178F0 80016CF0 44804000 */  mtc1  $zero, $f8
/* 0178F4 80016CF4 8FA7003C */  lw    $a3, 0x3c($sp)
/* 0178F8 80016CF8 AC620000 */  sw    $v0, ($v1)
/* 0178FC 80016CFC E6480000 */  swc1  $f8, ($s2)
/* 017900 80016D00 8C6E0000 */  lw    $t6, ($v1)
.L80016D04:
/* 017904 80016D04 8FB80070 */  lw    $t8, 0x70($sp)
/* 017908 80016D08 3C0C8016 */  lui   $t4, %hi(gNearestWaypointByCameraId) # $t4, 0x8016
/* 01790C 80016D0C 3C108016 */  lui   $s0, %hi(gWaypointCountByPathIndex) # 0x8016
/* 017910 80016D10 258C4668 */  addiu $t4, %lo(gNearestWaypointByCameraId) # addiu $t4, $t4, 0x4668
/* 017914 80016D14 000E7840 */  sll   $t7, $t6, 1
/* 017918 80016D18 0018C840 */  sll   $t9, $t8, 1
/* 01791C 80016D1C 020F8021 */  addu  $s0, $s0, $t7
/* 017920 80016D20 032C8821 */  addu  $s1, $t9, $t4
/* 017924 80016D24 961045C8 */  lhu   $s0, %lo(gWaypointCountByPathIndex)($s0) # 0x45c8($s0)
/* 017928 80016D28 862D0000 */  lh    $t5, ($s1)
/* 01792C 80016D2C 8E450000 */  lw    $a1, ($s2)
/* 017930 80016D30 00003025 */  move  $a2, $zero
/* 017934 80016D34 01B0001A */  div   $zero, $t5, $s0
/* 017938 80016D38 00007010 */  mfhi  $t6
/* 01793C 80016D3C A62E0000 */  sh    $t6, ($s1)
/* 017940 80016D40 16000002 */  bnez  $s0, .L80016D4C
/* 017944 80016D44 00000000 */   nop
/* 017948 80016D48 0007000D */  break 7
.L80016D4C:
/* 01794C 80016D4C 2401FFFF */  li    $at, -1
/* 017950 80016D50 16010004 */  bne   $s0, $at, .L80016D64
/* 017954 80016D54 3C018000 */   lui   $at, 0x8000
/* 017958 80016D58 15A10002 */  bne   $t5, $at, .L80016D64
/* 01795C 80016D5C 00000000 */   nop
/* 017960 80016D60 0006000D */  break 6
.L80016D64:
/* 017964 80016D64 31C4FFFF */  andi  $a0, $t6, 0xffff
/* 017968 80016D68 0C002EF6 */  jal   func_8000BBD8
/* 01796C 80016D6C AFA7003C */   sw    $a3, 0x3c($sp)
/* 017970 80016D70 8FA7003C */  lw    $a3, 0x3c($sp)
/* 017974 80016D74 86230000 */  lh    $v1, ($s1)
/* 017978 80016D78 3C188016 */  lui   $t8, %hi(D_80164618) # $t8, 0x8016
/* 01797C 80016D7C 27184618 */  addiu $t8, %lo(D_80164618) # addiu $t8, $t8, 0x4618
/* 017980 80016D80 00F85021 */  addu  $t2, $a3, $t8
/* 017984 80016D84 2478000A */  addiu $t8, $v1, 0xa
/* 017988 80016D88 0310001A */  div   $zero, $t8, $s0
/* 01798C 80016D8C 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 017990 80016D90 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 017994 80016D94 C50A0000 */  lwc1  $f10, ($t0)
/* 017998 80016D98 3C0F8016 */  lui   $t7, %hi(D_801645F8) # $t7, 0x8016
/* 01799C 80016D9C 25EF45F8 */  addiu $t7, %lo(D_801645F8) # addiu $t7, $t7, 0x45f8
/* 0179A0 80016DA0 00EF1021 */  addu  $v0, $a3, $t7
/* 0179A4 80016DA4 3C198016 */  lui   $t9, %hi(D_80164550) # $t9, 0x8016
/* 0179A8 80016DA8 E44A0000 */  swc1  $f10, ($v0)
/* 0179AC 80016DAC 8F394550 */  lw    $t9, %lo(D_80164550)($t9)
/* 0179B0 80016DB0 000360C0 */  sll   $t4, $v1, 3
/* 0179B4 80016DB4 00004810 */  mfhi  $t1
/* 0179B8 80016DB8 032C6821 */  addu  $t5, $t9, $t4
/* 0179BC 80016DBC 85AE0002 */  lh    $t6, 2($t5)
/* 0179C0 80016DC0 246D000B */  addiu $t5, $v1, 0xb
/* 0179C4 80016DC4 01B0001A */  div   $zero, $t5, $s0
/* 0179C8 80016DC8 448E8000 */  mtc1  $t6, $f16
/* 0179CC 80016DCC C5040008 */  lwc1  $f4, 8($t0)
/* 0179D0 80016DD0 3C0F8016 */  lui   $t7, %hi(D_80164638) # $t7, 0x8016
/* 0179D4 80016DD4 468084A0 */  cvt.s.w $f18, $f16
/* 0179D8 80016DD8 25EF4638 */  addiu $t7, %lo(D_80164638) # addiu $t7, $t7, 0x4638
/* 0179DC 80016DDC 00EF5821 */  addu  $t3, $a3, $t7
/* 0179E0 80016DE0 3C01800F */  lui   $at, %hi(D_800ED268) # $at, 0x800f
/* 0179E4 80016DE4 E5640000 */  swc1  $f4, ($t3)
/* 0179E8 80016DE8 44804000 */  mtc1  $zero, $f8
/* 0179EC 80016DEC E5520000 */  swc1  $f18, ($t2)
/* 0179F0 80016DF0 C426D268 */  lwc1  $f6, %lo(D_800ED268)($at)
/* 0179F4 80016DF4 3C018016 */  lui   $at, %hi(D_80164658)
/* 0179F8 80016DF8 00270821 */  addu  $at, $at, $a3
/* 0179FC 80016DFC E4264658 */  swc1  $f6, %lo(D_80164658)($at)
/* 017A00 80016E00 3C018016 */  lui   $at, %hi(D_80164648)
/* 017A04 80016E04 00270821 */  addu  $at, $at, $a3
/* 017A08 80016E08 E4284648 */  swc1  $f8, %lo(D_80164648)($at)
/* 017A0C 80016E0C 16000002 */  bnez  $s0, .L80016E18
/* 017A10 80016E10 00000000 */   nop
/* 017A14 80016E14 0007000D */  break 7
.L80016E18:
/* 017A18 80016E18 2401FFFF */  li    $at, -1
/* 017A1C 80016E1C 16010004 */  bne   $s0, $at, .L80016E30
/* 017A20 80016E20 3C018000 */   lui   $at, 0x8000
/* 017A24 80016E24 17010002 */  bne   $t8, $at, .L80016E30
/* 017A28 80016E28 00000000 */   nop
/* 017A2C 80016E2C 0006000D */  break 6
.L80016E30:
/* 017A30 80016E30 0009CC00 */  sll   $t9, $t1, 0x10
/* 017A34 80016E34 00196403 */  sra   $t4, $t9, 0x10
/* 017A38 80016E38 01804825 */  move  $t1, $t4
/* 017A3C 80016E3C 16000002 */  bnez  $s0, .L80016E48
/* 017A40 80016E40 00000000 */   nop
/* 017A44 80016E44 0007000D */  break 7
.L80016E48:
/* 017A48 80016E48 2401FFFF */  li    $at, -1
/* 017A4C 80016E4C 16010004 */  bne   $s0, $at, .L80016E60
/* 017A50 80016E50 3C018000 */   lui   $at, 0x8000
/* 017A54 80016E54 15A10002 */  bne   $t5, $at, .L80016E60
/* 017A58 80016E58 00000000 */   nop
/* 017A5C 80016E5C 0006000D */  break 6
.L80016E60:
/* 017A60 80016E60 00007010 */  mfhi  $t6
/* 017A64 80016E64 A7AE0044 */  sh    $t6, 0x44($sp)
/* 017A68 80016E68 3124FFFF */  andi  $a0, $t1, 0xffff
/* 017A6C 80016E6C 8E450000 */  lw    $a1, ($s2)
/* 017A70 80016E70 AFAB0028 */  sw    $t3, 0x28($sp)
/* 017A74 80016E74 AFAA002C */  sw    $t2, 0x2c($sp)
/* 017A78 80016E78 AFA20034 */  sw    $v0, 0x34($sp)
/* 017A7C 80016E7C 0C002EF6 */  jal   func_8000BBD8
/* 017A80 80016E80 00003025 */   move  $a2, $zero
/* 017A84 80016E84 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 017A88 80016E88 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 017A8C 80016E8C C50A0000 */  lwc1  $f10, ($t0)
/* 017A90 80016E90 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 017A94 80016E94 44810800 */  mtc1  $at, $f1
/* 017A98 80016E98 44800000 */  mtc1  $zero, $f0
/* 017A9C 80016E9C C5040008 */  lwc1  $f4, 8($t0)
/* 017AA0 80016EA0 46005421 */  cvt.d.s $f16, $f10
/* 017AA4 80016EA4 97A40044 */  lhu   $a0, 0x44($sp)
/* 017AA8 80016EA8 46208482 */  mul.d $f18, $f16, $f0
/* 017AAC 80016EAC 460021A1 */  cvt.d.s $f6, $f4
/* 017AB0 80016EB0 8E450000 */  lw    $a1, ($s2)
/* 017AB4 80016EB4 00003025 */  move  $a2, $zero
/* 017AB8 80016EB8 46203202 */  mul.d $f8, $f6, $f0
/* 017ABC 80016EBC 462090A0 */  cvt.s.d $f2, $f18
/* 017AC0 80016EC0 46204320 */  cvt.s.d $f12, $f8
/* 017AC4 80016EC4 E7A2005C */  swc1  $f2, 0x5c($sp)
/* 017AC8 80016EC8 0C002EF6 */  jal   func_8000BBD8
/* 017ACC 80016ECC E7AC0054 */   swc1  $f12, 0x54($sp)
/* 017AD0 80016ED0 86230000 */  lh    $v1, ($s1)
/* 017AD4 80016ED4 3C088016 */  lui   $t0, %hi(D_80162FA0) # $t0, 0x8016
/* 017AD8 80016ED8 25082FA0 */  addiu $t0, %lo(D_80162FA0) # addiu $t0, $t0, 0x2fa0
/* 017ADC 80016EDC 246F0005 */  addiu $t7, $v1, 5
/* 017AE0 80016EE0 01F0001A */  div   $zero, $t7, $s0
/* 017AE4 80016EE4 00004810 */  mfhi  $t1
/* 017AE8 80016EE8 246C0006 */  addiu $t4, $v1, 6
/* 017AEC 80016EEC C5100000 */  lwc1  $f16, ($t0)
/* 017AF0 80016EF0 0190001A */  div   $zero, $t4, $s0
/* 017AF4 80016EF4 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 017AF8 80016EF8 44810800 */  mtc1  $at, $f1
/* 017AFC 80016EFC 44800000 */  mtc1  $zero, $f0
/* 017B00 80016F00 460084A1 */  cvt.d.s $f18, $f16
/* 017B04 80016F04 00002010 */  mfhi  $a0
/* 017B08 80016F08 46209102 */  mul.d $f4, $f18, $f0
/* 017B0C 80016F0C C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 017B10 80016F10 0009C400 */  sll   $t8, $t1, 0x10
/* 017B14 80016F14 00046C00 */  sll   $t5, $a0, 0x10
/* 017B18 80016F18 0018CC03 */  sra   $t9, $t8, 0x10
/* 017B1C 80016F1C 000D7403 */  sra   $t6, $t5, 0x10
/* 017B20 80016F20 03204825 */  move  $t1, $t9
/* 017B24 80016F24 460012A1 */  cvt.d.s $f10, $f2
/* 017B28 80016F28 000EC0C0 */  sll   $t8, $t6, 3
/* 017B2C 80016F2C 01C02025 */  move  $a0, $t6
/* 017B30 80016F30 000968C0 */  sll   $t5, $t1, 3
/* 017B34 80016F34 46245180 */  add.d $f6, $f10, $f4
/* 017B38 80016F38 C5100008 */  lwc1  $f16, 8($t0)
/* 017B3C 80016F3C C7AC0054 */  lwc1  $f12, 0x54($sp)
/* 017B40 80016F40 462030A0 */  cvt.s.d $f2, $f6
/* 017B44 80016F44 460084A1 */  cvt.d.s $f18, $f16
/* 017B48 80016F48 46006221 */  cvt.d.s $f8, $f12
/* 017B4C 80016F4C 46209282 */  mul.d $f10, $f18, $f0
/* 017B50 80016F50 462A4100 */  add.d $f4, $f8, $f10
/* 017B54 80016F54 44805000 */  mtc1  $zero, $f10
/* 017B58 80016F58 46202320 */  cvt.s.d $f12, $f4
/* 017B5C 80016F5C 16000002 */  bnez  $s0, .L80016F68
/* 017B60 80016F60 00000000 */   nop
/* 017B64 80016F64 0007000D */  break 7
.L80016F68:
/* 017B68 80016F68 2401FFFF */  li    $at, -1
/* 017B6C 80016F6C 16010004 */  bne   $s0, $at, .L80016F80
/* 017B70 80016F70 3C018000 */   lui   $at, 0x8000
/* 017B74 80016F74 15E10002 */  bne   $t7, $at, .L80016F80
/* 017B78 80016F78 00000000 */   nop
/* 017B7C 80016F7C 0006000D */  break 6
.L80016F80:
/* 017B80 80016F80 3C0F8016 */  lui   $t7, %hi(D_80164550) # $t7, 0x8016
/* 017B84 80016F84 8DEF4550 */  lw    $t7, %lo(D_80164550)($t7)
/* 017B88 80016F88 16000002 */  bnez  $s0, .L80016F94
/* 017B8C 80016F8C 00000000 */   nop
/* 017B90 80016F90 0007000D */  break 7
.L80016F94:
/* 017B94 80016F94 2401FFFF */  li    $at, -1
/* 017B98 80016F98 16010004 */  bne   $s0, $at, .L80016FAC
/* 017B9C 80016F9C 3C018000 */   lui   $at, 0x8000
/* 017BA0 80016FA0 15810002 */  bne   $t4, $at, .L80016FAC
/* 017BA4 80016FA4 00000000 */   nop
/* 017BA8 80016FA8 0006000D */  break 6
.L80016FAC:
/* 017BAC 80016FAC 01F8C821 */  addu  $t9, $t7, $t8
/* 017BB0 80016FB0 01ED7021 */  addu  $t6, $t7, $t5
/* 017BB4 80016FB4 85D80002 */  lh    $t8, 2($t6)
/* 017BB8 80016FB8 872C0002 */  lh    $t4, 2($t9)
/* 017BBC 80016FBC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 017BC0 80016FC0 44819000 */  mtc1  $at, $f18
/* 017BC4 80016FC4 0198C821 */  addu  $t9, $t4, $t8
/* 017BC8 80016FC8 44993000 */  mtc1  $t9, $f6
/* 017BCC 80016FCC 3C014020 */  li    $at, 0x40200000 # 2.500000
/* 017BD0 80016FD0 8FAF0070 */  lw    $t7, 0x70($sp)
/* 017BD4 80016FD4 46803420 */  cvt.s.w $f16, $f6
/* 017BD8 80016FD8 44815800 */  mtc1  $at, $f11
/* 017BDC 80016FDC 000F6880 */  sll   $t5, $t7, 2
/* 017BE0 80016FE0 01AF6823 */  subu  $t5, $t5, $t7
/* 017BE4 80016FE4 000D68C0 */  sll   $t5, $t5, 3
/* 017BE8 80016FE8 3C0E8016 */  lui   $t6, %hi(cameras) # $t6, 0x8016
/* 017BEC 80016FEC 46128382 */  mul.s $f14, $f16, $f18
/* 017BF0 80016FF0 01AF6823 */  subu  $t5, $t5, $t7
/* 017BF4 80016FF4 000D68C0 */  sll   $t5, $t5, 3
/* 017BF8 80016FF8 25CE46F0 */  addiu $t6, %lo(cameras) # addiu $t6, $t6, 0x46f0
/* 017BFC 80016FFC 01AE1021 */  addu  $v0, $t5, $t6
/* 017C00 80017000 E442000C */  swc1  $f2, 0xc($v0)
/* 017C04 80017004 E44C0014 */  swc1  $f12, 0x14($v0)
/* 017C08 80017008 46007221 */  cvt.d.s $f8, $f14
/* 017C0C 8001700C 462A4100 */  add.d $f4, $f8, $f10
/* 017C10 80017010 462021A0 */  cvt.s.d $f6, $f4
/* 017C14 80017014 E4460010 */  swc1  $f6, 0x10($v0)
/* 017C18 80017018 8FAC0034 */  lw    $t4, 0x34($sp)
/* 017C1C 8001701C C5900000 */  lwc1  $f16, ($t4)
/* 017C20 80017020 E4500000 */  swc1  $f16, ($v0)
/* 017C24 80017024 8FB8002C */  lw    $t8, 0x2c($sp)
/* 017C28 80017028 C7120000 */  lwc1  $f18, ($t8)
/* 017C2C 8001702C E4520004 */  swc1  $f18, 4($v0)
/* 017C30 80017030 8FB90028 */  lw    $t9, 0x28($sp)
/* 017C34 80017034 C7280000 */  lwc1  $f8, ($t9)
/* 017C38 80017038 E4480008 */  swc1  $f8, 8($v0)
/* 017C3C 8001703C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 017C40 80017040 8FB20020 */  lw    $s2, 0x20($sp)
/* 017C44 80017044 8FB1001C */  lw    $s1, 0x1c($sp)
/* 017C48 80017048 8FB00018 */  lw    $s0, 0x18($sp)
/* 017C4C 8001704C 03E00008 */  jr    $ra
/* 017C50 80017050 27BD0068 */   addiu $sp, $sp, 0x68
