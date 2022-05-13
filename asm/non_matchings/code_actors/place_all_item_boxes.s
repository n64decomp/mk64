glabel place_all_item_boxes
/* 106E40 8029D830 27BDFF78 */  addiu $sp, $sp, -0x88
/* 106E44 8029D834 00047602 */  srl   $t6, $a0, 0x18
/* 106E48 8029D838 000E7880 */  sll   $t7, $t6, 2
/* 106E4C 8029D83C 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 106E50 8029D840 030FC021 */  addu  $t8, $t8, $t7
/* 106E54 8029D844 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 106E58 8029D848 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 106E5C 8029D84C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 106E60 8029D850 0081C824 */  and   $t9, $a0, $at
/* 106E64 8029D854 AFB00028 */  sw    $s0, 0x28($sp)
/* 106E68 8029D858 3C08800E */  lui   $t0, %hi(gModeSelection) # $t0, 0x800e
/* 106E6C 8029D85C 8D08C53C */  lw    $t0, %lo(gModeSelection)($t0)
/* 106E70 8029D860 3C018000 */  lui   $at, 0x8000
/* 106E74 8029D864 03198021 */  addu  $s0, $t8, $t9
/* 106E78 8029D868 02018021 */  addu  $s0, $s0, $at
/* 106E7C 8029D86C 24010001 */  li    $at, 1
/* 106E80 8029D870 AFBF004C */  sw    $ra, 0x4c($sp)
/* 106E84 8029D874 AFBE0048 */  sw    $fp, 0x48($sp)
/* 106E88 8029D878 AFB70044 */  sw    $s7, 0x44($sp)
/* 106E8C 8029D87C AFB60040 */  sw    $s6, 0x40($sp)
/* 106E90 8029D880 AFB5003C */  sw    $s5, 0x3c($sp)
/* 106E94 8029D884 AFB40038 */  sw    $s4, 0x38($sp)
/* 106E98 8029D888 AFB30034 */  sw    $s3, 0x34($sp)
/* 106E9C 8029D88C AFB20030 */  sw    $s2, 0x30($sp)
/* 106EA0 8029D890 AFB1002C */  sw    $s1, 0x2c($sp)
/* 106EA4 8029D894 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 106EA8 8029D898 11010049 */  beq   $t0, $at, .L8029D9C0
/* 106EAC 8029D89C F7B40018 */   sdc1  $f20, 0x18($sp)
/* 106EB0 8029D8A0 3C09800E */  lui   $t1, %hi(gPlaceItemBoxes) # $t1, 0x800e
/* 106EB4 8029D8A4 8529C648 */  lh    $t1, %lo(gPlaceItemBoxes)($t1)
/* 106EB8 8029D8A8 51200046 */  beql  $t1, $zero, .L8029D9C4
/* 106EBC 8029D8AC 8FBF004C */   lw    $ra, 0x4c($sp)
/* 106EC0 8029D8B0 44800000 */  mtc1  $zero, $f0
/* 106EC4 8029D8B4 27B20060 */  addiu $s2, $sp, 0x60
/* 106EC8 8029D8B8 02402025 */  move  $a0, $s2
/* 106ECC 8029D8BC 44050000 */  mfc1  $a1, $f0
/* 106ED0 8029D8C0 44060000 */  mfc1  $a2, $f0
/* 106ED4 8029D8C4 44070000 */  mfc1  $a3, $f0
/* 106ED8 8029D8C8 0C0AD4A7 */  jal   vec3f_set_alternate
/* 106EDC 8029D8CC 00000000 */   nop   
/* 106EE0 8029D8D0 86030000 */  lh    $v1, ($s0)
/* 106EE4 8029D8D4 24138000 */  li    $s3, -32768
/* 106EE8 8029D8D8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 106EEC 8029D8DC 12630038 */  beq   $s3, $v1, .L8029D9C0
/* 106EF0 8029D8E0 241E0070 */   li    $fp, 112
/* 106EF4 8029D8E4 4481B000 */  mtc1  $at, $f22
/* 106EF8 8029D8E8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 106EFC 8029D8EC 3C178016 */  lui   $s7, %hi(D_8015F9B8) # $s7, 0x8016
/* 106F00 8029D8F0 3C148016 */  lui   $s4, %hi(gCourseDirection) # $s4, 0x8016
/* 106F04 8029D8F4 4481A000 */  mtc1  $at, $f20
/* 106F08 8029D8F8 2694F784 */  addiu $s4, %lo(gCourseDirection) # addiu $s4, $s4, -0x87c
/* 106F0C 8029D8FC 26F7F9B8 */  addiu $s7, %lo(D_8015F9B8) # addiu $s7, $s7, -0x648
/* 106F10 8029D900 27B60058 */  addiu $s6, $sp, 0x58
/* 106F14 8029D904 27B5006C */  addiu $s5, $sp, 0x6c
/* 106F18 8029D908 44832000 */  mtc1  $v1, $f4
.L8029D90C:
/* 106F1C 8029D90C C6880000 */  lwc1  $f8, ($s4)
/* 106F20 8029D910 468021A0 */  cvt.s.w $f6, $f4
/* 106F24 8029D914 46083282 */  mul.s $f10, $f6, $f8
/* 106F28 8029D918 E7AA006C */  swc1  $f10, 0x6c($sp)
/* 106F2C 8029D91C 860A0002 */  lh    $t2, 2($s0)
/* 106F30 8029D920 448A8000 */  mtc1  $t2, $f16
/* 106F34 8029D924 00000000 */  nop   
/* 106F38 8029D928 468084A0 */  cvt.s.w $f18, $f16
/* 106F3C 8029D92C E7B20070 */  swc1  $f18, 0x70($sp)
/* 106F40 8029D930 860B0004 */  lh    $t3, 4($s0)
/* 106F44 8029D934 448B2000 */  mtc1  $t3, $f4
/* 106F48 8029D938 00000000 */  nop   
/* 106F4C 8029D93C 468021A0 */  cvt.s.w $f6, $f4
/* 106F50 8029D940 0C0ADF65 */  jal   random_u16
/* 106F54 8029D944 E7A60074 */   swc1  $f6, 0x74($sp)
/* 106F58 8029D948 0C0ADF65 */  jal   random_u16
/* 106F5C 8029D94C A7A20058 */   sh    $v0, 0x58($sp)
/* 106F60 8029D950 0C0ADF65 */  jal   random_u16
/* 106F64 8029D954 A7A2005A */   sh    $v0, 0x5a($sp)
/* 106F68 8029D958 A7A2005C */  sh    $v0, 0x5c($sp)
/* 106F6C 8029D95C 02A02025 */  move  $a0, $s5
/* 106F70 8029D960 02C02825 */  move  $a1, $s6
/* 106F74 8029D964 02403025 */  move  $a2, $s2
/* 106F78 8029D968 0C0A7B22 */  jal   func_8029EC88
/* 106F7C 8029D96C 2407000C */   li    $a3, 12
/* 106F80 8029D970 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 106F84 8029D974 00028C00 */  sll   $s1, $v0, 0x10
/* 106F88 8029D978 00116403 */  sra   $t4, $s1, 0x10
/* 106F8C 8029D97C 01808825 */  move  $s1, $t4
/* 106F90 8029D980 C7AC006C */  lwc1  $f12, 0x6c($sp)
/* 106F94 8029D984 8FA60074 */  lw    $a2, 0x74($sp)
/* 106F98 8029D988 0C0AB870 */  jal   func_802AE1C0
/* 106F9C 8029D98C 46144380 */   add.s $f14, $f8, $f20
/* 106FA0 8029D990 023E0019 */  multu $s1, $fp
/* 106FA4 8029D994 46160401 */  sub.s $f16, $f0, $f22
/* 106FA8 8029D998 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 106FAC 8029D99C 26100008 */  addiu $s0, $s0, 8
/* 106FB0 8029D9A0 00006812 */  mflo  $t5
/* 106FB4 8029D9A4 02ED1021 */  addu  $v0, $s7, $t5
/* 106FB8 8029D9A8 E4400008 */  swc1  $f0, 8($v0)
/* 106FBC 8029D9AC E450001C */  swc1  $f16, 0x1c($v0)
/* 106FC0 8029D9B0 E44A0024 */  swc1  $f10, 0x24($v0)
/* 106FC4 8029D9B4 86030000 */  lh    $v1, ($s0)
/* 106FC8 8029D9B8 5663FFD4 */  bnel  $s3, $v1, .L8029D90C
/* 106FCC 8029D9BC 44832000 */   mtc1  $v1, $f4
.L8029D9C0:
/* 106FD0 8029D9C0 8FBF004C */  lw    $ra, 0x4c($sp)
.L8029D9C4:
/* 106FD4 8029D9C4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 106FD8 8029D9C8 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 106FDC 8029D9CC 8FB00028 */  lw    $s0, 0x28($sp)
/* 106FE0 8029D9D0 8FB1002C */  lw    $s1, 0x2c($sp)
/* 106FE4 8029D9D4 8FB20030 */  lw    $s2, 0x30($sp)
/* 106FE8 8029D9D8 8FB30034 */  lw    $s3, 0x34($sp)
/* 106FEC 8029D9DC 8FB40038 */  lw    $s4, 0x38($sp)
/* 106FF0 8029D9E0 8FB5003C */  lw    $s5, 0x3c($sp)
/* 106FF4 8029D9E4 8FB60040 */  lw    $s6, 0x40($sp)
/* 106FF8 8029D9E8 8FB70044 */  lw    $s7, 0x44($sp)
/* 106FFC 8029D9EC 8FBE0048 */  lw    $fp, 0x48($sp)
/* 107000 8029D9F0 03E00008 */  jr    $ra
/* 107004 8029D9F4 27BD0088 */   addiu $sp, $sp, 0x88
