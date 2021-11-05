glabel func_800A10CC
/* 0A1CCC 800A10CC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0A1CD0 800A10D0 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0A1CD4 800A10D4 AFB30040 */  sw    $s3, 0x40($sp)
/* 0A1CD8 800A10D8 AFB2003C */  sw    $s2, 0x3c($sp)
/* 0A1CDC 800A10DC AFB10038 */  sw    $s1, 0x38($sp)
/* 0A1CE0 800A10E0 AFB00034 */  sw    $s0, 0x34($sp)
/* 0A1CE4 800A10E4 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0A1CE8 800A10E8 8C820004 */  lw    $v0, 4($a0)
/* 0A1CEC 800A10EC 24010002 */  li    $at, 2
/* 0A1CF0 800A10F0 00808025 */  move  $s0, $a0
/* 0A1CF4 800A10F4 10410007 */  beq   $v0, $at, .L800A1114
/* 0A1CF8 800A10F8 3C118015 */   lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 0A1CFC 800A10FC 24010003 */  li    $at, 3
/* 0A1D00 800A1100 10410004 */  beq   $v0, $at, .L800A1114
/* 0A1D04 800A1104 24010004 */   li    $at, 4
/* 0A1D08 800A1108 10410002 */  beq   $v0, $at, .L800A1114
/* 0A1D0C 800A110C 24010005 */   li    $at, 5
/* 0A1D10 800A1110 14410027 */  bne   $v0, $at, .L800A11B0
.L800A1114:
/* 0A1D14 800A1114 26310298 */   addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 0A1D18 800A1118 240E006E */  li    $t6, 110
/* 0A1D1C 800A111C 240F00FF */  li    $t7, 255
/* 0A1D20 800A1120 AFAF0020 */  sw    $t7, 0x20($sp)
/* 0A1D24 800A1124 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0A1D28 800A1128 8E240000 */  lw    $a0, ($s1)
/* 0A1D2C 800A112C 2405001E */  li    $a1, 30
/* 0A1D30 800A1130 24060032 */  li    $a2, 50
/* 0A1D34 800A1134 24070122 */  li    $a3, 290
/* 0A1D38 800A1138 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A1D3C 800A113C AFA00018 */  sw    $zero, 0x18($sp)
/* 0A1D40 800A1140 0C026306 */  jal   func_80098C18
/* 0A1D44 800A1144 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0A1D48 800A1148 AE220000 */  sw    $v0, ($s1)
/* 0A1D4C 800A114C 8E130004 */  lw    $s3, 4($s0)
/* 0A1D50 800A1150 24040003 */  li    $a0, 3
/* 0A1D54 800A1154 0C024C36 */  jal   set_text_color
/* 0A1D58 800A1158 2673FFFE */   addiu $s3, $s3, -2
/* 0A1D5C 800A115C 0260C025 */  move  $t8, $s3
/* 0A1D60 800A1160 3C08800E */  lui   $t0, %hi(D_800E7940) # $t0, 0x800e
/* 0A1D64 800A1164 25087940 */  addiu $t0, %lo(D_800E7940) # addiu $t0, $t0, 0x7940
/* 0A1D68 800A1168 0018C900 */  sll   $t9, $t8, 4
/* 0A1D6C 800A116C 3C01800F */  lui   $at, %hi(D_800F1B14) # $at, 0x800f
/* 0A1D70 800A1170 C4341B14 */  lwc1  $f20, %lo(D_800F1B14)($at)
/* 0A1D74 800A1174 03289021 */  addu  $s2, $t9, $t0
/* 0A1D78 800A1178 24130010 */  li    $s3, 16
/* 0A1D7C 800A117C 24100041 */  li    $s0, 65
/* 0A1D80 800A1180 00008825 */  move  $s1, $zero
.L800A1184:
/* 0A1D84 800A1184 24040023 */  li    $a0, 35
/* 0A1D88 800A1188 02002825 */  move  $a1, $s0
/* 0A1D8C 800A118C 8E460000 */  lw    $a2, ($s2)
/* 0A1D90 800A1190 00003825 */  move  $a3, $zero
/* 0A1D94 800A1194 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A1D98 800A1198 0C024CC9 */  jal   func_80093324
/* 0A1D9C 800A119C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A1DA0 800A11A0 26310004 */  addiu $s1, $s1, 4
/* 0A1DA4 800A11A4 2610000D */  addiu $s0, $s0, 0xd
/* 0A1DA8 800A11A8 1633FFF6 */  bne   $s1, $s3, .L800A1184
/* 0A1DAC 800A11AC 26520004 */   addiu $s2, $s2, 4
.L800A11B0:
/* 0A1DB0 800A11B0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0A1DB4 800A11B4 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0A1DB8 800A11B8 8FB00034 */  lw    $s0, 0x34($sp)
/* 0A1DBC 800A11BC 8FB10038 */  lw    $s1, 0x38($sp)
/* 0A1DC0 800A11C0 8FB2003C */  lw    $s2, 0x3c($sp)
/* 0A1DC4 800A11C4 8FB30040 */  lw    $s3, 0x40($sp)
/* 0A1DC8 800A11C8 03E00008 */  jr    $ra
/* 0A1DCC 800A11CC 27BD0048 */   addiu $sp, $sp, 0x48
