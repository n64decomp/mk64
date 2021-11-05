glabel place_palm_trees
/* 106390 8029CD80 27BDFF78 */  addiu $sp, $sp, -0x88
/* 106394 8029CD84 00047602 */  srl   $t6, $a0, 0x18
/* 106398 8029CD88 44800000 */  mtc1  $zero, $f0
/* 10639C 8029CD8C 000E7880 */  sll   $t7, $t6, 2
/* 1063A0 8029CD90 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 1063A4 8029CD94 030FC021 */  addu  $t8, $t8, $t7
/* 1063A8 8029CD98 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 1063AC 8029CD9C 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 1063B0 8029CDA0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1063B4 8029CDA4 0081C824 */  and   $t9, $a0, $at
/* 1063B8 8029CDA8 AFB60040 */  sw    $s6, 0x40($sp)
/* 1063BC 8029CDAC AFB00028 */  sw    $s0, 0x28($sp)
/* 1063C0 8029CDB0 27B60060 */  addiu $s6, $sp, 0x60
/* 1063C4 8029CDB4 AFBF004C */  sw    $ra, 0x4c($sp)
/* 1063C8 8029CDB8 3C018000 */  lui   $at, 0x8000
/* 1063CC 8029CDBC 44050000 */  mfc1  $a1, $f0
/* 1063D0 8029CDC0 44060000 */  mfc1  $a2, $f0
/* 1063D4 8029CDC4 44070000 */  mfc1  $a3, $f0
/* 1063D8 8029CDC8 03198021 */  addu  $s0, $t8, $t9
/* 1063DC 8029CDCC AFBE0048 */  sw    $fp, 0x48($sp)
/* 1063E0 8029CDD0 AFB70044 */  sw    $s7, 0x44($sp)
/* 1063E4 8029CDD4 AFB5003C */  sw    $s5, 0x3c($sp)
/* 1063E8 8029CDD8 AFB40038 */  sw    $s4, 0x38($sp)
/* 1063EC 8029CDDC AFB30034 */  sw    $s3, 0x34($sp)
/* 1063F0 8029CDE0 AFB20030 */  sw    $s2, 0x30($sp)
/* 1063F4 8029CDE4 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1063F8 8029CDE8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 1063FC 8029CDEC 02018021 */  addu  $s0, $s0, $at
/* 106400 8029CDF0 0C0AD4A7 */  jal   load_giant_egg
/* 106404 8029CDF4 02C02025 */   move  $a0, $s6
/* 106408 8029CDF8 27B70058 */  addiu $s7, $sp, 0x58
/* 10640C 8029CDFC 02E02025 */  move  $a0, $s7
/* 106410 8029CE00 00002825 */  move  $a1, $zero
/* 106414 8029CE04 00003025 */  move  $a2, $zero
/* 106418 8029CE08 0C0AD4AF */  jal   func_802B52BC
/* 10641C 8029CE0C 00003825 */   move  $a3, $zero
/* 106420 8029CE10 86020000 */  lh    $v0, ($s0)
/* 106424 8029CE14 241E8000 */  li    $fp, -32768
/* 106428 8029CE18 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 10642C 8029CE1C 13C2002E */  beq   $fp, $v0, .L8029CED8
/* 106430 8029CE20 24150070 */   li    $s5, 112
/* 106434 8029CE24 3C148016 */  lui   $s4, %hi(D_8015F9B8) # $s4, 0x8016
/* 106438 8029CE28 3C128016 */  lui   $s2, %hi(gCourseDirection) # $s2, 0x8016
/* 10643C 8029CE2C 4481A000 */  mtc1  $at, $f20
/* 106440 8029CE30 2652F784 */  addiu $s2, %lo(gCourseDirection) # addiu $s2, $s2, -0x87c
/* 106444 8029CE34 2694F9B8 */  addiu $s4, %lo(D_8015F9B8) # addiu $s4, $s4, -0x648
/* 106448 8029CE38 27B3006C */  addiu $s3, $sp, 0x6c
/* 10644C 8029CE3C 44822000 */  mtc1  $v0, $f4
.L8029CE40:
/* 106450 8029CE40 C6480000 */  lwc1  $f8, ($s2)
/* 106454 8029CE44 02602025 */  move  $a0, $s3
/* 106458 8029CE48 468021A0 */  cvt.s.w $f6, $f4
/* 10645C 8029CE4C 02E02825 */  move  $a1, $s7
/* 106460 8029CE50 02C03025 */  move  $a2, $s6
/* 106464 8029CE54 24070019 */  li    $a3, 25
/* 106468 8029CE58 46083282 */  mul.s $f10, $f6, $f8
/* 10646C 8029CE5C E7AA006C */  swc1  $f10, 0x6c($sp)
/* 106470 8029CE60 86080002 */  lh    $t0, 2($s0)
/* 106474 8029CE64 44888000 */  mtc1  $t0, $f16
/* 106478 8029CE68 00000000 */  nop   
/* 10647C 8029CE6C 468084A0 */  cvt.s.w $f18, $f16
/* 106480 8029CE70 E7B20070 */  swc1  $f18, 0x70($sp)
/* 106484 8029CE74 86090004 */  lh    $t1, 4($s0)
/* 106488 8029CE78 44892000 */  mtc1  $t1, $f4
/* 10648C 8029CE7C 00000000 */  nop   
/* 106490 8029CE80 468021A0 */  cvt.s.w $f6, $f4
/* 106494 8029CE84 0C0A7B22 */  jal   func_8029EC88
/* 106498 8029CE88 E7A60074 */   swc1  $f6, 0x74($sp)
/* 10649C 8029CE8C 00550019 */  multu $v0, $s5
/* 1064A0 8029CE90 960B0006 */  lhu   $t3, 6($s0)
/* 1064A4 8029CE94 4405A000 */  mfc1  $a1, $f20
/* 1064A8 8029CE98 00005012 */  mflo  $t2
/* 1064AC 8029CE9C 028A8821 */  addu  $s1, $s4, $t2
/* 1064B0 8029CEA0 C6280020 */  lwc1  $f8, 0x20($s1)
/* 1064B4 8029CEA4 8E260018 */  lw    $a2, 0x18($s1)
/* 1064B8 8029CEA8 8E27001C */  lw    $a3, 0x1c($s1)
/* 1064BC 8029CEAC A62B0004 */  sh    $t3, 4($s1)
/* 1064C0 8029CEB0 26240030 */  addiu $a0, $s1, 0x30
/* 1064C4 8029CEB4 0C0AB772 */  jal   func_802ADDC8
/* 1064C8 8029CEB8 E7A80010 */   swc1  $f8, 0x10($sp)
/* 1064CC 8029CEBC 26240030 */  addiu $a0, $s1, 0x30
/* 1064D0 8029CEC0 0C0A5DBB */  jal   func_802976EC
/* 1064D4 8029CEC4 26250010 */   addiu $a1, $s1, 0x10
/* 1064D8 8029CEC8 86020008 */  lh    $v0, 8($s0)
/* 1064DC 8029CECC 26100008 */  addiu $s0, $s0, 8
/* 1064E0 8029CED0 57C2FFDB */  bnel  $fp, $v0, .L8029CE40
/* 1064E4 8029CED4 44822000 */   mtc1  $v0, $f4
.L8029CED8:
/* 1064E8 8029CED8 8FBF004C */  lw    $ra, 0x4c($sp)
/* 1064EC 8029CEDC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1064F0 8029CEE0 8FB00028 */  lw    $s0, 0x28($sp)
/* 1064F4 8029CEE4 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1064F8 8029CEE8 8FB20030 */  lw    $s2, 0x30($sp)
/* 1064FC 8029CEEC 8FB30034 */  lw    $s3, 0x34($sp)
/* 106500 8029CEF0 8FB40038 */  lw    $s4, 0x38($sp)
/* 106504 8029CEF4 8FB5003C */  lw    $s5, 0x3c($sp)
/* 106508 8029CEF8 8FB60040 */  lw    $s6, 0x40($sp)
/* 10650C 8029CEFC 8FB70044 */  lw    $s7, 0x44($sp)
/* 106510 8029CF00 8FBE0048 */  lw    $fp, 0x48($sp)
/* 106514 8029CF04 03E00008 */  jr    $ra
/* 106518 8029CF08 27BD0088 */   addiu $sp, $sp, 0x88
