glabel place_piranha_plants
/* 106224 8029CC14 27BDFF80 */  addiu $sp, $sp, -0x80
/* 106228 8029CC18 00047602 */  srl   $t6, $a0, 0x18
/* 10622C 8029CC1C 44800000 */  mtc1  $zero, $f0
/* 106230 8029CC20 000E7880 */  sll   $t7, $t6, 2
/* 106234 8029CC24 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 106238 8029CC28 030FC021 */  addu  $t8, $t8, $t7
/* 10623C 8029CC2C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 106240 8029CC30 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 106244 8029CC34 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 106248 8029CC38 0081C824 */  and   $t9, $a0, $at
/* 10624C 8029CC3C AFBE0038 */  sw    $fp, 0x38($sp)
/* 106250 8029CC40 AFB00018 */  sw    $s0, 0x18($sp)
/* 106254 8029CC44 27BE0054 */  addiu $fp, $sp, 0x54
/* 106258 8029CC48 AFBF003C */  sw    $ra, 0x3c($sp)
/* 10625C 8029CC4C 3C018000 */  lui   $at, 0x8000
/* 106260 8029CC50 44050000 */  mfc1  $a1, $f0
/* 106264 8029CC54 44060000 */  mfc1  $a2, $f0
/* 106268 8029CC58 44070000 */  mfc1  $a3, $f0
/* 10626C 8029CC5C 03198021 */  addu  $s0, $t8, $t9
/* 106270 8029CC60 AFB70034 */  sw    $s7, 0x34($sp)
/* 106274 8029CC64 AFB60030 */  sw    $s6, 0x30($sp)
/* 106278 8029CC68 AFB5002C */  sw    $s5, 0x2c($sp)
/* 10627C 8029CC6C AFB40028 */  sw    $s4, 0x28($sp)
/* 106280 8029CC70 AFB30024 */  sw    $s3, 0x24($sp)
/* 106284 8029CC74 AFB20020 */  sw    $s2, 0x20($sp)
/* 106288 8029CC78 AFB1001C */  sw    $s1, 0x1c($sp)
/* 10628C 8029CC7C 02018021 */  addu  $s0, $s0, $at
/* 106290 8029CC80 0C0AD4A7 */  jal   load_giant_egg
/* 106294 8029CC84 03C02025 */   move  $a0, $fp
/* 106298 8029CC88 27B2004C */  addiu $s2, $sp, 0x4c
/* 10629C 8029CC8C 02402025 */  move  $a0, $s2
/* 1062A0 8029CC90 00002825 */  move  $a1, $zero
/* 1062A4 8029CC94 00003025 */  move  $a2, $zero
/* 1062A8 8029CC98 0C0AD4AF */  jal   func_802B52BC
/* 1062AC 8029CC9C 00003825 */   move  $a3, $zero
/* 1062B0 8029CCA0 86110000 */  lh    $s1, ($s0)
/* 1062B4 8029CCA4 24138000 */  li    $s3, -32768
/* 1062B8 8029CCA8 24170070 */  li    $s7, 112
/* 1062BC 8029CCAC 12710028 */  beq   $s3, $s1, .L8029CD50
/* 1062C0 8029CCB0 3C168016 */   lui   $s6, %hi(D_8015F9B8) # $s6, 0x8016
/* 1062C4 8029CCB4 3C148016 */  lui   $s4, %hi(gCourseDirection) # $s4, 0x8016
/* 1062C8 8029CCB8 2694F784 */  addiu $s4, %lo(gCourseDirection) # addiu $s4, $s4, -0x87c
/* 1062CC 8029CCBC 26D6F9B8 */  addiu $s6, %lo(D_8015F9B8) # addiu $s6, $s6, -0x648
/* 1062D0 8029CCC0 27B50060 */  addiu $s5, $sp, 0x60
/* 1062D4 8029CCC4 44912000 */  mtc1  $s1, $f4
.L8029CCC8:
/* 1062D8 8029CCC8 C6880000 */  lwc1  $f8, ($s4)
/* 1062DC 8029CCCC 02A02025 */  move  $a0, $s5
/* 1062E0 8029CCD0 468021A0 */  cvt.s.w $f6, $f4
/* 1062E4 8029CCD4 02402825 */  move  $a1, $s2
/* 1062E8 8029CCD8 03C03025 */  move  $a2, $fp
/* 1062EC 8029CCDC 2407000A */  li    $a3, 10
/* 1062F0 8029CCE0 46083282 */  mul.s $f10, $f6, $f8
/* 1062F4 8029CCE4 E7AA0060 */  swc1  $f10, 0x60($sp)
/* 1062F8 8029CCE8 86080002 */  lh    $t0, 2($s0)
/* 1062FC 8029CCEC 44888000 */  mtc1  $t0, $f16
/* 106300 8029CCF0 00000000 */  nop   
/* 106304 8029CCF4 468084A0 */  cvt.s.w $f18, $f16
/* 106308 8029CCF8 E7B20064 */  swc1  $f18, 0x64($sp)
/* 10630C 8029CCFC 86090004 */  lh    $t1, 4($s0)
/* 106310 8029CD00 44892000 */  mtc1  $t1, $f4
/* 106314 8029CD04 00000000 */  nop   
/* 106318 8029CD08 468021A0 */  cvt.s.w $f6, $f4
/* 10631C 8029CD0C 0C0A7B22 */  jal   func_8029EC88
/* 106320 8029CD10 E7A60068 */   swc1  $f6, 0x68($sp)
/* 106324 8029CD14 00570019 */  multu $v0, $s7
/* 106328 8029CD18 26100008 */  addiu $s0, $s0, 8
/* 10632C 8029CD1C 00005012 */  mflo  $t2
/* 106330 8029CD20 02CA1821 */  addu  $v1, $s6, $t2
/* 106334 8029CD24 A4600004 */  sh    $zero, 4($v1)
/* 106338 8029CD28 A4600006 */  sh    $zero, 6($v1)
/* 10633C 8029CD2C A4600008 */  sh    $zero, 8($v1)
/* 106340 8029CD30 A460000A */  sh    $zero, 0xa($v1)
/* 106344 8029CD34 A4600024 */  sh    $zero, 0x24($v1)
/* 106348 8029CD38 A4600026 */  sh    $zero, 0x26($v1)
/* 10634C 8029CD3C A4600028 */  sh    $zero, 0x28($v1)
/* 106350 8029CD40 A460002A */  sh    $zero, 0x2a($v1)
/* 106354 8029CD44 86110000 */  lh    $s1, ($s0)
/* 106358 8029CD48 5671FFDF */  bnel  $s3, $s1, .L8029CCC8
/* 10635C 8029CD4C 44912000 */   mtc1  $s1, $f4
.L8029CD50:
/* 106360 8029CD50 8FBF003C */  lw    $ra, 0x3c($sp)
/* 106364 8029CD54 8FB00018 */  lw    $s0, 0x18($sp)
/* 106368 8029CD58 8FB1001C */  lw    $s1, 0x1c($sp)
/* 10636C 8029CD5C 8FB20020 */  lw    $s2, 0x20($sp)
/* 106370 8029CD60 8FB30024 */  lw    $s3, 0x24($sp)
/* 106374 8029CD64 8FB40028 */  lw    $s4, 0x28($sp)
/* 106378 8029CD68 8FB5002C */  lw    $s5, 0x2c($sp)
/* 10637C 8029CD6C 8FB60030 */  lw    $s6, 0x30($sp)
/* 106380 8029CD70 8FB70034 */  lw    $s7, 0x34($sp)
/* 106384 8029CD74 8FBE0038 */  lw    $fp, 0x38($sp)
/* 106388 8029CD78 03E00008 */  jr    $ra
/* 10638C 8029CD7C 27BD0080 */   addiu $sp, $sp, 0x80
