glabel func_80290CAC
/* 0FA2BC 80290CAC 00047602 */  srl   $t6, $a0, 0x18
/* 0FA2C0 80290CB0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0FA2C4 80290CB4 000E7880 */  sll   $t7, $t6, 2
/* 0FA2C8 80290CB8 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 0FA2CC 80290CBC 030FC021 */  addu  $t8, $t8, $t7
/* 0FA2D0 80290CC0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 0FA2D4 80290CC4 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 0FA2D8 80290CC8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0FA2DC 80290CCC 0081C824 */  and   $t9, $a0, $at
/* 0FA2E0 80290CD0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0FA2E4 80290CD4 3C018000 */  lui   $at, 0x8000
/* 0FA2E8 80290CD8 03198021 */  addu  $s0, $t8, $t9
/* 0FA2EC 80290CDC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0FA2F0 80290CE0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0FA2F4 80290CE4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0FA2F8 80290CE8 AFB20020 */  sw    $s2, 0x20($sp)
/* 0FA2FC 80290CEC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0FA300 80290CF0 02018021 */  addu  $s0, $s0, $at
/* 0FA304 80290CF4 8E080000 */  lw    $t0, ($s0)
/* 0FA308 80290CF8 3C148016 */  lui   $s4, %hi(D_8015F5A4) # $s4, 0x8016
/* 0FA30C 80290CFC 2694F5A4 */  addiu $s4, %lo(D_8015F5A4) # addiu $s4, $s4, -0xa5c
/* 0FA310 80290D00 11000022 */  beqz  $t0, .L80290D8C
/* 0FA314 80290D04 3C138016 */   lui   $s3, %hi(D_8015F5A0) # $s3, 0x8016
/* 0FA318 80290D08 3C128016 */  lui   $s2, %hi(D_8015F59C) # $s2, 0x8016
/* 0FA31C 80290D0C 2652F59C */  addiu $s2, %lo(D_8015F59C) # addiu $s2, $s2, -0xa64
/* 0FA320 80290D10 2673F5A0 */  addiu $s3, %lo(D_8015F5A0) # addiu $s3, $s3, -0xa60
/* 0FA324 80290D14 24110001 */  li    $s1, 1
/* 0FA328 80290D18 96090006 */  lhu   $t1, 6($s0)
.L80290D1C:
/* 0FA32C 80290D1C 312A8000 */  andi  $t2, $t1, 0x8000
/* 0FA330 80290D20 51400004 */  beql  $t2, $zero, .L80290D34
/* 0FA334 80290D24 AE400000 */   sw    $zero, ($s2)
/* 0FA338 80290D28 10000002 */  b     .L80290D34
/* 0FA33C 80290D2C AE510000 */   sw    $s1, ($s2)
/* 0FA340 80290D30 AE400000 */  sw    $zero, ($s2)
.L80290D34:
/* 0FA344 80290D34 960B0006 */  lhu   $t3, 6($s0)
/* 0FA348 80290D38 316C2000 */  andi  $t4, $t3, 0x2000
/* 0FA34C 80290D3C 51800004 */  beql  $t4, $zero, .L80290D50
/* 0FA350 80290D40 AE600000 */   sw    $zero, ($s3)
/* 0FA354 80290D44 10000002 */  b     .L80290D50
/* 0FA358 80290D48 AE710000 */   sw    $s1, ($s3)
/* 0FA35C 80290D4C AE600000 */  sw    $zero, ($s3)
.L80290D50:
/* 0FA360 80290D50 960D0006 */  lhu   $t5, 6($s0)
/* 0FA364 80290D54 31AE4000 */  andi  $t6, $t5, 0x4000
/* 0FA368 80290D58 51C00004 */  beql  $t6, $zero, .L80290D6C
/* 0FA36C 80290D5C AE800000 */   sw    $zero, ($s4)
/* 0FA370 80290D60 10000002 */  b     .L80290D6C
/* 0FA374 80290D64 AE910000 */   sw    $s1, ($s4)
/* 0FA378 80290D68 AE800000 */  sw    $zero, ($s4)
.L80290D6C:
/* 0FA37C 80290D6C 8E040000 */  lw    $a0, ($s0)
/* 0FA380 80290D70 82050004 */  lb    $a1, 4($s0)
/* 0FA384 80290D74 0C0ABD76 */  jal   func_802AF5D8
/* 0FA388 80290D78 92060005 */   lbu   $a2, 5($s0)
/* 0FA38C 80290D7C 8E0F0008 */  lw    $t7, 8($s0)
/* 0FA390 80290D80 26100008 */  addiu $s0, $s0, 8
/* 0FA394 80290D84 55E0FFE5 */  bnel  $t7, $zero, .L80290D1C
/* 0FA398 80290D88 96090006 */   lhu   $t1, 6($s0)
.L80290D8C:
/* 0FA39C 80290D8C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0FA3A0 80290D90 8FB00018 */  lw    $s0, 0x18($sp)
/* 0FA3A4 80290D94 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0FA3A8 80290D98 8FB20020 */  lw    $s2, 0x20($sp)
/* 0FA3AC 80290D9C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0FA3B0 80290DA0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0FA3B4 80290DA4 03E00008 */  jr    $ra
/* 0FA3B8 80290DA8 27BD0030 */   addiu $sp, $sp, 0x30
