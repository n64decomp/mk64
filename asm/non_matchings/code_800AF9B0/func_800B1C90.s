glabel func_800B1C90
/* 0B2890 800B1C90 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0B2894 800B1C94 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B2898 800B1C98 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0B289C 800B1C9C 948F000C */  lhu   $t7, 0xc($a0)
/* 0B28A0 800B1CA0 948E0006 */  lhu   $t6, 6($a0)
/* 0B28A4 800B1CA4 01CFC025 */  or    $t8, $t6, $t7
/* 0B28A8 800B1CA8 0C02D148 */  jal   func_800B4520
/* 0B28AC 800B1CAC A7B80036 */   sh    $t8, 0x36($sp)
/* 0B28B0 800B1CB0 1440010C */  bnez  $v0, .L800B20E4
/* 0B28B4 800B1CB4 97A30036 */   lhu   $v1, 0x36($sp)
/* 0B28B8 800B1CB8 3C098019 */  lui   $t1, %hi(gMenuState) # $t1, 0x8019
/* 0B28BC 800B1CBC 2529EDF0 */  addiu $t1, %lo(gMenuState) # addiu $t1, $t1, -0x1210
/* 0B28C0 800B1CC0 81390000 */  lb    $t9, ($t1)
/* 0B28C4 800B1CC4 272AFFFF */  addiu $t2, $t9, -1
/* 0B28C8 800B1CC8 2D41000A */  sltiu $at, $t2, 0xa
/* 0B28CC 800B1CCC 10200105 */  beqz  $at, .L800B20E4
/* 0B28D0 800B1CD0 000A5080 */   sll   $t2, $t2, 2
/* 0B28D4 800B1CD4 3C01800F */  lui   $at, %hi(jpt_800F2DB8)
/* 0B28D8 800B1CD8 002A0821 */  addu  $at, $at, $t2
/* 0B28DC 800B1CDC 8C2A2DB8 */  lw    $t2, %lo(jpt_800F2DB8)($at)
/* 0B28E0 800B1CE0 01400008 */  jr    $t2
/* 0B28E4 800B1CE4 00000000 */   nop   
glabel L800B1CE8
/* 0B28E8 800B1CE8 306B9000 */  andi  $t3, $v1, 0x9000
/* 0B28EC 800B1CEC 11600008 */  beqz  $t3, .L800B1D10
/* 0B28F0 800B1CF0 00601025 */   move  $v0, $v1
/* 0B28F4 800B1CF4 240C0005 */  li    $t4, 5
/* 0B28F8 800B1CF8 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B28FC 800B1CFC A12C0000 */  sb    $t4, ($t1)
/* 0B2900 800B1D00 0C032384 */  jal   play_sound2
/* 0B2904 800B1D04 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B2908 800B1D08 100000F7 */  b     .L800B20E8
/* 0B290C 800B1D0C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1D10:
/* 0B2910 800B1D10 304D0300 */  andi  $t5, $v0, 0x300
/* 0B2914 800B1D14 11A000F3 */  beqz  $t5, .L800B20E4
/* 0B2918 800B1D18 240E0002 */   li    $t6, 2
/* 0B291C 800B1D1C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2920 800B1D20 A12E0000 */  sb    $t6, ($t1)
/* 0B2924 800B1D24 0C032384 */  jal   play_sound2
/* 0B2928 800B1D28 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B292C 800B1D2C 100000EE */  b     .L800B20E8
/* 0B2930 800B1D30 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800B1D34
/* 0B2934 800B1D34 306F9000 */  andi  $t7, $v1, 0x9000
/* 0B2938 800B1D38 11E00009 */  beqz  $t7, .L800B1D60
/* 0B293C 800B1D3C 00601025 */   move  $v0, $v1
/* 0B2940 800B1D40 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B2944 800B1D44 0C032384 */  jal   play_sound2
/* 0B2948 800B1D48 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B294C 800B1D4C 0C027870 */  jal   func_8009E1C0
/* 0B2950 800B1D50 00000000 */   nop   
/* 0B2954 800B1D54 3C01800F */  lui   $at, %hi(D_800E86F8) # $at, 0x800f
/* 0B2958 800B1D58 100000E2 */  b     .L800B20E4
/* 0B295C 800B1D5C A02086F8 */   sb    $zero, %lo(D_800E86F8)($at)
.L800B1D60:
/* 0B2960 800B1D60 30580300 */  andi  $t8, $v0, 0x300
/* 0B2964 800B1D64 130000DF */  beqz  $t8, .L800B20E4
/* 0B2968 800B1D68 24190001 */   li    $t9, 1
/* 0B296C 800B1D6C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2970 800B1D70 A1390000 */  sb    $t9, ($t1)
/* 0B2974 800B1D74 0C032384 */  jal   play_sound2
/* 0B2978 800B1D78 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B297C 800B1D7C 100000DA */  b     .L800B20E8
/* 0B2980 800B1D80 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800B1D84
/* 0B2984 800B1D84 306A9000 */  andi  $t2, $v1, 0x9000
/* 0B2988 800B1D88 11400015 */  beqz  $t2, .L800B1DE0
/* 0B298C 800B1D8C 00601025 */   move  $v0, $v1
/* 0B2990 800B1D90 3C02800F */  lui   $v0, %hi(gControllerPakSelectedTableRow) # $v0, 0x800f
/* 0B2994 800B1D94 244286C0 */  addiu $v0, %lo(gControllerPakSelectedTableRow) # addiu $v0, $v0, -0x7940
/* 0B2998 800B1D98 804B0000 */  lb    $t3, ($v0)
/* 0B299C 800B1D9C 3C08800F */  lui   $t0, %hi(D_800E86C6) # 0x800f
/* 0B29A0 800B1DA0 3C0D8019 */  lui   $t5, %hi(D_8018EB38) # 0x8019
/* 0B29A4 800B1DA4 010B4021 */  addu  $t0, $t0, $t3
/* 0B29A8 800B1DA8 810886C6 */  lb    $t0, %lo(D_800E86C6)($t0) # -0x793a($t0)
/* 0B29AC 800B1DAC 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B29B0 800B1DB0 240E0004 */  li    $t6, 4
/* 0B29B4 800B1DB4 2508FFFF */  addiu $t0, $t0, -1
/* 0B29B8 800B1DB8 00086080 */  sll   $t4, $t0, 2
/* 0B29BC 800B1DBC 01AC6821 */  addu  $t5, $t5, $t4
/* 0B29C0 800B1DC0 8DADEB38 */  lw    $t5, %lo(D_8018EB38)($t5) # -0x14c8($t5)
/* 0B29C4 800B1DC4 34848001 */  ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B29C8 800B1DC8 55A000C7 */  bnel  $t5, $zero, .L800B20E8
/* 0B29CC 800B1DCC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B29D0 800B1DD0 0C032384 */  jal   play_sound2
/* 0B29D4 800B1DD4 A12E0000 */   sb    $t6, ($t1)
/* 0B29D8 800B1DD8 100000C3 */  b     .L800B20E8
/* 0B29DC 800B1DDC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1DE0:
/* 0B29E0 800B1DE0 304F4000 */  andi  $t7, $v0, 0x4000
/* 0B29E4 800B1DE4 11E0000C */  beqz  $t7, .L800B1E18
/* 0B29E8 800B1DE8 304A0800 */   andi  $t2, $v0, 0x800
/* 0B29EC 800B1DEC 3C03800F */  lui   $v1, %hi(D_800E86D0) # $v1, 0x800f
/* 0B29F0 800B1DF0 246386D0 */  addiu $v1, %lo(D_800E86D0) # addiu $v1, $v1, -0x7930
/* 0B29F4 800B1DF4 80780000 */  lb    $t8, ($v1)
/* 0B29F8 800B1DF8 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B29FC 800B1DFC 24190001 */  li    $t9, 1
/* 0B2A00 800B1E00 170000B8 */  bnez  $t8, .L800B20E4
/* 0B2A04 800B1E04 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2A08 800B1E08 0C032384 */  jal   play_sound2
/* 0B2A0C 800B1E0C A1390000 */   sb    $t9, ($t1)
/* 0B2A10 800B1E10 100000B5 */  b     .L800B20E8
/* 0B2A14 800B1E14 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1E18:
/* 0B2A18 800B1E18 11400020 */  beqz  $t2, .L800B1E9C
/* 0B2A1C 800B1E1C 3C03800F */   lui   $v1, %hi(D_800E86D0) # $v1, 0x800f
/* 0B2A20 800B1E20 246386D0 */  addiu $v1, %lo(D_800E86D0) # addiu $v1, $v1, -0x7930
/* 0B2A24 800B1E24 806B0000 */  lb    $t3, ($v1)
/* 0B2A28 800B1E28 3C02800F */  lui   $v0, %hi(gControllerPakSelectedTableRow) # $v0, 0x800f
/* 0B2A2C 800B1E2C 244286C0 */  addiu $v0, %lo(gControllerPakSelectedTableRow) # addiu $v0, $v0, -0x7940
/* 0B2A30 800B1E30 556000AD */  bnel  $t3, $zero, .L800B20E8
/* 0B2A34 800B1E34 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B2A38 800B1E38 804C0000 */  lb    $t4, ($v0)
/* 0B2A3C 800B1E3C 3C044900 */  lui   $a0, 0x4900
/* 0B2A40 800B1E40 258DFFFF */  addiu $t5, $t4, -1
/* 0B2A44 800B1E44 A04D0000 */  sb    $t5, ($v0)
/* 0B2A48 800B1E48 804E0000 */  lb    $t6, ($v0)
/* 0B2A4C 800B1E4C 05C1000F */  bgez  $t6, .L800B1E8C
/* 0B2A50 800B1E50 00000000 */   nop   
/* 0B2A54 800B1E54 A0400000 */  sb    $zero, ($v0)
/* 0B2A58 800B1E58 804F0000 */  lb    $t7, ($v0)
/* 0B2A5C 800B1E5C 3C18800F */  lui   $t8, %hi(D_800E86C6) # 0x800f
/* 0B2A60 800B1E60 24010001 */  li    $at, 1
/* 0B2A64 800B1E64 030FC021 */  addu  $t8, $t8, $t7
/* 0B2A68 800B1E68 831886C6 */  lb    $t8, %lo(D_800E86C6)($t8) # -0x793a($t8)
/* 0B2A6C 800B1E6C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2A70 800B1E70 24190002 */  li    $t9, 2
/* 0B2A74 800B1E74 1301009B */  beq   $t8, $at, .L800B20E4
/* 0B2A78 800B1E78 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2A7C 800B1E7C 0C032384 */  jal   play_sound2
/* 0B2A80 800B1E80 A0790000 */   sb    $t9, ($v1)
/* 0B2A84 800B1E84 10000098 */  b     .L800B20E8
/* 0B2A88 800B1E88 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1E8C:
/* 0B2A8C 800B1E8C 0C032384 */  jal   play_sound2
/* 0B2A90 800B1E90 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2A94 800B1E94 10000094 */  b     .L800B20E8
/* 0B2A98 800B1E98 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1E9C:
/* 0B2A9C 800B1E9C 304A0400 */  andi  $t2, $v0, 0x400
/* 0B2AA0 800B1EA0 11400090 */  beqz  $t2, .L800B20E4
/* 0B2AA4 800B1EA4 3C03800F */   lui   $v1, %hi(D_800E86D0) # $v1, 0x800f
/* 0B2AA8 800B1EA8 246386D0 */  addiu $v1, %lo(D_800E86D0) # addiu $v1, $v1, -0x7930
/* 0B2AAC 800B1EAC 806B0000 */  lb    $t3, ($v1)
/* 0B2AB0 800B1EB0 3C02800F */  lui   $v0, %hi(gControllerPakSelectedTableRow) # $v0, 0x800f
/* 0B2AB4 800B1EB4 244286C0 */  addiu $v0, %lo(gControllerPakSelectedTableRow) # addiu $v0, $v0, -0x7940
/* 0B2AB8 800B1EB8 5560008B */  bnel  $t3, $zero, .L800B20E8
/* 0B2ABC 800B1EBC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0B2AC0 800B1EC0 804C0000 */  lb    $t4, ($v0)
/* 0B2AC4 800B1EC4 240F0004 */  li    $t7, 4
/* 0B2AC8 800B1EC8 3C044900 */  lui   $a0, 0x4900
/* 0B2ACC 800B1ECC 258D0001 */  addiu $t5, $t4, 1
/* 0B2AD0 800B1ED0 A04D0000 */  sb    $t5, ($v0)
/* 0B2AD4 800B1ED4 804E0000 */  lb    $t6, ($v0)
/* 0B2AD8 800B1ED8 29C10005 */  slti  $at, $t6, 5
/* 0B2ADC 800B1EDC 1420000F */  bnez  $at, .L800B1F1C
/* 0B2AE0 800B1EE0 00000000 */   nop   
/* 0B2AE4 800B1EE4 A04F0000 */  sb    $t7, ($v0)
/* 0B2AE8 800B1EE8 80580000 */  lb    $t8, ($v0)
/* 0B2AEC 800B1EEC 3C19800F */  lui   $t9, %hi(D_800E86C6) # 0x800f
/* 0B2AF0 800B1EF0 24010010 */  li    $at, 16
/* 0B2AF4 800B1EF4 0338C821 */  addu  $t9, $t9, $t8
/* 0B2AF8 800B1EF8 833986C6 */  lb    $t9, %lo(D_800E86C6)($t9) # -0x793a($t9)
/* 0B2AFC 800B1EFC 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2B00 800B1F00 240A0001 */  li    $t2, 1
/* 0B2B04 800B1F04 13210077 */  beq   $t9, $at, .L800B20E4
/* 0B2B08 800B1F08 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2B0C 800B1F0C 0C032384 */  jal   play_sound2
/* 0B2B10 800B1F10 A06A0000 */   sb    $t2, ($v1)
/* 0B2B14 800B1F14 10000074 */  b     .L800B20E8
/* 0B2B18 800B1F18 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1F1C:
/* 0B2B1C 800B1F1C 0C032384 */  jal   play_sound2
/* 0B2B20 800B1F20 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2B24 800B1F24 10000070 */  b     .L800B20E8
/* 0B2B28 800B1F28 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800B1F2C
/* 0B2B2C 800B1F2C 306BD000 */  andi  $t3, $v1, 0xd000
/* 0B2B30 800B1F30 11600008 */  beqz  $t3, .L800B1F54
/* 0B2B34 800B1F34 00601025 */   move  $v0, $v1
/* 0B2B38 800B1F38 240C0005 */  li    $t4, 5
/* 0B2B3C 800B1F3C 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B2B40 800B1F40 A12C0000 */  sb    $t4, ($t1)
/* 0B2B44 800B1F44 0C032384 */  jal   play_sound2
/* 0B2B48 800B1F48 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2B4C 800B1F4C 10000066 */  b     .L800B20E8
/* 0B2B50 800B1F50 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1F54:
/* 0B2B54 800B1F54 304D0300 */  andi  $t5, $v0, 0x300
/* 0B2B58 800B1F58 11A00062 */  beqz  $t5, .L800B20E4
/* 0B2B5C 800B1F5C 240E0003 */   li    $t6, 3
/* 0B2B60 800B1F60 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2B64 800B1F64 A12E0000 */  sb    $t6, ($t1)
/* 0B2B68 800B1F68 0C032384 */  jal   play_sound2
/* 0B2B6C 800B1F6C 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2B70 800B1F70 1000005D */  b     .L800B20E8
/* 0B2B74 800B1F74 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800B1F78
/* 0B2B78 800B1F78 306F9000 */  andi  $t7, $v1, 0x9000
/* 0B2B7C 800B1F7C 11E00008 */  beqz  $t7, .L800B1FA0
/* 0B2B80 800B1F80 00601025 */   move  $v0, $v1
/* 0B2B84 800B1F84 24180006 */  li    $t8, 6
/* 0B2B88 800B1F88 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B2B8C 800B1F8C A1380000 */  sb    $t8, ($t1)
/* 0B2B90 800B1F90 0C032384 */  jal   play_sound2
/* 0B2B94 800B1F94 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B2B98 800B1F98 10000053 */  b     .L800B20E8
/* 0B2B9C 800B1F9C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1FA0:
/* 0B2BA0 800B1FA0 30594000 */  andi  $t9, $v0, 0x4000
/* 0B2BA4 800B1FA4 13200008 */  beqz  $t9, .L800B1FC8
/* 0B2BA8 800B1FA8 304B0300 */   andi  $t3, $v0, 0x300
/* 0B2BAC 800B1FAC 240A0005 */  li    $t2, 5
/* 0B2BB0 800B1FB0 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B2BB4 800B1FB4 A12A0000 */  sb    $t2, ($t1)
/* 0B2BB8 800B1FB8 0C032384 */  jal   play_sound2
/* 0B2BBC 800B1FBC 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B2BC0 800B1FC0 10000049 */  b     .L800B20E8
/* 0B2BC4 800B1FC4 8FBF001C */   lw    $ra, 0x1c($sp)
.L800B1FC8:
/* 0B2BC8 800B1FC8 11600046 */  beqz  $t3, .L800B20E4
/* 0B2BCC 800B1FCC 240C0004 */   li    $t4, 4
/* 0B2BD0 800B1FD0 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B2BD4 800B1FD4 A12C0000 */  sb    $t4, ($t1)
/* 0B2BD8 800B1FD8 0C032384 */  jal   play_sound2
/* 0B2BDC 800B1FDC 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B2BE0 800B1FE0 10000041 */  b     .L800B20E8
/* 0B2BE4 800B1FE4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800B1FE8
/* 0B2BE8 800B1FE8 240D0007 */  li    $t5, 7
/* 0B2BEC 800B1FEC 1000003D */  b     .L800B20E4
/* 0B2BF0 800B1FF0 A12D0000 */   sb    $t5, ($t1)
glabel L800B1FF4
/* 0B2BF4 800B1FF4 3C02800F */  lui   $v0, %hi(gControllerPakSelectedTableRow) # $v0, 0x800f
/* 0B2BF8 800B1FF8 244286C0 */  addiu $v0, %lo(gControllerPakSelectedTableRow) # addiu $v0, $v0, -0x7940
/* 0B2BFC 800B1FFC 804E0000 */  lb    $t6, ($v0)
/* 0B2C00 800B2000 3C08800F */  lui   $t0, %hi(D_800E86C6) # 0x800f
/* 0B2C04 800B2004 3C188019 */  lui   $t8, %hi(D_8018E938) # $t8, 0x8019
/* 0B2C08 800B2008 010E4021 */  addu  $t0, $t0, $t6
/* 0B2C0C 800B200C 810886C6 */  lb    $t0, %lo(D_800E86C6)($t0) # -0x793a($t0)
/* 0B2C10 800B2010 2718E938 */  addiu $t8, %lo(D_8018E938) # addiu $t8, $t8, -0x16c8
/* 0B2C14 800B2014 3C048019 */  lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B2C18 800B2018 2508FFFF */  addiu $t0, $t0, -1
/* 0B2C1C 800B201C 00087940 */  sll   $t7, $t0, 5
/* 0B2C20 800B2020 01F81821 */  addu  $v1, $t7, $t8
/* 0B2C24 800B2024 2479000A */  addiu $t9, $v1, 0xa
/* 0B2C28 800B2028 AFB90010 */  sw    $t9, 0x10($sp)
/* 0B2C2C 800B202C 94650008 */  lhu   $a1, 8($v1)
/* 0B2C30 800B2030 8C660004 */  lw    $a2, 4($v1)
/* 0B2C34 800B2034 2467000E */  addiu $a3, $v1, 0xe
/* 0B2C38 800B2038 AFA30020 */  sw    $v1, 0x20($sp)
/* 0B2C3C 800B203C AFA8002C */  sw    $t0, 0x2c($sp)
/* 0B2C40 800B2040 0C033E90 */  jal   osPfsDeleteFile
/* 0B2C44 800B2044 2484E868 */   addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B2C48 800B2048 3C098019 */  lui   $t1, %hi(gMenuState) # $t1, 0x8019
/* 0B2C4C 800B204C 2529EDF0 */  addiu $t1, %lo(gMenuState) # addiu $t1, $t1, -0x1210
/* 0B2C50 800B2050 8FA30020 */  lw    $v1, 0x20($sp)
/* 0B2C54 800B2054 1040000A */  beqz  $v0, .L800B2080
/* 0B2C58 800B2058 8FA8002C */   lw    $t0, 0x2c($sp)
/* 0B2C5C 800B205C 24010001 */  li    $at, 1
/* 0B2C60 800B2060 10410018 */  beq   $v0, $at, .L800B20C4
/* 0B2C64 800B2064 240C0009 */   li    $t4, 9
/* 0B2C68 800B2068 24010002 */  li    $at, 2
/* 0B2C6C 800B206C 10410017 */  beq   $v0, $at, .L800B20CC
/* 0B2C70 800B2070 240E000A */   li    $t6, 10
/* 0B2C74 800B2074 240A0008 */  li    $t2, 8
/* 0B2C78 800B2078 1000001A */  b     .L800B20E4
/* 0B2C7C 800B207C A12A0000 */   sb    $t2, ($t1)
.L800B2080:
/* 0B2C80 800B2080 00086080 */  sll   $t4, $t0, 2
/* 0B2C84 800B2084 3C018019 */  lui   $at, %hi(D_8018EB38) # 0x8019
/* 0B2C88 800B2088 002C0821 */  addu  $at, $at, $t4
/* 0B2C8C 800B208C 240BFFFF */  li    $t3, -1
/* 0B2C90 800B2090 AC2BEB38 */  sw    $t3, %lo(D_8018EB38)($at) # -0x14c8($at)
/* 0B2C94 800B2094 8C6E0000 */  lw    $t6, ($v1)
/* 0B2C98 800B2098 3C0D8019 */  lui   $t5, %hi(gControllerPakPagesFree) # $t5, 0x8019
/* 0B2C9C 800B209C 8DADEB80 */  lw    $t5, %lo(gControllerPakPagesFree)($t5)
/* 0B2CA0 800B20A0 25CF00FF */  addiu $t7, $t6, 0xff
/* 0B2CA4 800B20A4 000FC202 */  srl   $t8, $t7, 8
/* 0B2CA8 800B20A8 331900FF */  andi  $t9, $t8, 0xff
/* 0B2CAC 800B20AC 3C018019 */  lui   $at, %hi(gControllerPakPagesFree) # $at, 0x8019
/* 0B2CB0 800B20B0 01B95021 */  addu  $t2, $t5, $t9
/* 0B2CB4 800B20B4 AC2AEB80 */  sw    $t2, %lo(gControllerPakPagesFree)($at)
/* 0B2CB8 800B20B8 240B0005 */  li    $t3, 5
/* 0B2CBC 800B20BC 10000009 */  b     .L800B20E4
/* 0B2CC0 800B20C0 A12B0000 */   sb    $t3, ($t1)
.L800B20C4:
/* 0B2CC4 800B20C4 10000007 */  b     .L800B20E4
/* 0B2CC8 800B20C8 A12C0000 */   sb    $t4, ($t1)
.L800B20CC:
/* 0B2CCC 800B20CC 10000005 */  b     .L800B20E4
/* 0B2CD0 800B20D0 A12E0000 */   sb    $t6, ($t1)
glabel L800B20D4
/* 0B2CD4 800B20D4 306F9000 */  andi  $t7, $v1, 0x9000
/* 0B2CD8 800B20D8 11E00002 */  beqz  $t7, .L800B20E4
/* 0B2CDC 800B20DC 24180005 */   li    $t8, 5
/* 0B2CE0 800B20E0 A1380000 */  sb    $t8, ($t1)
.L800B20E4:
/* 0B2CE4 800B20E4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800B20E8:
/* 0B2CE8 800B20E8 27BD0038 */  addiu $sp, $sp, 0x38
/* 0B2CEC 800B20EC 03E00008 */  jr    $ra
/* 0B2CF0 800B20F0 00000000 */   nop   
