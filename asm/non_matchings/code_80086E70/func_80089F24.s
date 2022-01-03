glabel func_80089F24
/* 08AB24 80089F24 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 08AB28 80089F28 AFB00018 */  sw    $s0, 0x18($sp)
/* 08AB2C 80089F2C AFBF003C */  sw    $ra, 0x3c($sp)
/* 08AB30 80089F30 AFB70034 */  sw    $s7, 0x34($sp)
/* 08AB34 80089F34 AFB20020 */  sw    $s2, 0x20($sp)
/* 08AB38 80089F38 3C10800E */  lui   $s0, %hi(gPlayerOne) # $s0, 0x800e
/* 08AB3C 80089F3C 00809025 */  move  $s2, $a0
/* 08AB40 80089F40 AFBE0038 */  sw    $fp, 0x38($sp)
/* 08AB44 80089F44 AFB60030 */  sw    $s6, 0x30($sp)
/* 08AB48 80089F48 AFB5002C */  sw    $s5, 0x2c($sp)
/* 08AB4C 80089F4C AFB40028 */  sw    $s4, 0x28($sp)
/* 08AB50 80089F50 AFB30024 */  sw    $s3, 0x24($sp)
/* 08AB54 80089F54 AFB1001C */  sw    $s1, 0x1c($sp)
/* 08AB58 80089F58 0000B825 */  move  $s7, $zero
/* 08AB5C 80089F5C 8E10C4DC */  lw    $s0, %lo(gPlayerOne)($s0)
/* 08AB60 80089F60 0C01C88F */  jal   func_8007223C
/* 08AB64 80089F64 24050200 */   li    $a1, 512
/* 08AB68 80089F68 10400030 */  beqz  $v0, .L8008A02C
/* 08AB6C 80089F6C 3C1E8019 */   lui   $fp, %hi(D_8018D158) # $fp, 0x8019
/* 08AB70 80089F70 27DED158 */  addiu $fp, %lo(D_8018D158) # addiu $fp, $fp, -0x2ea8
/* 08AB74 80089F74 8FCE0000 */  lw    $t6, ($fp)
/* 08AB78 80089F78 001278C0 */  sll   $t7, $s2, 3
/* 08AB7C 80089F7C 01F27823 */  subu  $t7, $t7, $s2
/* 08AB80 80089F80 19C0002A */  blez  $t6, .L8008A02C
/* 08AB84 80089F84 00008825 */   move  $s1, $zero
/* 08AB88 80089F88 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08AB8C 80089F8C 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08AB90 80089F90 000F7940 */  sll   $t7, $t7, 5
/* 08AB94 80089F94 3C148000 */  lui   $s4, (0x800002C0 >> 16) # lui $s4, 0x8000
/* 08AB98 80089F98 369402C0 */  ori   $s4, (0x800002C0 & 0xFFFF) # ori $s4, $s4, 0x2c0
/* 08AB9C 80089F9C 01F89821 */  addu  $s3, $t7, $t8
/* 08ABA0 80089FA0 3C160020 */  lui   $s6, 0x20
/* 08ABA4 80089FA4 3C150400 */  lui   $s5, 0x400
/* 08ABA8 80089FA8 867900A6 */  lh    $t9, 0xa6($s3)
.L80089FAC:
/* 08ABAC 80089FAC 5320001A */  beql  $t9, $zero, .L8008A018
/* 08ABB0 80089FB0 8FCE0000 */   lw    $t6, ($fp)
/* 08ABB4 80089FB4 8E0800BC */  lw    $t0, 0xbc($s0)
/* 08ABB8 80089FB8 01144824 */  and   $t1, $t0, $s4
/* 08ABBC 80089FBC 55200016 */  bnel  $t1, $zero, .L8008A018
/* 08ABC0 80089FC0 8FCE0000 */   lw    $t6, ($fp)
/* 08ABC4 80089FC4 96020000 */  lhu   $v0, ($s0)
/* 08ABC8 80089FC8 304A8000 */  andi  $t2, $v0, 0x8000
/* 08ABCC 80089FCC 11400011 */  beqz  $t2, .L8008A014
/* 08ABD0 80089FD0 304B0100 */   andi  $t3, $v0, 0x100
/* 08ABD4 80089FD4 1560000F */  bnez  $t3, .L8008A014
/* 08ABD8 80089FD8 02402025 */   move  $a0, $s2
/* 08ABDC 80089FDC 0C022346 */  jal   func_80088D18
/* 08ABE0 80089FE0 02002825 */   move  $a1, $s0
/* 08ABE4 80089FE4 1040000B */  beqz  $v0, .L8008A014
/* 08ABE8 80089FE8 02402025 */   move  $a0, $s2
/* 08ABEC 80089FEC 24170001 */  li    $s7, 1
/* 08ABF0 80089FF0 0C01C88F */  jal   func_8007223C
/* 08ABF4 80089FF4 02A02825 */   move  $a1, $s5
/* 08ABF8 80089FF8 50400004 */  beql  $v0, $zero, .L8008A00C
/* 08ABFC 80089FFC 8E0C000C */   lw    $t4, 0xc($s0)
/* 08AC00 8008A000 0C01C860 */  jal   func_80072180
/* 08AC04 8008A004 00000000 */   nop
/* 08AC08 8008A008 8E0C000C */  lw    $t4, 0xc($s0)
.L8008A00C:
/* 08AC0C 8008A00C 01966825 */  or    $t5, $t4, $s6
/* 08AC10 8008A010 AE0D000C */  sw    $t5, 0xc($s0)
.L8008A014:
/* 08AC14 8008A014 8FCE0000 */  lw    $t6, ($fp)
.L8008A018:
/* 08AC18 8008A018 26310001 */  addiu $s1, $s1, 1
/* 08AC1C 8008A01C 26100DD8 */  addiu $s0, $s0, 0xdd8
/* 08AC20 8008A020 022E082A */  slt   $at, $s1, $t6
/* 08AC24 8008A024 5420FFE1 */  bnel  $at, $zero, .L80089FAC
/* 08AC28 8008A028 867900A6 */   lh    $t9, 0xa6($s3)
.L8008A02C:
/* 08AC2C 8008A02C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 08AC30 8008A030 02E01025 */  move  $v0, $s7
/* 08AC34 8008A034 8FB70034 */  lw    $s7, 0x34($sp)
/* 08AC38 8008A038 8FB00018 */  lw    $s0, 0x18($sp)
/* 08AC3C 8008A03C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 08AC40 8008A040 8FB20020 */  lw    $s2, 0x20($sp)
/* 08AC44 8008A044 8FB30024 */  lw    $s3, 0x24($sp)
/* 08AC48 8008A048 8FB40028 */  lw    $s4, 0x28($sp)
/* 08AC4C 8008A04C 8FB5002C */  lw    $s5, 0x2c($sp)
/* 08AC50 8008A050 8FB60030 */  lw    $s6, 0x30($sp)
/* 08AC54 8008A054 8FBE0038 */  lw    $fp, 0x38($sp)
/* 08AC58 8008A058 03E00008 */  jr    $ra
/* 08AC5C 8008A05C 27BD0040 */   addiu $sp, $sp, 0x40
