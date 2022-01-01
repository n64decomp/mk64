glabel func_800A1DE0
/* 0A29E0 800A1DE0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0A29E4 800A1DE4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0A29E8 800A1DE8 AFA40070 */  sw    $a0, 0x70($sp)
/* 0A29EC 800A1DEC AFB40038 */  sw    $s4, 0x38($sp)
/* 0A29F0 800A1DF0 AFB30034 */  sw    $s3, 0x34($sp)
/* 0A29F4 800A1DF4 AFB20030 */  sw    $s2, 0x30($sp)
/* 0A29F8 800A1DF8 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0A29FC 800A1DFC AFB00028 */  sw    $s0, 0x28($sp)
/* 0A2A00 800A1E00 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0A2A04 800A1E04 0C024C36 */  jal   set_text_color
/* 0A2A08 800A1E08 24040001 */   li    $a0, 1
/* 0A2A0C 800A1E0C 3C01800F */  lui   $at, %hi(D_800F1B58) # $at, 0x800f
/* 0A2A10 800A1E10 3C138019 */  lui   $s3, %hi(gCourseRecordsMenuSelection) # $s3, 0x8019
/* 0A2A14 800A1E14 3C12800E */  lui   $s2, %hi(D_800E7848) # $s2, 0x800e
/* 0A2A18 800A1E18 26527848 */  addiu $s2, %lo(D_800E7848) # addiu $s2, $s2, 0x7848
/* 0A2A1C 800A1E1C 2673EDF8 */  addiu $s3, %lo(gCourseRecordsMenuSelection) # addiu $s3, $s3, -0x1208
/* 0A2A20 800A1E20 C4341B58 */  lwc1  $f20, %lo(D_800F1B58)($at)
/* 0A2A24 800A1E24 00008825 */  move  $s1, $zero
/* 0A2A28 800A1E28 2410003C */  li    $s0, 60
/* 0A2A2C 800A1E2C 24140003 */  li    $s4, 3
.L800A1E30:
/* 0A2A30 800A1E30 826E0000 */  lb    $t6, ($s3)
/* 0A2A34 800A1E34 2404001B */  li    $a0, 27
/* 0A2A38 800A1E38 02002825 */  move  $a1, $s0
/* 0A2A3C 800A1E3C 01D40019 */  multu $t6, $s4
/* 0A2A40 800A1E40 00003825 */  move  $a3, $zero
/* 0A2A44 800A1E44 00007812 */  mflo  $t7
/* 0A2A48 800A1E48 000FC080 */  sll   $t8, $t7, 2
/* 0A2A4C 800A1E4C 0258C821 */  addu  $t9, $s2, $t8
/* 0A2A50 800A1E50 03314021 */  addu  $t0, $t9, $s1
/* 0A2A54 800A1E54 8D06FFF4 */  lw    $a2, -0xc($t0)
/* 0A2A58 800A1E58 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A2A5C 800A1E5C 0C024CC9 */  jal   func_80093324
/* 0A2A60 800A1E60 E7B40010 */   swc1  $f20, 0x10($sp)
/* 0A2A64 800A1E64 2610000D */  addiu $s0, $s0, 0xd
/* 0A2A68 800A1E68 2A010063 */  slti  $at, $s0, 0x63
/* 0A2A6C 800A1E6C 1420FFF0 */  bnez  $at, .L800A1E30
/* 0A2A70 800A1E70 26310004 */   addiu $s1, $s1, 4
/* 0A2A74 800A1E74 3C10800E */  lui   $s0, %hi(D_800E7840) # $s0, 0x800e
/* 0A2A78 800A1E78 3C138019 */  lui   $s3, %hi(D_8018EDF9) # $s3, 0x8019
/* 0A2A7C 800A1E7C 2673EDF9 */  addiu $s3, %lo(D_8018EDF9) # addiu $s3, $s3, -0x1207
/* 0A2A80 800A1E80 26107840 */  addiu $s0, %lo(D_800E7840) # addiu $s0, $s0, 0x7840
/* 0A2A84 800A1E84 00009025 */  move  $s2, $zero
/* 0A2A88 800A1E88 2411006E */  li    $s1, 110
/* 0A2A8C 800A1E8C 24140002 */  li    $s4, 2
.L800A1E90:
/* 0A2A90 800A1E90 82690000 */  lb    $t1, ($s3)
/* 0A2A94 800A1E94 24040001 */  li    $a0, 1
/* 0A2A98 800A1E98 16490003 */  bne   $s2, $t1, .L800A1EA8
/* 0A2A9C 800A1E9C 00000000 */   nop   
/* 0A2AA0 800A1EA0 10000001 */  b     .L800A1EA8
/* 0A2AA4 800A1EA4 24040005 */   li    $a0, 5
.L800A1EA8:
/* 0A2AA8 800A1EA8 0C024C36 */  jal   set_text_color
/* 0A2AAC 800A1EAC 00000000 */   nop   
/* 0A2AB0 800A1EB0 24040043 */  li    $a0, 67
/* 0A2AB4 800A1EB4 02202825 */  move  $a1, $s1
/* 0A2AB8 800A1EB8 8E060000 */  lw    $a2, ($s0)
/* 0A2ABC 800A1EBC 00003825 */  move  $a3, $zero
/* 0A2AC0 800A1EC0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A2AC4 800A1EC4 0C024CC9 */  jal   func_80093324
/* 0A2AC8 800A1EC8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A2ACC 800A1ECC 26520001 */  addiu $s2, $s2, 1
/* 0A2AD0 800A1ED0 26100004 */  addiu $s0, $s0, 4
/* 0A2AD4 800A1ED4 1654FFEE */  bne   $s2, $s4, .L800A1E90
/* 0A2AD8 800A1ED8 2631000D */   addiu $s1, $s1, 0xd
/* 0A2ADC 800A1EDC 826B0000 */  lb    $t3, ($s3)
/* 0A2AE0 800A1EE0 240A003B */  li    $t2, 59
/* 0A2AE4 800A1EE4 A7AA0058 */  sh    $t2, 0x58($sp)
/* 0A2AE8 800A1EE8 000B6080 */  sll   $t4, $t3, 2
/* 0A2AEC 800A1EEC 018B6023 */  subu  $t4, $t4, $t3
/* 0A2AF0 800A1EF0 000C6080 */  sll   $t4, $t4, 2
/* 0A2AF4 800A1EF4 018B6021 */  addu  $t4, $t4, $t3
/* 0A2AF8 800A1EF8 258D0066 */  addiu $t5, $t4, 0x66
/* 0A2AFC 800A1EFC A7AD005A */  sh    $t5, 0x5a($sp)
/* 0A2B00 800A1F00 8FA40070 */  lw    $a0, 0x70($sp)
/* 0A2B04 800A1F04 0C0299AA */  jal   func_800A66A8
/* 0A2B08 800A1F08 27A50058 */   addiu $a1, $sp, 0x58
/* 0A2B0C 800A1F0C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0A2B10 800A1F10 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0A2B14 800A1F14 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A2B18 800A1F18 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0A2B1C 800A1F1C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0A2B20 800A1F20 8FB30034 */  lw    $s3, 0x34($sp)
/* 0A2B24 800A1F24 8FB40038 */  lw    $s4, 0x38($sp)
/* 0A2B28 800A1F28 03E00008 */  jr    $ra
/* 0A2B2C 800A1F2C 27BD0070 */   addiu $sp, $sp, 0x70
