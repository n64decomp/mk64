glabel func_80089CBC
/* 08A8BC 80089CBC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 08A8C0 80089CC0 AFB00020 */  sw    $s0, 0x20($sp)
/* 08A8C4 80089CC4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 08A8C8 80089CC8 4485A000 */  mtc1  $a1, $f20
/* 08A8CC 80089CCC AFBF0044 */  sw    $ra, 0x44($sp)
/* 08A8D0 80089CD0 AFB7003C */  sw    $s7, 0x3c($sp)
/* 08A8D4 80089CD4 AFB20028 */  sw    $s2, 0x28($sp)
/* 08A8D8 80089CD8 3C10800E */  lui   $s0, %hi(gPlayerOne) # $s0, 0x800e
/* 08A8DC 80089CDC 00809025 */  move  $s2, $a0
/* 08A8E0 80089CE0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 08A8E4 80089CE4 AFB60038 */  sw    $s6, 0x38($sp)
/* 08A8E8 80089CE8 AFB50034 */  sw    $s5, 0x34($sp)
/* 08A8EC 80089CEC AFB40030 */  sw    $s4, 0x30($sp)
/* 08A8F0 80089CF0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 08A8F4 80089CF4 AFB10024 */  sw    $s1, 0x24($sp)
/* 08A8F8 80089CF8 0000B825 */  move  $s7, $zero
/* 08A8FC 80089CFC 8E10C4DC */  lw    $s0, %lo(gPlayerOne)($s0)
/* 08A900 80089D00 0C01C88F */  jal   func_8007223C
/* 08A904 80089D04 24050200 */   li    $a1, 512
/* 08A908 80089D08 10400035 */  beqz  $v0, .L80089DE0
/* 08A90C 80089D0C 3C1E8019 */   lui   $fp, %hi(D_8018D158) # $fp, 0x8019
/* 08A910 80089D10 27DED158 */  addiu $fp, %lo(D_8018D158) # addiu $fp, $fp, -0x2ea8
/* 08A914 80089D14 8FCE0000 */  lw    $t6, ($fp)
/* 08A918 80089D18 001278C0 */  sll   $t7, $s2, 3
/* 08A91C 80089D1C 01F27823 */  subu  $t7, $t7, $s2
/* 08A920 80089D20 19C0002F */  blez  $t6, .L80089DE0
/* 08A924 80089D24 00008825 */   move  $s1, $zero
/* 08A928 80089D28 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08A92C 80089D2C 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08A930 80089D30 000F7940 */  sll   $t7, $t7, 5
/* 08A934 80089D34 01F8B021 */  addu  $s6, $t7, $t8
/* 08A938 80089D38 3C150400 */  lui   $s5, 0x400
/* 08A93C 80089D3C 3C140040 */  lui   $s4, 0x40
/* 08A940 80089D40 3C138100 */  lui   $s3, 0x8100
/* 08A944 80089D44 86D900A6 */  lh    $t9, 0xa6($s6)
.L80089D48:
/* 08A948 80089D48 53200020 */  beql  $t9, $zero, .L80089DCC
/* 08A94C 80089D4C 8FD80000 */   lw    $t8, ($fp)
/* 08A950 80089D50 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08A954 80089D54 01134824 */  and   $t1, $t0, $s3
/* 08A958 80089D58 5520001C */  bnel  $t1, $zero, .L80089DCC
/* 08A95C 80089D5C 8FD80000 */   lw    $t8, ($fp)
/* 08A960 80089D60 96020000 */  lhu   $v0, ($s0)
/* 08A964 80089D64 304A8000 */  andi  $t2, $v0, 0x8000
/* 08A968 80089D68 11400017 */  beqz  $t2, .L80089DC8
/* 08A96C 80089D6C 304B0100 */   andi  $t3, $v0, 0x100
/* 08A970 80089D70 15600015 */  bnez  $t3, .L80089DC8
/* 08A974 80089D74 02402025 */   move  $a0, $s2
/* 08A978 80089D78 4406A000 */  mfc1  $a2, $f20
/* 08A97C 80089D7C 0C0223A6 */  jal   func_80088E98
/* 08A980 80089D80 02002825 */   move  $a1, $s0
/* 08A984 80089D84 50400011 */  beql  $v0, $zero, .L80089DCC
/* 08A988 80089D88 8FD80000 */   lw    $t8, ($fp)
/* 08A98C 80089D8C 8E0C00BC */  lw    $t4, 0xbc($s0)
/* 08A990 80089D90 24170001 */  li    $s7, 1
/* 08A994 80089D94 318D0200 */  andi  $t5, $t4, 0x200
/* 08A998 80089D98 55A0000C */  bnel  $t5, $zero, .L80089DCC
/* 08A99C 80089D9C 8FD80000 */   lw    $t8, ($fp)
/* 08A9A0 80089DA0 8E0E000C */  lw    $t6, 0xc($s0)
/* 08A9A4 80089DA4 02402025 */  move  $a0, $s2
/* 08A9A8 80089DA8 02A02825 */  move  $a1, $s5
/* 08A9AC 80089DAC 01D47825 */  or    $t7, $t6, $s4
/* 08A9B0 80089DB0 0C01C88F */  jal   func_8007223C
/* 08A9B4 80089DB4 AE0F000C */   sw    $t7, 0xc($s0)
/* 08A9B8 80089DB8 50400004 */  beql  $v0, $zero, .L80089DCC
/* 08A9BC 80089DBC 8FD80000 */   lw    $t8, ($fp)
/* 08A9C0 80089DC0 0C01C860 */  jal   func_80072180
/* 08A9C4 80089DC4 00000000 */   nop
.L80089DC8:
/* 08A9C8 80089DC8 8FD80000 */  lw    $t8, ($fp)
.L80089DCC:
/* 08A9CC 80089DCC 26310001 */  addiu $s1, $s1, 1
/* 08A9D0 80089DD0 26100DD8 */  addiu $s0, $s0, 0xdd8
/* 08A9D4 80089DD4 0238082A */  slt   $at, $s1, $t8
/* 08A9D8 80089DD8 5420FFDB */  bnel  $at, $zero, .L80089D48
/* 08A9DC 80089DDC 86D900A6 */   lh    $t9, 0xa6($s6)
.L80089DE0:
/* 08A9E0 80089DE0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 08A9E4 80089DE4 02E01025 */  move  $v0, $s7
/* 08A9E8 80089DE8 8FB7003C */  lw    $s7, 0x3c($sp)
/* 08A9EC 80089DEC D7B40018 */  ldc1  $f20, 0x18($sp)
/* 08A9F0 80089DF0 8FB00020 */  lw    $s0, 0x20($sp)
/* 08A9F4 80089DF4 8FB10024 */  lw    $s1, 0x24($sp)
/* 08A9F8 80089DF8 8FB20028 */  lw    $s2, 0x28($sp)
/* 08A9FC 80089DFC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 08AA00 80089E00 8FB40030 */  lw    $s4, 0x30($sp)
/* 08AA04 80089E04 8FB50034 */  lw    $s5, 0x34($sp)
/* 08AA08 80089E08 8FB60038 */  lw    $s6, 0x38($sp)
/* 08AA0C 80089E0C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 08AA10 80089E10 03E00008 */  jr    $ra
/* 08AA14 80089E14 27BD0048 */   addiu $sp, $sp, 0x48

