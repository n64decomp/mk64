glabel func_80096CD8
/* 0978D8 80096CD8 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 0978DC 80096CDC AFBF0054 */  sw    $ra, 0x54($sp)
/* 0978E0 80096CE0 AFB40040 */  sw    $s4, 0x40($sp)
/* 0978E4 80096CE4 AFB20038 */  sw    $s2, 0x38($sp)
/* 0978E8 80096CE8 AFB00030 */  sw    $s0, 0x30($sp)
/* 0978EC 80096CEC 2CE10002 */  sltiu $at, $a3, 2
/* 0978F0 80096CF0 00808025 */  move  $s0, $a0
/* 0978F4 80096CF4 00C09025 */  move  $s2, $a2
/* 0978F8 80096CF8 00A0A025 */  move  $s4, $a1
/* 0978FC 80096CFC AFBE0050 */  sw    $fp, 0x50($sp)
/* 097900 80096D00 AFB7004C */  sw    $s7, 0x4c($sp)
/* 097904 80096D04 AFB60048 */  sw    $s6, 0x48($sp)
/* 097908 80096D08 AFB50044 */  sw    $s5, 0x44($sp)
/* 09790C 80096D0C AFB3003C */  sw    $s3, 0x3c($sp)
/* 097910 80096D10 AFB10034 */  sw    $s1, 0x34($sp)
/* 097914 80096D14 AFA700F4 */  sw    $a3, 0xf4($sp)
/* 097918 80096D18 241F0001 */  li    $ra, 1
/* 09791C 80096D1C AFA000C8 */  sw    $zero, 0xc8($sp)
/* 097920 80096D20 AFA000C4 */  sw    $zero, 0xc4($sp)
/* 097924 80096D24 14200007 */  bnez  $at, .L80096D44
/* 097928 80096D28 00E07025 */   move  $t6, $a3
/* 09792C 80096D2C 8FB800F4 */  lw    $t8, 0xf4($sp)
.L80096D30:
/* 097930 80096D30 001F7840 */  sll   $t7, $ra, 1
/* 097934 80096D34 01E0F825 */  move  $ra, $t7
/* 097938 80096D38 01F8082B */  sltu  $at, $t7, $t8
/* 09793C 80096D3C 5420FFFC */  bnel  $at, $zero, .L80096D30
/* 097940 80096D40 8FB800F4 */   lw    $t8, 0xf4($sp)
.L80096D44:
/* 097944 80096D44 24190400 */  li    $t9, 1024
/* 097948 80096D48 033F001A */  div   $zero, $t9, $ra
/* 09794C 80096D4C 00001012 */  mflo  $v0
/* 097950 80096D50 8FA500F8 */  lw    $a1, 0xf8($sp)
/* 097954 80096D54 17E00002 */  bnez  $ra, .L80096D60
/* 097958 80096D58 00000000 */   nop
/* 09795C 80096D5C 0007000D */  break 7
.L80096D60:
/* 097960 80096D60 2401FFFF */  li    $at, -1
/* 097964 80096D64 17E10004 */  bne   $ra, $at, .L80096D78
/* 097968 80096D68 3C018000 */   lui   $at, 0x8000
/* 09796C 80096D6C 17210002 */  bne   $t9, $at, .L80096D78
/* 097970 80096D70 00000000 */   nop
/* 097974 80096D74 0006000D */  break 6
.L80096D78:
/* 097978 80096D78 AFA200CC */  sw    $v0, 0xcc($sp)
/* 09797C 80096D7C 04410003 */  bgez  $v0, .L80096D8C
/* 097980 80096D80 00027043 */   sra   $t6, $v0, 1
/* 097984 80096D84 24410001 */  addiu $at, $v0, 1
/* 097988 80096D88 00017043 */  sra   $t6, $at, 1
.L80096D8C:
/* 09798C 80096D8C 00AE082B */  sltu  $at, $a1, $t6
/* 097990 80096D90 1020000F */  beqz  $at, .L80096DD0
/* 097994 80096D94 8FA200CC */   lw    $v0, 0xcc($sp)
/* 097998 80096D98 04410003 */  bgez  $v0, .L80096DA8
/* 09799C 80096D9C 00027843 */   sra   $t7, $v0, 1
/* 0979A0 80096DA0 24410001 */  addiu $at, $v0, 1
/* 0979A4 80096DA4 00017843 */  sra   $t7, $at, 1
.L80096DA8:
/* 0979A8 80096DA8 01E01025 */  move  $v0, $t7
/* 0979AC 80096DAC 00401825 */  move  $v1, $v0
.L80096DB0:
/* 0979B0 80096DB0 04610003 */  bgez  $v1, .L80096DC0
/* 0979B4 80096DB4 00031043 */   sra   $v0, $v1, 1
/* 0979B8 80096DB8 24610001 */  addiu $at, $v1, 1
/* 0979BC 80096DBC 00011043 */  sra   $v0, $at, 1
.L80096DC0:
/* 0979C0 80096DC0 00A2082B */  sltu  $at, $a1, $v0
/* 0979C4 80096DC4 5420FFFA */  bnel  $at, $zero, .L80096DB0
/* 0979C8 80096DC8 00401825 */   move  $v1, $v0
/* 0979CC 80096DCC AFA300CC */  sw    $v1, 0xcc($sp)
.L80096DD0:
/* 0979D0 80096DD0 2BE10002 */  slti  $at, $ra, 2
/* 0979D4 80096DD4 1420000B */  bnez  $at, .L80096E04
/* 0979D8 80096DD8 03E08825 */   move  $s1, $ra
.L80096DDC:
/* 0979DC 80096DDC 8FB900C8 */  lw    $t9, 0xc8($sp)
/* 0979E0 80096DE0 06210003 */  bgez  $s1, .L80096DF0
/* 0979E4 80096DE4 0011C043 */   sra   $t8, $s1, 1
/* 0979E8 80096DE8 26210001 */  addiu $at, $s1, 1
/* 0979EC 80096DEC 0001C043 */  sra   $t8, $at, 1
.L80096DF0:
/* 0979F0 80096DF0 2B010002 */  slti  $at, $t8, 2
/* 0979F4 80096DF4 272E0001 */  addiu $t6, $t9, 1
/* 0979F8 80096DF8 03008825 */  move  $s1, $t8
/* 0979FC 80096DFC 1020FFF7 */  beqz  $at, .L80096DDC
/* 097A00 80096E00 AFAE00C8 */   sw    $t6, 0xc8($sp)
.L80096E04:
/* 097A04 80096E04 8FB100CC */  lw    $s1, 0xcc($sp)
/* 097A08 80096E08 2A210002 */  slti  $at, $s1, 2
/* 097A0C 80096E0C 1420000B */  bnez  $at, .L80096E3C
/* 097A10 80096E10 00000000 */   nop
.L80096E14:
/* 097A14 80096E14 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 097A18 80096E18 06210003 */  bgez  $s1, .L80096E28
/* 097A1C 80096E1C 0011C043 */   sra   $t8, $s1, 1
/* 097A20 80096E20 26210001 */  addiu $at, $s1, 1
/* 097A24 80096E24 0001C043 */  sra   $t8, $at, 1
.L80096E28:
/* 097A28 80096E28 2B010002 */  slti  $at, $t8, 2
/* 097A2C 80096E2C 272E0001 */  addiu $t6, $t9, 1
/* 097A30 80096E30 03008825 */  move  $s1, $t8
/* 097A34 80096E34 1020FFF7 */  beqz  $at, .L80096E14
/* 097A38 80096E38 AFAE00C4 */   sw    $t6, 0xc4($sp)
.L80096E3C:
/* 097A3C 80096E3C 06810006 */  bgez  $s4, .L80096E58
/* 097A40 80096E40 8FB900F4 */   lw    $t9, 0xf4($sp)
/* 097A44 80096E44 8FAF00F4 */  lw    $t7, 0xf4($sp)
/* 097A48 80096E48 01F4C023 */  subu  $t8, $t7, $s4
/* 097A4C 80096E4C AFB800F4 */  sw    $t8, 0xf4($sp)
/* 097A50 80096E50 10000007 */  b     .L80096E70
/* 097A54 80096E54 0000A025 */   move  $s4, $zero
.L80096E58:
/* 097A58 80096E58 02997021 */  addu  $t6, $s4, $t9
/* 097A5C 80096E5C 2DC10141 */  sltiu $at, $t6, 0x141
/* 097A60 80096E60 14200003 */  bnez  $at, .L80096E70
/* 097A64 80096E64 240F0140 */   li    $t7, 320
/* 097A68 80096E68 01F4C023 */  subu  $t8, $t7, $s4
/* 097A6C 80096E6C AFB800F4 */  sw    $t8, 0xf4($sp)
.L80096E70:
/* 097A70 80096E70 06410004 */  bgez  $s2, .L80096E84
/* 097A74 80096E74 8FAF00F4 */   lw    $t7, 0xf4($sp)
/* 097A78 80096E78 00B22823 */  subu  $a1, $a1, $s2
/* 097A7C 80096E7C 10000006 */  b     .L80096E98
/* 097A80 80096E80 00009025 */   move  $s2, $zero
.L80096E84:
/* 097A84 80096E84 0245C821 */  addu  $t9, $s2, $a1
/* 097A88 80096E88 2F2100F1 */  sltiu $at, $t9, 0xf1
/* 097A8C 80096E8C 14200002 */  bnez  $at, .L80096E98
/* 097A90 80096E90 240E00F0 */   li    $t6, 240
/* 097A94 80096E94 01D22823 */  subu  $a1, $t6, $s2
.L80096E98:
/* 097A98 80096E98 15E00003 */  bnez  $t7, .L80096EA8
/* 097A9C 80096E9C 00000000 */   nop
/* 097AA0 80096EA0 100000E8 */  b     .L80097244
/* 097AA4 80096EA4 02001025 */   move  $v0, $s0
.L80096EA8:
/* 097AA8 80096EA8 14A00003 */  bnez  $a1, .L80096EB8
/* 097AAC 80096EAC 24040064 */   li    $a0, 100
/* 097AB0 80096EB0 100000E4 */  b     .L80097244
/* 097AB4 80096EB4 02001025 */   move  $v0, $s0
.L80096EB8:
/* 097AB8 80096EB8 8FB800F4 */  lw    $t8, 0xf4($sp)
/* 097ABC 80096EBC AFBF00D0 */  sw    $ra, 0xd0($sp)
/* 097AC0 80096EC0 02459821 */  addu  $s3, $s2, $a1
/* 097AC4 80096EC4 02986021 */  addu  $t4, $s4, $t8
/* 097AC8 80096EC8 0C0ADF8D */  jal   random_int
/* 097ACC 80096ECC AFAC0084 */   sw    $t4, 0x84($sp)
/* 097AD0 80096ED0 8FA70084 */  lw    $a3, 0x84($sp)
/* 097AD4 80096ED4 00408825 */  move  $s1, $v0
/* 097AD8 80096ED8 02002025 */  move  $a0, $s0
/* 097ADC 80096EDC 02802825 */  move  $a1, $s4
/* 097AE0 80096EE0 02403025 */  move  $a2, $s2
/* 097AE4 80096EE4 AFB30010 */  sw    $s3, 0x10($sp)
/* 097AE8 80096EE8 AFA00014 */  sw    $zero, 0x14($sp)
/* 097AEC 80096EEC AFA00018 */  sw    $zero, 0x18($sp)
/* 097AF0 80096EF0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 097AF4 80096EF4 0C02637E */  jal   draw_box
/* 097AF8 80096EF8 AFA20020 */   sw    $v0, 0x20($sp)
/* 097AFC 80096EFC 8FAC0084 */  lw    $t4, 0x84($sp)
/* 097B00 80096F00 8FBF00D0 */  lw    $ra, 0xd0($sp)
/* 097B04 80096F04 26310096 */  addiu $s1, $s1, 0x96
/* 097B08 80096F08 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 097B0C 80096F0C 3C19E700 */  lui   $t9, 0xe700
/* 097B10 80096F10 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 097B14 80096F14 3C0F0050 */  lui   $t7, (0x00504240 >> 16) # lui $t7, 0x50
/* 097B18 80096F18 322300FF */  andi  $v1, $s1, 0xff
/* 097B1C 80096F1C AC590000 */  sw    $t9, ($v0)
/* 097B20 80096F20 35EF4240 */  ori   $t7, (0x00504240 & 0xFFFF) # ori $t7, $t7, 0x4240
/* 097B24 80096F24 AC4E0008 */  sw    $t6, 8($v0)
/* 097B28 80096F28 3C18FA00 */  lui   $t8, 0xfa00
/* 097B2C 80096F2C AC4F000C */  sw    $t7, 0xc($v0)
/* 097B30 80096F30 AC580010 */  sw    $t8, 0x10($v0)
/* 097B34 80096F34 00037400 */  sll   $t6, $v1, 0x10
/* 097B38 80096F38 0003CE00 */  sll   $t9, $v1, 0x18
/* 097B3C 80096F3C 032E7825 */  or    $t7, $t9, $t6
/* 097B40 80096F40 0003C200 */  sll   $t8, $v1, 8
/* 097B44 80096F44 01F8C825 */  or    $t9, $t7, $t8
/* 097B48 80096F48 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* 097B4C 80096F4C 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* 097B50 80096F50 03237025 */  or    $t6, $t9, $v1
/* 097B54 80096F54 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* 097B58 80096F58 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 097B5C 80096F5C 0253082B */  sltu  $at, $s2, $s3
/* 097B60 80096F60 AC400004 */  sw    $zero, 4($v0)
/* 097B64 80096F64 AC4E0014 */  sw    $t6, 0x14($v0)
/* 097B68 80096F68 AC58001C */  sw    $t8, 0x1c($v0)
/* 097B6C 80096F6C AC4F0018 */  sw    $t7, 0x18($v0)
/* 097B70 80096F70 24500020 */  addiu $s0, $v0, 0x20
/* 097B74 80096F74 102000B2 */  beqz  $at, .L80097240
/* 097B78 80096F78 0240F025 */   move  $fp, $s2
/* 097B7C 80096F7C 8FB900CC */  lw    $t9, 0xcc($sp)
.L80096F80:
/* 097B80 80096F80 8FAD00CC */  lw    $t5, 0xcc($sp)
/* 097B84 80096F84 02808825 */  move  $s1, $s4
/* 097B88 80096F88 033E7021 */  addu  $t6, $t9, $fp
/* 097B8C 80096F8C 026E082B */  sltu  $at, $s3, $t6
/* 097B90 80096F90 10200006 */  beqz  $at, .L80096FAC
/* 097B94 80096F94 AFAE007C */   sw    $t6, 0x7c($sp)
/* 097B98 80096F98 027E6823 */  subu  $t5, $s3, $fp
/* 097B9C 80096F9C 51A000A9 */  beql  $t5, $zero, .L80097244
/* 097BA0 80096FA0 02001025 */   move  $v0, $s0
/* 097BA4 80096FA4 10000001 */  b     .L80096FAC
/* 097BA8 80096FA8 02808825 */   move  $s1, $s4
.L80096FAC:
/* 097BAC 80096FAC 028C082B */  sltu  $at, $s4, $t4
/* 097BB0 80096FB0 502000A0 */  beql  $at, $zero, .L80097234
/* 097BB4 80096FB4 8FBE007C */   lw    $fp, 0x7c($sp)
/* 097BB8 80096FB8 AFB30080 */  sw    $s3, 0x80($sp)
/* 097BBC 80096FBC AFB400EC */  sw    $s4, 0xec($sp)
.L80096FC0:
/* 097BC0 80096FC0 03F15021 */  addu  $t2, $ra, $s1
/* 097BC4 80096FC4 018A082B */  sltu  $at, $t4, $t2
/* 097BC8 80096FC8 8FAF0080 */  lw    $t7, 0x80($sp)
/* 097BCC 80096FCC 1020001E */  beqz  $at, .L80097048
/* 097BD0 80096FD0 8FB800EC */   lw    $t8, 0xec($sp)
/* 097BD4 80096FD4 0191A023 */  subu  $s4, $t4, $s1
/* 097BD8 80096FD8 16800004 */  bnez  $s4, .L80096FEC
/* 097BDC 80096FDC 8FA500F4 */   lw    $a1, 0xf4($sp)
/* 097BE0 80096FE0 0300A025 */  move  $s4, $t8
/* 097BE4 80096FE4 10000092 */  b     .L80097230
/* 097BE8 80096FE8 01E09825 */   move  $s3, $t7
.L80096FEC:
/* 097BEC 80096FEC 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 097BF0 80096FF0 24A5FFFF */  addiu $a1, $a1, -1
/* 097BF4 80096FF4 8FA300C8 */  lw    $v1, 0xc8($sp)
/* 097BF8 80096FF8 30B90FFF */  andi  $t9, $a1, 0xfff
/* 097BFC 80096FFC 3C01FD70 */  lui   $at, 0xfd70
/* 097C00 80097000 03212825 */  or    $a1, $t9, $at
/* 097C04 80097004 3058000F */  andi  $t8, $v0, 0xf
/* 097C08 80097008 00181380 */  sll   $v0, $t8, 0xe
/* 097C0C 8009700C 3C010700 */  lui   $at, 0x700
/* 097C10 80097010 3079000F */  andi  $t9, $v1, 0xf
/* 097C14 80097014 00191900 */  sll   $v1, $t9, 4
/* 097C18 80097018 0041C025 */  or    $t8, $v0, $at
/* 097C1C 8009701C 0303B025 */  or    $s6, $t8, $v1
/* 097C20 80097020 001E9080 */  sll   $s2, $fp, 2
/* 097C24 80097024 03CD9821 */  addu  $s3, $fp, $t5
/* 097C28 80097028 0013C880 */  sll   $t9, $s3, 2
/* 097C2C 8009702C 324F0FFF */  andi  $t7, $s2, 0xfff
/* 097C30 80097030 001EC140 */  sll   $t8, $fp, 5
/* 097C34 80097034 330BFFFF */  andi  $t3, $t8, 0xffff
/* 097C38 80097038 01E09025 */  move  $s2, $t7
/* 097C3C 8009703C 33330FFF */  andi  $s3, $t9, 0xfff
/* 097C40 80097040 10000019 */  b     .L800970A8
/* 097C44 80097044 0043B825 */   or    $s7, $v0, $v1
.L80097048:
/* 097C48 80097048 8FA500F4 */  lw    $a1, 0xf4($sp)
/* 097C4C 8009704C 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 097C50 80097050 8FA300C8 */  lw    $v1, 0xc8($sp)
/* 097C54 80097054 24A5FFFF */  addiu $a1, $a1, -1
/* 097C58 80097058 30B90FFF */  andi  $t9, $a1, 0xfff
/* 097C5C 8009705C 3C01FD70 */  lui   $at, 0xfd70
/* 097C60 80097060 03212825 */  or    $a1, $t9, $at
/* 097C64 80097064 3058000F */  andi  $t8, $v0, 0xf
/* 097C68 80097068 00181380 */  sll   $v0, $t8, 0xe
/* 097C6C 8009706C 3C010700 */  lui   $at, 0x700
/* 097C70 80097070 3079000F */  andi  $t9, $v1, 0xf
/* 097C74 80097074 00191900 */  sll   $v1, $t9, 4
/* 097C78 80097078 0041C025 */  or    $t8, $v0, $at
/* 097C7C 8009707C 0303B025 */  or    $s6, $t8, $v1
/* 097C80 80097080 001E9080 */  sll   $s2, $fp, 2
/* 097C84 80097084 03CD9821 */  addu  $s3, $fp, $t5
/* 097C88 80097088 0013C880 */  sll   $t9, $s3, 2
/* 097C8C 8009708C 324F0FFF */  andi  $t7, $s2, 0xfff
/* 097C90 80097090 001EC140 */  sll   $t8, $fp, 5
/* 097C94 80097094 330BFFFF */  andi  $t3, $t8, 0xffff
/* 097C98 80097098 01E09025 */  move  $s2, $t7
/* 097C9C 8009709C 33330FFF */  andi  $s3, $t9, 0xfff
/* 097CA0 800970A0 0043B825 */  or    $s7, $v0, $v1
/* 097CA4 800970A4 03E0A025 */  move  $s4, $ra
.L800970A8:
/* 097CA8 800970A8 0200A825 */  move  $s5, $s0
/* 097CAC 800970AC AEA50000 */  sw    $a1, ($s5)
/* 097CB0 800970B0 AFBF00D0 */  sw    $ra, 0xd0($sp)
/* 097CB4 800970B4 AFAD00D4 */  sw    $t5, 0xd4($sp)
/* 097CB8 800970B8 AFAC0084 */  sw    $t4, 0x84($sp)
/* 097CBC 800970BC AFAB0058 */  sw    $t3, 0x58($sp)
/* 097CC0 800970C0 AFAA0078 */  sw    $t2, 0x78($sp)
/* 097CC4 800970C4 26100008 */  addiu $s0, $s0, 8
/* 097CC8 800970C8 0C0ADF8D */  jal   random_int
/* 097CCC 800970CC 24040080 */   li    $a0, 128
/* 097CD0 800970D0 3C0E0B00 */  lui   $t6, %hi(D_0B002A00) # $t6, 0xb00
/* 097CD4 800970D4 02343021 */  addu  $a2, $s1, $s4
/* 097CD8 800970D8 00D13823 */  subu  $a3, $a2, $s1
/* 097CDC 800970DC 25CE2A00 */  addiu $t6, %lo(D_0B002A00) # addiu $t6, $t6, 0x2a00
/* 097CE0 800970E0 0002C840 */  sll   $t9, $v0, 1
/* 097CE4 800970E4 032EC021 */  addu  $t8, $t9, $t6
/* 097CE8 800970E8 00077840 */  sll   $t7, $a3, 1
/* 097CEC 800970EC 25E70009 */  addiu $a3, $t7, 9
/* 097CF0 800970F0 8FAA0078 */  lw    $t2, 0x78($sp)
/* 097CF4 800970F4 8FAB0058 */  lw    $t3, 0x58($sp)
/* 097CF8 800970F8 8FAC0084 */  lw    $t4, 0x84($sp)
/* 097CFC 800970FC 0007C8C2 */  srl   $t9, $a3, 3
/* 097D00 80097100 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 097D04 80097104 8FBF00D0 */  lw    $ra, 0xd0($sp)
/* 097D08 80097108 AEB80004 */  sw    $t8, 4($s5)
/* 097D0C 8009710C 332E01FF */  andi  $t6, $t9, 0x1ff
/* 097D10 80097110 02001825 */  move  $v1, $s0
/* 097D14 80097114 26100008 */  addiu $s0, $s0, 8
/* 097D18 80097118 000EC240 */  sll   $t8, $t6, 9
/* 097D1C 8009711C 3C01F570 */  lui   $at, 0xf570
/* 097D20 80097120 03013825 */  or    $a3, $t8, $at
/* 097D24 80097124 02002025 */  move  $a0, $s0
/* 097D28 80097128 AC670000 */  sw    $a3, ($v1)
/* 097D2C 8009712C AC760004 */  sw    $s6, 4($v1)
/* 097D30 80097130 00112880 */  sll   $a1, $s1, 2
/* 097D34 80097134 30AE0FFF */  andi  $t6, $a1, 0xfff
/* 097D38 80097138 3C19E600 */  lui   $t9, 0xe600
/* 097D3C 8009713C AC990000 */  sw    $t9, ($a0)
/* 097D40 80097140 000E2B00 */  sll   $a1, $t6, 0xc
/* 097D44 80097144 AC800004 */  sw    $zero, 4($a0)
/* 097D48 80097148 3C01F400 */  lui   $at, 0xf400
/* 097D4C 8009714C 00A17825 */  or    $t7, $a1, $at
/* 097D50 80097150 00062080 */  sll   $a0, $a2, 2
/* 097D54 80097154 26100008 */  addiu $s0, $s0, 8
/* 097D58 80097158 02004025 */  move  $t0, $s0
/* 097D5C 8009715C 308E0FFF */  andi  $t6, $a0, 0xfff
/* 097D60 80097160 01F2C825 */  or    $t9, $t7, $s2
/* 097D64 80097164 000E2300 */  sll   $a0, $t6, 0xc
/* 097D68 80097168 3C010700 */  lui   $at, 0x700
/* 097D6C 8009716C 00817825 */  or    $t7, $a0, $at
/* 097D70 80097170 AD190000 */  sw    $t9, ($t0)
/* 097D74 80097174 26100008 */  addiu $s0, $s0, 8
/* 097D78 80097178 02001025 */  move  $v0, $s0
/* 097D7C 8009717C 01F3C825 */  or    $t9, $t7, $s3
/* 097D80 80097180 AD190004 */  sw    $t9, 4($t0)
/* 097D84 80097184 26100008 */  addiu $s0, $s0, 8
/* 097D88 80097188 3C0EE700 */  lui   $t6, 0xe700
/* 097D8C 8009718C AC4E0000 */  sw    $t6, ($v0)
/* 097D90 80097190 02001825 */  move  $v1, $s0
/* 097D94 80097194 AC400004 */  sw    $zero, 4($v0)
/* 097D98 80097198 26100008 */  addiu $s0, $s0, 8
/* 097D9C 8009719C 02004825 */  move  $t1, $s0
/* 097DA0 800971A0 3C01F200 */  lui   $at, 0xf200
/* 097DA4 800971A4 00A1C025 */  or    $t8, $a1, $at
/* 097DA8 800971A8 AC770004 */  sw    $s7, 4($v1)
/* 097DAC 800971AC AC670000 */  sw    $a3, ($v1)
/* 097DB0 800971B0 03127825 */  or    $t7, $t8, $s2
/* 097DB4 800971B4 26100008 */  addiu $s0, $s0, 8
/* 097DB8 800971B8 0093C825 */  or    $t9, $a0, $s3
/* 097DBC 800971BC AD390004 */  sw    $t9, 4($t1)
/* 097DC0 800971C0 AD2F0000 */  sw    $t7, ($t1)
/* 097DC4 800971C4 02001025 */  move  $v0, $s0
/* 097DC8 800971C8 3C01E400 */  lui   $at, 0xe400
/* 097DCC 800971CC 00817025 */  or    $t6, $a0, $at
/* 097DD0 800971D0 01D3C025 */  or    $t8, $t6, $s3
/* 097DD4 800971D4 26100008 */  addiu $s0, $s0, 8
/* 097DD8 800971D8 00B27825 */  or    $t7, $a1, $s2
/* 097DDC 800971DC AC4F0004 */  sw    $t7, 4($v0)
/* 097DE0 800971E0 02001825 */  move  $v1, $s0
/* 097DE4 800971E4 AC580000 */  sw    $t8, ($v0)
/* 097DE8 800971E8 3C19B300 */  lui   $t9, 0xb300
/* 097DEC 800971EC AC790000 */  sw    $t9, ($v1)
/* 097DF0 800971F0 0011CD40 */  sll   $t9, $s1, 0x15
/* 097DF4 800971F4 26100008 */  addiu $s0, $s0, 8
/* 097DF8 800971F8 02001025 */  move  $v0, $s0
/* 097DFC 800971FC 3C0F0400 */  lui   $t7, (0x04000400 >> 16) # lui $t7, 0x400
/* 097E00 80097200 032B7025 */  or    $t6, $t9, $t3
/* 097E04 80097204 AC6E0004 */  sw    $t6, 4($v1)
/* 097E08 80097208 35EF0400 */  ori   $t7, (0x04000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* 097E0C 8009720C 3C18B200 */  lui   $t8, 0xb200
/* 097E10 80097210 014C082B */  sltu  $at, $t2, $t4
/* 097E14 80097214 AC580000 */  sw    $t8, ($v0)
/* 097E18 80097218 AC4F0004 */  sw    $t7, 4($v0)
/* 097E1C 8009721C 26100008 */  addiu $s0, $s0, 8
/* 097E20 80097220 1420FF67 */  bnez  $at, .L80096FC0
/* 097E24 80097224 01408825 */   move  $s1, $t2
/* 097E28 80097228 8FB400EC */  lw    $s4, 0xec($sp)
/* 097E2C 8009722C 8FB30080 */  lw    $s3, 0x80($sp)
.L80097230:
/* 097E30 80097230 8FBE007C */  lw    $fp, 0x7c($sp)
.L80097234:
/* 097E34 80097234 03D3082B */  sltu  $at, $fp, $s3
/* 097E38 80097238 5420FF51 */  bnel  $at, $zero, .L80096F80
/* 097E3C 8009723C 8FB900CC */   lw    $t9, 0xcc($sp)
.L80097240:
/* 097E40 80097240 02001025 */  move  $v0, $s0
.L80097244:
/* 097E44 80097244 8FBF0054 */  lw    $ra, 0x54($sp)
/* 097E48 80097248 8FB00030 */  lw    $s0, 0x30($sp)
/* 097E4C 8009724C 8FB10034 */  lw    $s1, 0x34($sp)
/* 097E50 80097250 8FB20038 */  lw    $s2, 0x38($sp)
/* 097E54 80097254 8FB3003C */  lw    $s3, 0x3c($sp)
/* 097E58 80097258 8FB40040 */  lw    $s4, 0x40($sp)
/* 097E5C 8009725C 8FB50044 */  lw    $s5, 0x44($sp)
/* 097E60 80097260 8FB60048 */  lw    $s6, 0x48($sp)
/* 097E64 80097264 8FB7004C */  lw    $s7, 0x4c($sp)
/* 097E68 80097268 8FBE0050 */  lw    $fp, 0x50($sp)
/* 097E6C 8009726C 03E00008 */  jr    $ra
/* 097E70 80097270 27BD00E8 */   addiu $sp, $sp, 0xe8