/* 08AA18 80089E18 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 08AA1C 80089E1C AFB00018 */  sw    $s0, 0x18($sp)
/* 08AA20 80089E20 AFBF0034 */  sw    $ra, 0x34($sp)
/* 08AA24 80089E24 AFB60030 */  sw    $s6, 0x30($sp)
/* 08AA28 80089E28 AFB40028 */  sw    $s4, 0x28($sp)
/* 08AA2C 80089E2C 3C10800E */  lui   $s0, %hi(gPlayerOne) # $s0, 0x800e
/* 08AA30 80089E30 0080A025 */  move  $s4, $a0
/* 08AA34 80089E34 AFB5002C */  sw    $s5, 0x2c($sp)
/* 08AA38 80089E38 AFB30024 */  sw    $s3, 0x24($sp)
/* 08AA3C 80089E3C AFB20020 */  sw    $s2, 0x20($sp)
/* 08AA40 80089E40 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08AA44 80089E44 0000B025 */  move  $s6, $zero
/* 08AA48 80089E48 8E10C4DC */  lw    $s0, %lo(gPlayerOne)($s0)
/* 08AA4C 80089E4C 0C01C88F */  jal   func_8007223C
/* 08AA50 80089E50 24050200 */   li    $a1, 512
/* 08AA54 80089E54 10400028 */  beqz  $v0, .L80089EF8
/* 08AA58 80089E58 3C158019 */   lui   $s5, %hi(D_8018D158) # $s5, 0x8019
/* 08AA5C 80089E5C 26B5D158 */  addiu $s5, %lo(D_8018D158) # addiu $s5, $s5, -0x2ea8
/* 08AA60 80089E60 8EAE0000 */  lw    $t6, ($s5)
/* 08AA64 80089E64 001478C0 */  sll   $t7, $s4, 3
/* 08AA68 80089E68 01F47823 */  subu  $t7, $t7, $s4
/* 08AA6C 80089E6C 19C00022 */  blez  $t6, .L80089EF8
/* 08AA70 80089E70 00008825 */   move  $s1, $zero
/* 08AA74 80089E74 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08AA78 80089E78 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08AA7C 80089E7C 000F7940 */  sll   $t7, $t7, 5
/* 08AA80 80089E80 3C138000 */  lui   $s3, (0x800000C0 >> 16) # lui $s3, 0x8000
/* 08AA84 80089E84 367300C0 */  ori   $s3, (0x800000C0 & 0xFFFF) # ori $s3, $s3, 0xc0
/* 08AA88 80089E88 01F89021 */  addu  $s2, $t7, $t8
/* 08AA8C 80089E8C 865900A6 */  lh    $t9, 0xa6($s2)
.L80089E90:
/* 08AA90 80089E90 53200014 */  beql  $t9, $zero, .L80089EE4
/* 08AA94 80089E94 8EAE0000 */   lw    $t6, ($s5)
/* 08AA98 80089E98 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08AA9C 80089E9C 02802025 */  move  $a0, $s4
/* 08AAA0 80089EA0 01134824 */  and   $t1, $t0, $s3
/* 08AAA4 80089EA4 5520000F */  bnel  $t1, $zero, .L80089EE4
/* 08AAA8 80089EA8 8EAE0000 */   lw    $t6, ($s5)
/* 08AAAC 80089EAC 0C022346 */  jal   func_80088D18
/* 08AAB0 80089EB0 02002825 */   move  $a1, $s0
/* 08AAB4 80089EB4 5040000B */  beql  $v0, $zero, .L80089EE4
/* 08AAB8 80089EB8 8EAE0000 */   lw    $t6, ($s5)
/* 08AABC 80089EBC 8E0A00BC */  lw    $t2, 0xbc($s0)
/* 08AAC0 80089EC0 314B0200 */  andi  $t3, $t2, 0x200
/* 08AAC4 80089EC4 51600004 */  beql  $t3, $zero, .L80089ED8
/* 08AAC8 80089EC8 8E0C000C */   lw    $t4, 0xc($s0)
/* 08AACC 80089ECC 10000004 */  b     .L80089EE0
/* 08AAD0 80089ED0 24160001 */   li    $s6, 1
/* 08AAD4 80089ED4 8E0C000C */  lw    $t4, 0xc($s0)
.L80089ED8:
/* 08AAD8 80089ED8 358D0001 */  ori   $t5, $t4, 1
/* 08AADC 80089EDC AE0D000C */  sw    $t5, 0xc($s0)
.L80089EE0:
/* 08AAE0 80089EE0 8EAE0000 */  lw    $t6, ($s5)
.L80089EE4:
/* 08AAE4 80089EE4 26310001 */  addiu $s1, $s1, 1
/* 08AAE8 80089EE8 26100DD8 */  addiu $s0, $s0, 0xdd8
/* 08AAEC 80089EEC 022E082A */  slt   $at, $s1, $t6
/* 08AAF0 80089EF0 5420FFE7 */  bnel  $at, $zero, .L80089E90
/* 08AAF4 80089EF4 865900A6 */   lh    $t9, 0xa6($s2)
.L80089EF8:
/* 08AAF8 80089EF8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 08AAFC 80089EFC 02C01025 */  move  $v0, $s6
/* 08AB00 80089F00 8FB60030 */  lw    $s6, 0x30($sp)
/* 08AB04 80089F04 8FB00018 */  lw    $s0, 0x18($sp)
/* 08AB08 80089F08 8FB1001C */  lw    $s1, 0x1c($sp)
/* 08AB0C 80089F0C 8FB20020 */  lw    $s2, 0x20($sp)
/* 08AB10 80089F10 8FB30024 */  lw    $s3, 0x24($sp)
/* 08AB14 80089F14 8FB40028 */  lw    $s4, 0x28($sp)
/* 08AB18 80089F18 8FB5002C */  lw    $s5, 0x2c($sp)
/* 08AB1C 80089F1C 03E00008 */  jr    $ra
/* 08AB20 80089F20 27BD0038 */   addiu $sp, $sp, 0x38
