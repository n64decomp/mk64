glabel func_80050E34
/* 051A34 80050E34 000470C0 */  sll   $t6, $a0, 3
/* 051A38 80050E38 01C47023 */  subu  $t6, $t6, $a0
/* 051A3C 80050E3C 000E7100 */  sll   $t6, $t6, 4
/* 051A40 80050E40 01C47023 */  subu  $t6, $t6, $a0
/* 051A44 80050E44 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 051A48 80050E48 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 051A4C 80050E4C 000E7080 */  sll   $t6, $t6, 2
/* 051A50 80050E50 01C47023 */  subu  $t6, $t6, $a0
/* 051A54 80050E54 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 051A58 80050E58 000E70C0 */  sll   $t6, $t6, 3
/* 051A5C 80050E5C 01CF1021 */  addu  $v0, $t6, $t7
/* 051A60 80050E60 3C0E800E */  lui   $t6, %hi(gPlayerCountSelection1) # $t6, 0x800e
/* 051A64 80050E64 8DCEC538 */  lw    $t6, %lo(gPlayerCountSelection1)($t6)
/* 051A68 80050E68 AFB00024 */  sw    $s0, 0x24($sp)
/* 051A6C 80050E6C 3C108016 */  lui   $s0, %hi(gLapCountByPlayerId) # 0x8016
/* 051A70 80050E70 0004C080 */  sll   $t8, $a0, 2
/* 051A74 80050E74 0004C940 */  sll   $t9, $a0, 5
/* 051A78 80050E78 3C0D8019 */  lui   $t5, %hi(D_8018CE10) # 0x8019
/* 051A7C 80050E7C AFBF002C */  sw    $ra, 0x2c($sp)
/* 051A80 80050E80 AFB10028 */  sw    $s1, 0x28($sp)
/* 051A84 80050E84 AFA500DC */  sw    $a1, 0xdc($sp)
/* 051A88 80050E88 AFA200AC */  sw    $v0, 0xac($sp)
/* 051A8C 80050E8C 02188021 */  addu  $s0, $s0, $t8
/* 051A90 80050E90 01B96821 */  addu  $t5, $t5, $t9
/* 051A94 80050E94 24010001 */  li    $at, 1
/* 051A98 80050E98 00803825 */  move  $a3, $a0
/* 051A9C 80050E9C 8E104390 */  lw    $s0, %lo(gLapCountByPlayerId)($s0) # 0x4390($s0)
/* 051AA0 80050EA0 94510254 */  lhu   $s1, 0x254($v0)
/* 051AA4 80050EA4 15C10004 */  bne   $t6, $at, .L80050EB8
/* 051AA8 80050EA8 8DADCE24 */   lw    $t5, %lo(D_8018CE10 + 0x14)($t5) # -0x31dc($t5)
/* 051AAC 80050EAC 240F0012 */  li    $t7, 18
/* 051AB0 80050EB0 10000003 */  b     .L80050EC0
/* 051AB4 80050EB4 AFAF00C4 */   sw    $t7, 0xc4($sp)
.L80050EB8:
/* 051AB8 80050EB8 24180078 */  li    $t8, 120
/* 051ABC 80050EBC AFB800C4 */  sw    $t8, 0xc4($sp)
.L80050EC0:
/* 051AC0 80050EC0 30E4FFFF */  andi  $a0, $a3, 0xffff
/* 051AC4 80050EC4 27A500D0 */  addiu $a1, $sp, 0xd0
/* 051AC8 80050EC8 27A600CC */  addiu $a2, $sp, 0xcc
/* 051ACC 80050ECC 0C014191 */  jal   func_80050644
/* 051AD0 80050ED0 AFAD00D4 */   sw    $t5, 0xd4($sp)
/* 051AD4 80050ED4 24010002 */  li    $at, 2
/* 051AD8 80050ED8 10410003 */  beq   $v0, $at, .L80050EE8
/* 051ADC 80050EDC 8FAD00D4 */   lw    $t5, 0xd4($sp)
/* 051AE0 80050EE0 24010003 */  li    $at, 3
/* 051AE4 80050EE4 14410003 */  bne   $v0, $at, .L80050EF4
.L80050EE8:
/* 051AE8 80050EE8 24190001 */   li    $t9, 1
/* 051AEC 80050EEC 10000002 */  b     .L80050EF8
/* 051AF0 80050EF0 AFB900B8 */   sw    $t9, 0xb8($sp)
.L80050EF4:
/* 051AF4 80050EF4 AFA000B8 */  sw    $zero, 0xb8($sp)
.L80050EF8:
/* 051AF8 80050EF8 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 051AFC 80050EFC 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 051B00 80050F00 24010004 */  li    $at, 4
/* 051B04 80050F04 3C18FD10 */  lui   $t8, 0xfd10
/* 051B08 80050F08 15C10062 */  bne   $t6, $at, .L80051094
/* 051B0C 80050F0C 00115080 */   sll   $t2, $s1, 2
/* 051B10 80050F10 2A010003 */  slti  $at, $s0, 3
/* 051B14 80050F14 1020005F */  beqz  $at, .L80051094
/* 051B18 80050F18 3C108015 */   lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 051B1C 80050F1C 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 051B20 80050F20 8E020000 */  lw    $v0, ($s0)
/* 051B24 80050F24 3C190D00 */  lui   $t9, %hi(D_0D007DB8) # $t9, 0xd00
/* 051B28 80050F28 27397DB8 */  addiu $t9, %lo(D_0D007DB8) # addiu $t9, $t9, 0x7db8
/* 051B2C 80050F2C 244F0008 */  addiu $t7, $v0, 8
/* 051B30 80050F30 AE0F0000 */  sw    $t7, ($s0)
/* 051B34 80050F34 3C180600 */  lui   $t8, 0x600
/* 051B38 80050F38 AC580000 */  sw    $t8, ($v0)
/* 051B3C 80050F3C AC590004 */  sw    $t9, 4($v0)
/* 051B40 80050F40 8E020000 */  lw    $v0, ($s0)
/* 051B44 80050F44 3C180D02 */  lui   $t8, %hi(gTLUTPortraitBombKartAndQuestionMark) # $t8, 0xd02
/* 051B48 80050F48 2718B4D8 */  addiu $t8, %lo(gTLUTPortraitBombKartAndQuestionMark) # addiu $t8, $t8, -0x4b28
/* 051B4C 80050F4C 244E0008 */  addiu $t6, $v0, 8
/* 051B50 80050F50 AE0E0000 */  sw    $t6, ($s0)
/* 051B54 80050F54 3C0FFD10 */  lui   $t7, 0xfd10
/* 051B58 80050F58 AC4F0000 */  sw    $t7, ($v0)
/* 051B5C 80050F5C AC580004 */  sw    $t8, 4($v0)
/* 051B60 80050F60 8E020000 */  lw    $v0, ($s0)
/* 051B64 80050F64 3C0EE800 */  lui   $t6, 0xe800
/* 051B68 80050F68 3C18F500 */  lui   $t8, (0xF5000100 >> 16) # lui $t8, 0xf500
/* 051B6C 80050F6C 24590008 */  addiu $t9, $v0, 8
/* 051B70 80050F70 AE190000 */  sw    $t9, ($s0)
/* 051B74 80050F74 AC400004 */  sw    $zero, 4($v0)
/* 051B78 80050F78 AC4E0000 */  sw    $t6, ($v0)
/* 051B7C 80050F7C 8E020000 */  lw    $v0, ($s0)
/* 051B80 80050F80 3C190700 */  lui   $t9, 0x700
/* 051B84 80050F84 37180100 */  ori   $t8, (0xF5000100 & 0xFFFF) # ori $t8, $t8, 0x100
/* 051B88 80050F88 244F0008 */  addiu $t7, $v0, 8
/* 051B8C 80050F8C AE0F0000 */  sw    $t7, ($s0)
/* 051B90 80050F90 AC590004 */  sw    $t9, 4($v0)
/* 051B94 80050F94 AC580000 */  sw    $t8, ($v0)
/* 051B98 80050F98 8E020000 */  lw    $v0, ($s0)
/* 051B9C 80050F9C 3C0FE600 */  lui   $t7, 0xe600
/* 051BA0 80050FA0 3C19F000 */  lui   $t9, 0xf000
/* 051BA4 80050FA4 244E0008 */  addiu $t6, $v0, 8
/* 051BA8 80050FA8 AE0E0000 */  sw    $t6, ($s0)
/* 051BAC 80050FAC AC400004 */  sw    $zero, 4($v0)
/* 051BB0 80050FB0 AC4F0000 */  sw    $t7, ($v0)
/* 051BB4 80050FB4 8E020000 */  lw    $v0, ($s0)
/* 051BB8 80050FB8 3C0E073F */  lui   $t6, (0x073FC000 >> 16) # lui $t6, 0x73f
/* 051BBC 80050FBC 35CEC000 */  ori   $t6, (0x073FC000 & 0xFFFF) # ori $t6, $t6, 0xc000
/* 051BC0 80050FC0 24580008 */  addiu $t8, $v0, 8
/* 051BC4 80050FC4 AE180000 */  sw    $t8, ($s0)
/* 051BC8 80050FC8 AC4E0004 */  sw    $t6, 4($v0)
/* 051BCC 80050FCC AC590000 */  sw    $t9, ($v0)
/* 051BD0 80050FD0 8E020000 */  lw    $v0, ($s0)
/* 051BD4 80050FD4 3C18E700 */  lui   $t8, 0xe700
/* 051BD8 80050FD8 3C040D02 */  lui   $a0, %hi(gTexturePortraitQuestionMark) # $a0, 0xd02
/* 051BDC 80050FDC 244F0008 */  addiu $t7, $v0, 8
/* 051BE0 80050FE0 AE0F0000 */  sw    $t7, ($s0)
/* 051BE4 80050FE4 AC400004 */  sw    $zero, 4($v0)
/* 051BE8 80050FE8 AC580000 */  sw    $t8, ($v0)
/* 051BEC 80050FEC AFAD00D4 */  sw    $t5, 0xd4($sp)
/* 051BF0 80050FF0 2484DAD8 */  addiu $a0, %lo(gTexturePortraitQuestionMark) # addiu $a0, $a0, -0x2528
/* 051BF4 80050FF4 24050020 */  li    $a1, 32
/* 051BF8 80050FF8 0C0114A9 */  jal   rsp_load_texture
/* 051BFC 80050FFC 24060020 */   li    $a2, 32
/* 051C00 80051000 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 051C04 80051004 3C0E8016 */  lui   $t6, %hi(gObjectList) # $t6, 0x8016
/* 051C08 80051008 25CE5C18 */  addiu $t6, %lo(gObjectList) # addiu $t6, $t6, 0x5c18
/* 051C0C 8005100C 000DC8C0 */  sll   $t9, $t5, 3
/* 051C10 80051010 032DC823 */  subu  $t9, $t9, $t5
/* 051C14 80051014 0019C940 */  sll   $t9, $t9, 5
/* 051C18 80051018 8FAF00D0 */  lw    $t7, 0xd0($sp)
/* 051C1C 8005101C 032E8821 */  addu  $s1, $t9, $t6
/* 051C20 80051020 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 051C24 80051024 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 051C28 80051028 25F80020 */  addiu $t8, $t7, 0x20
/* 051C2C 8005102C 44983000 */  mtc1  $t8, $f6
/* 051C30 80051030 032E7821 */  addu  $t7, $t9, $t6
/* 051C34 80051034 448F8000 */  mtc1  $t7, $f16
/* 051C38 80051038 46803220 */  cvt.s.w $f8, $f6
/* 051C3C 8005103C C6240028 */  lwc1  $f4, 0x28($s1)
/* 051C40 80051040 C626002C */  lwc1  $f6, 0x2c($s1)
/* 051C44 80051044 26240004 */  addiu $a0, $s1, 4
/* 051C48 80051048 262500BE */  addiu $a1, $s1, 0xbe
/* 051C4C 8005104C 468084A0 */  cvt.s.w $f18, $f16
/* 051C50 80051050 8E260000 */  lw    $a2, ($s1)
/* 051C54 80051054 46082280 */  add.s $f10, $f4, $f8
/* 051C58 80051058 C6280030 */  lwc1  $f8, 0x30($s1)
/* 051C5C 8005105C 46123100 */  add.s $f4, $f6, $f18
/* 051C60 80051060 E62A0004 */  swc1  $f10, 4($s1)
/* 051C64 80051064 E628000C */  swc1  $f8, 0xc($s1)
/* 051C68 80051068 0C010B80 */  jal   rsp_set_matrix_transformation
/* 051C6C 8005106C E6240008 */   swc1  $f4, 8($s1)
/* 051C70 80051070 8E020000 */  lw    $v0, ($s0)
/* 051C74 80051074 3C0E0D00 */  lui   $t6, %hi(D_0D0069E0) # $t6, 0xd00
/* 051C78 80051078 25CE69E0 */  addiu $t6, %lo(D_0D0069E0) # addiu $t6, $t6, 0x69e0
/* 051C7C 8005107C 24580008 */  addiu $t8, $v0, 8
/* 051C80 80051080 AE180000 */  sw    $t8, ($s0)
/* 051C84 80051084 3C190600 */  lui   $t9, 0x600
/* 051C88 80051088 AC590000 */  sw    $t9, ($v0)
/* 051C8C 8005108C 10000106 */  b     .L800514A8
/* 051C90 80051090 AC4E0004 */   sw    $t6, 4($v0)
.L80051094:
/* 051C94 80051094 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 051C98 80051098 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 051C9C 8005109C 8E020000 */  lw    $v0, ($s0)
/* 051CA0 800510A0 3C19800E */  lui   $t9, %hi(gPortraitTLUTs)
/* 051CA4 800510A4 032AC821 */  addu  $t9, $t9, $t2
/* 051CA8 800510A8 244F0008 */  addiu $t7, $v0, 8
/* 051CAC 800510AC AE0F0000 */  sw    $t7, ($s0)
/* 051CB0 800510B0 AC580000 */  sw    $t8, ($v0)
/* 051CB4 800510B4 8F39457C */  lw    $t9, %lo(gPortraitTLUTs)($t9)
/* 051CB8 800510B8 3C0FE800 */  lui   $t7, 0xe800
/* 051CBC 800510BC 3C048016 */  lui   $a0, %hi(D_801656C0) # $a0, 0x8016
/* 051CC0 800510C0 AC590004 */  sw    $t9, 4($v0)
/* 051CC4 800510C4 8E020000 */  lw    $v0, ($s0)
/* 051CC8 800510C8 3C19F500 */  lui   $t9, (0xF5000100 >> 16) # lui $t9, 0xf500
/* 051CCC 800510CC 37390100 */  ori   $t9, (0xF5000100 & 0xFFFF) # ori $t9, $t9, 0x100
/* 051CD0 800510D0 244E0008 */  addiu $t6, $v0, 8
/* 051CD4 800510D4 AE0E0000 */  sw    $t6, ($s0)
/* 051CD8 800510D8 AC400004 */  sw    $zero, 4($v0)
/* 051CDC 800510DC AC4F0000 */  sw    $t7, ($v0)
/* 051CE0 800510E0 8E020000 */  lw    $v0, ($s0)
/* 051CE4 800510E4 3C0E0700 */  lui   $t6, 0x700
/* 051CE8 800510E8 3C058016 */  lui   $a1, %hi(D_801656D0) # $a1, 0x8016
/* 051CEC 800510EC 24580008 */  addiu $t8, $v0, 8
/* 051CF0 800510F0 AE180000 */  sw    $t8, ($s0)
/* 051CF4 800510F4 AC4E0004 */  sw    $t6, 4($v0)
/* 051CF8 800510F8 AC590000 */  sw    $t9, ($v0)
/* 051CFC 800510FC 8E020000 */  lw    $v0, ($s0)
/* 051D00 80051100 3C18E600 */  lui   $t8, 0xe600
/* 051D04 80051104 3C0EF000 */  lui   $t6, 0xf000
/* 051D08 80051108 244F0008 */  addiu $t7, $v0, 8
/* 051D0C 8005110C AE0F0000 */  sw    $t7, ($s0)
/* 051D10 80051110 AC400004 */  sw    $zero, 4($v0)
/* 051D14 80051114 AC580000 */  sw    $t8, ($v0)
/* 051D18 80051118 8E020000 */  lw    $v0, ($s0)
/* 051D1C 8005111C 3C0F073F */  lui   $t7, (0x073FC000 >> 16) # lui $t7, 0x73f
/* 051D20 80051120 35EFC000 */  ori   $t7, (0x073FC000 & 0xFFFF) # ori $t7, $t7, 0xc000
/* 051D24 80051124 24590008 */  addiu $t9, $v0, 8
/* 051D28 80051128 AE190000 */  sw    $t9, ($s0)
/* 051D2C 8005112C AC4F0004 */  sw    $t7, 4($v0)
/* 051D30 80051130 AC4E0000 */  sw    $t6, ($v0)
/* 051D34 80051134 8E020000 */  lw    $v0, ($s0)
/* 051D38 80051138 3C19E700 */  lui   $t9, 0xe700
/* 051D3C 8005113C 3C0F0600 */  lui   $t7, 0x600
/* 051D40 80051140 24580008 */  addiu $t8, $v0, 8
/* 051D44 80051144 AE180000 */  sw    $t8, ($s0)
/* 051D48 80051148 AC400004 */  sw    $zero, 4($v0)
/* 051D4C 8005114C AC590000 */  sw    $t9, ($v0)
/* 051D50 80051150 8E020000 */  lw    $v0, ($s0)
/* 051D54 80051154 3C180D00 */  lui   $t8, %hi(D_0D007DB8) # $t8, 0xd00
/* 051D58 80051158 27187DB8 */  addiu $t8, %lo(D_0D007DB8) # addiu $t8, $t8, 0x7db8
/* 051D5C 8005115C 244E0008 */  addiu $t6, $v0, 8
/* 051D60 80051160 AE0E0000 */  sw    $t6, ($s0)
/* 051D64 80051164 AC580004 */  sw    $t8, 4($v0)
/* 051D68 80051168 AC4F0000 */  sw    $t7, ($v0)
/* 051D6C 8005116C 8FB900AC */  lw    $t9, 0xac($sp)
/* 051D70 80051170 3C068016 */  lui   $a2, %hi(D_801656E0) # $a2, 0x8016
/* 051D74 80051174 24070080 */  li    $a3, 128
/* 051D78 80051178 8F2E00BC */  lw    $t6, 0xbc($t9)
/* 051D7C 8005117C 000DC8C0 */  sll   $t9, $t5, 3
/* 051D80 80051180 032DC823 */  subu  $t9, $t9, $t5
/* 051D84 80051184 31CF0200 */  andi  $t7, $t6, 0x200
/* 051D88 80051188 11E00014 */  beqz  $t7, .L800511DC
/* 051D8C 8005118C 0019C940 */   sll   $t9, $t9, 5
/* 051D90 80051190 000D70C0 */  sll   $t6, $t5, 3
/* 051D94 80051194 01CD7023 */  subu  $t6, $t6, $t5
/* 051D98 80051198 3C0F8016 */  lui   $t7, %hi(gObjectList) # $t7, 0x8016
/* 051D9C 8005119C 25EF5C18 */  addiu $t7, %lo(gObjectList) # addiu $t7, $t7, 0x5c18
/* 051DA0 800511A0 000E7140 */  sll   $t6, $t6, 5
/* 051DA4 800511A4 24180080 */  li    $t8, 128
/* 051DA8 800511A8 AFB80010 */  sw    $t8, 0x10($sp)
/* 051DAC 800511AC 01CF8821 */  addu  $s1, $t6, $t7
/* 051DB0 800511B0 863800A0 */  lh    $t8, 0xa0($s1)
/* 051DB4 800511B4 24190080 */  li    $t9, 128
/* 051DB8 800511B8 AFB90014 */  sw    $t9, 0x14($sp)
/* 051DBC 800511BC 948456C0 */  lhu   $a0, %lo(D_801656C0)($a0)
/* 051DC0 800511C0 94A556D0 */  lhu   $a1, %lo(D_801656D0)($a1)
/* 051DC4 800511C4 94C656E0 */  lhu   $a2, %lo(D_801656E0)($a2)
/* 051DC8 800511C8 AFAA003C */  sw    $t2, 0x3c($sp)
/* 051DCC 800511CC 0C012D85 */  jal   func_8004B614
/* 051DD0 800511D0 AFB80018 */   sw    $t8, 0x18($sp)
/* 051DD4 800511D4 10000008 */  b     .L800511F8
/* 051DD8 800511D8 8FAA003C */   lw    $t2, 0x3c($sp)
.L800511DC:
/* 051DDC 800511DC 3C0E8016 */  lui   $t6, %hi(gObjectList) # $t6, 0x8016
/* 051DE0 800511E0 25CE5C18 */  addiu $t6, %lo(gObjectList) # addiu $t6, $t6, 0x5c18
/* 051DE4 800511E4 032E8821 */  addu  $s1, $t9, $t6
/* 051DE8 800511E8 862400A0 */  lh    $a0, 0xa0($s1)
/* 051DEC 800511EC 0C012CAF */  jal   set_transparency
/* 051DF0 800511F0 AFAA003C */   sw    $t2, 0x3c($sp)
/* 051DF4 800511F4 8FAA003C */  lw    $t2, 0x3c($sp)
.L800511F8:
/* 051DF8 800511F8 3C04800E */  lui   $a0, %hi(gPortraitTextures)
/* 051DFC 800511FC 008A2021 */  addu  $a0, $a0, $t2
/* 051E00 80051200 8C84459C */  lw    $a0, %lo(gPortraitTextures)($a0)
/* 051E04 80051204 24050020 */  li    $a1, 32
/* 051E08 80051208 0C0114A9 */  jal   rsp_load_texture
/* 051E0C 8005120C 24060020 */   li    $a2, 32
/* 051E10 80051210 8FAF00D0 */  lw    $t7, 0xd0($sp)
/* 051E14 80051214 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 051E18 80051218 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 051E1C 8005121C 25F80020 */  addiu $t8, $t7, 0x20
/* 051E20 80051220 44988000 */  mtc1  $t8, $f16
/* 051E24 80051224 032E7821 */  addu  $t7, $t9, $t6
/* 051E28 80051228 448F2000 */  mtc1  $t7, $f4
/* 051E2C 8005122C 468081A0 */  cvt.s.w $f6, $f16
/* 051E30 80051230 C62A0028 */  lwc1  $f10, 0x28($s1)
/* 051E34 80051234 C630002C */  lwc1  $f16, 0x2c($s1)
/* 051E38 80051238 26240004 */  addiu $a0, $s1, 4
/* 051E3C 8005123C 262500BE */  addiu $a1, $s1, 0xbe
/* 051E40 80051240 46802220 */  cvt.s.w $f8, $f4
/* 051E44 80051244 AFA50038 */  sw    $a1, 0x38($sp)
/* 051E48 80051248 AFA4003C */  sw    $a0, 0x3c($sp)
/* 051E4C 8005124C 8E260000 */  lw    $a2, ($s1)
/* 051E50 80051250 46065480 */  add.s $f18, $f10, $f6
/* 051E54 80051254 C6260030 */  lwc1  $f6, 0x30($s1)
/* 051E58 80051258 46088280 */  add.s $f10, $f16, $f8
/* 051E5C 8005125C E6320004 */  swc1  $f18, 4($s1)
/* 051E60 80051260 E626000C */  swc1  $f6, 0xc($s1)
/* 051E64 80051264 0C010B80 */  jal   rsp_set_matrix_transformation
/* 051E68 80051268 E62A0008 */   swc1  $f10, 8($s1)
/* 051E6C 8005126C 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 051E70 80051270 3C0E0600 */  lui   $t6, 0x600
/* 051E74 80051274 3C190600 */  lui   $t9, 0x600
/* 051E78 80051278 13000009 */  beqz  $t8, .L800512A0
/* 051E7C 8005127C 24050008 */   li    $a1, 8
/* 051E80 80051280 8E020000 */  lw    $v0, ($s0)
/* 051E84 80051284 3C0F0D00 */  lui   $t7, %hi(D_0D0069F8) # $t7, 0xd00
/* 051E88 80051288 25EF69F8 */  addiu $t7, %lo(D_0D0069F8) # addiu $t7, $t7, 0x69f8
/* 051E8C 8005128C 24590008 */  addiu $t9, $v0, 8
/* 051E90 80051290 AE190000 */  sw    $t9, ($s0)
/* 051E94 80051294 AC4F0004 */  sw    $t7, 4($v0)
/* 051E98 80051298 10000008 */  b     .L800512BC
/* 051E9C 8005129C AC4E0000 */   sw    $t6, ($v0)
.L800512A0:
/* 051EA0 800512A0 8E020000 */  lw    $v0, ($s0)
/* 051EA4 800512A4 3C0E0D00 */  lui   $t6, %hi(D_0D0069E0) # $t6, 0xd00
/* 051EA8 800512A8 25CE69E0 */  addiu $t6, %lo(D_0D0069E0) # addiu $t6, $t6, 0x69e0
/* 051EAC 800512AC 24580008 */  addiu $t8, $v0, 8
/* 051EB0 800512B0 AE180000 */  sw    $t8, ($s0)
/* 051EB4 800512B4 AC4E0004 */  sw    $t6, 4($v0)
/* 051EB8 800512B8 AC590000 */  sw    $t9, ($v0)
.L800512BC:
/* 051EBC 800512BC 8E020000 */  lw    $v0, ($s0)
/* 051EC0 800512C0 3C190D02 */  lui   $t9, %hi(gTLUTHudTypeCRankTinyFont) # $t9, 0xd02
/* 051EC4 800512C4 27399E58 */  addiu $t9, %lo(gTLUTHudTypeCRankTinyFont) # addiu $t9, $t9, -0x61a8
/* 051EC8 800512C8 244F0008 */  addiu $t7, $v0, 8
/* 051ECC 800512CC AE0F0000 */  sw    $t7, ($s0)
/* 051ED0 800512D0 3C18FD10 */  lui   $t8, 0xfd10
/* 051ED4 800512D4 AC580000 */  sw    $t8, ($v0)
/* 051ED8 800512D8 AC590004 */  sw    $t9, 4($v0)
/* 051EDC 800512DC 8E020000 */  lw    $v0, ($s0)
/* 051EE0 800512E0 3C0FE800 */  lui   $t7, 0xe800
/* 051EE4 800512E4 3C19F500 */  lui   $t9, (0xF5000100 >> 16) # lui $t9, 0xf500
/* 051EE8 800512E8 244E0008 */  addiu $t6, $v0, 8
/* 051EEC 800512EC AE0E0000 */  sw    $t6, ($s0)
/* 051EF0 800512F0 AC400004 */  sw    $zero, 4($v0)
/* 051EF4 800512F4 AC4F0000 */  sw    $t7, ($v0)
/* 051EF8 800512F8 8E020000 */  lw    $v0, ($s0)
/* 051EFC 800512FC 3C0E0700 */  lui   $t6, 0x700
/* 051F00 80051300 37390100 */  ori   $t9, (0xF5000100 & 0xFFFF) # ori $t9, $t9, 0x100
/* 051F04 80051304 24580008 */  addiu $t8, $v0, 8
/* 051F08 80051308 AE180000 */  sw    $t8, ($s0)
/* 051F0C 8005130C AC4E0004 */  sw    $t6, 4($v0)
/* 051F10 80051310 AC590000 */  sw    $t9, ($v0)
/* 051F14 80051314 8E020000 */  lw    $v0, ($s0)
/* 051F18 80051318 3C18E600 */  lui   $t8, 0xe600
/* 051F1C 8005131C 3C0EF000 */  lui   $t6, 0xf000
/* 051F20 80051320 244F0008 */  addiu $t7, $v0, 8
/* 051F24 80051324 AE0F0000 */  sw    $t7, ($s0)
/* 051F28 80051328 AC400004 */  sw    $zero, 4($v0)
/* 051F2C 8005132C AC580000 */  sw    $t8, ($v0)
/* 051F30 80051330 8E020000 */  lw    $v0, ($s0)
/* 051F34 80051334 3C0F073F */  lui   $t7, (0x073FC000 >> 16) # lui $t7, 0x73f
/* 051F38 80051338 35EFC000 */  ori   $t7, (0x073FC000 & 0xFFFF) # ori $t7, $t7, 0xc000
/* 051F3C 8005133C 24590008 */  addiu $t9, $v0, 8
/* 051F40 80051340 AE190000 */  sw    $t9, ($s0)
/* 051F44 80051344 AC4F0004 */  sw    $t7, 4($v0)
/* 051F48 80051348 AC4E0000 */  sw    $t6, ($v0)
/* 051F4C 8005134C 8E020000 */  lw    $v0, ($s0)
/* 051F50 80051350 3C19E700 */  lui   $t9, 0xe700
/* 051F54 80051354 24060008 */  li    $a2, 8
/* 051F58 80051358 24580008 */  addiu $t8, $v0, 8
/* 051F5C 8005135C AE180000 */  sw    $t8, ($s0)
/* 051F60 80051360 AC400004 */  sw    $zero, 4($v0)
/* 051F64 80051364 AC590000 */  sw    $t9, ($v0)
/* 051F68 80051368 8FAE00DC */  lw    $t6, 0xdc($sp)
/* 051F6C 8005136C 3C190D02 */  lui   $t9, %hi(gTextureHudTypeCRankTinyFont) # $t9, 0xd02
/* 051F70 80051370 2739A058 */  addiu $t9, %lo(gTextureHudTypeCRankTinyFont) # addiu $t9, $t9, -0x5fa8
/* 051F74 80051374 000E7980 */  sll   $t7, $t6, 6
/* 051F78 80051378 25F80040 */  addiu $t8, $t7, 0x40
/* 051F7C 8005137C 0C0114A9 */  jal   rsp_load_texture
/* 051F80 80051380 03192021 */   addu  $a0, $t8, $t9
/* 051F84 80051384 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 051F88 80051388 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 051F8C 8005138C 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 051F90 80051390 11C0000C */  beqz  $t6, .L800513C4
/* 051F94 80051394 2484001B */   addiu $a0, $a0, 0x1b
/* 051F98 80051398 8FAF00C4 */  lw    $t7, 0xc4($sp)
/* 051F9C 8005139C 8FB800CC */  lw    $t8, 0xcc($sp)
/* 051FA0 800513A0 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 051FA4 800513A4 00003025 */  move  $a2, $zero
/* 051FA8 800513A8 01F82821 */  addu  $a1, $t7, $t8
/* 051FAC 800513AC 24A50004 */  addiu $a1, $a1, 4
/* 051FB0 800513B0 3C073F80 */  lui   $a3, 0x3f80
/* 051FB4 800513B4 0C0108CC */  jal   func_80042330
/* 051FB8 800513B8 24840026 */   addiu $a0, $a0, 0x26
/* 051FBC 800513BC 10000008 */  b     .L800513E0
/* 051FC0 800513C0 8E020000 */   lw    $v0, ($s0)
.L800513C4:
/* 051FC4 800513C4 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 051FC8 800513C8 00003025 */  move  $a2, $zero
/* 051FCC 800513CC 3C073F80 */  lui   $a3, 0x3f80
/* 051FD0 800513D0 032E2821 */  addu  $a1, $t9, $t6
/* 051FD4 800513D4 0C0108CC */  jal   func_80042330
/* 051FD8 800513D8 24A50004 */   addiu $a1, $a1, 4
/* 051FDC 800513DC 8E020000 */  lw    $v0, ($s0)
.L800513E0:
/* 051FE0 800513E0 3C190D00 */  lui   $t9, %hi(D_0D006950) # $t9, 0xd00
/* 051FE4 800513E4 27396950 */  addiu $t9, %lo(D_0D006950) # addiu $t9, $t9, 0x6950
/* 051FE8 800513E8 244F0008 */  addiu $t7, $v0, 8
/* 051FEC 800513EC AE0F0000 */  sw    $t7, ($s0)
/* 051FF0 800513F0 3C180600 */  lui   $t8, 0x600
/* 051FF4 800513F4 AC580000 */  sw    $t8, ($v0)
/* 051FF8 800513F8 AC590004 */  sw    $t9, 4($v0)
/* 051FFC 800513FC 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 052000 80051400 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 052004 80051404 8FAE00AC */  lw    $t6, 0xac($sp)
/* 052008 80051408 3C18800E */  lui   $t8, %hi(gScreenModeSelection) # $t8, 0x800e
/* 05200C 8005140C 55CF0027 */  bnel  $t6, $t7, .L800514AC
/* 052010 80051410 8FBF002C */   lw    $ra, 0x2c($sp)
/* 052014 80051414 8F18C530 */  lw    $t8, %lo(gScreenModeSelection)($t8)
/* 052018 80051418 3C0F0D00 */  lui   $t7, %hi(D_0D007A40) # $t7, 0xd00
/* 05201C 8005141C 25EF7A40 */  addiu $t7, %lo(D_0D007A40) # addiu $t7, $t7, 0x7a40
/* 052020 80051420 17000021 */  bnez  $t8, .L800514A8
/* 052024 80051424 3C0E0600 */   lui   $t6, 0x600
/* 052028 80051428 8E020000 */  lw    $v0, ($s0)
/* 05202C 8005142C 3C180D00 */  lui   $t8, %hi(D_0D0069E0) # $t8, 0xd00
/* 052030 80051430 271869E0 */  addiu $t8, %lo(D_0D0069E0) # addiu $t8, $t8, 0x69e0
/* 052034 80051434 24590008 */  addiu $t9, $v0, 8
/* 052038 80051438 AE190000 */  sw    $t9, ($s0)
/* 05203C 8005143C AC4F0004 */  sw    $t7, 4($v0)
/* 052040 80051440 AC4E0000 */  sw    $t6, ($v0)
/* 052044 80051444 3C048019 */  lui   $a0, %hi(D_8018D3E4) # $a0, 0x8019
/* 052048 80051448 3C058019 */  lui   $a1, %hi(D_8018D3E8) # $a1, 0x8019
/* 05204C 8005144C 3C068019 */  lui   $a2, %hi(D_8018D3EC) # $a2, 0x8019
/* 052050 80051450 8CC6D3EC */  lw    $a2, %lo(D_8018D3EC)($a2)
/* 052054 80051454 8CA5D3E8 */  lw    $a1, %lo(D_8018D3E8)($a1)
/* 052058 80051458 8C84D3E4 */  lw    $a0, %lo(D_8018D3E4)($a0)
/* 05205C 8005145C AFB80034 */  sw    $t8, 0x34($sp)
/* 052060 80051460 0C012CD7 */  jal   func_8004B35C
/* 052064 80051464 240700FF */   li    $a3, 255
/* 052068 80051468 3C040D02 */  lui   $a0, %hi(gTextureCharacterPortraitBorder) # $a0, 0xd02
/* 05206C 8005146C 2484A2D8 */  addiu $a0, %lo(gTextureCharacterPortraitBorder) # addiu $a0, $a0, -0x5d28
/* 052070 80051470 24050020 */  li    $a1, 32
/* 052074 80051474 0C011249 */  jal   func_80044924
/* 052078 80051478 24060020 */   li    $a2, 32
/* 05207C 8005147C 8FA4003C */  lw    $a0, 0x3c($sp)
/* 052080 80051480 8FA50038 */  lw    $a1, 0x38($sp)
/* 052084 80051484 0C010B80 */  jal   rsp_set_matrix_transformation
/* 052088 80051488 8E260000 */   lw    $a2, ($s1)
/* 05208C 8005148C 8E020000 */  lw    $v0, ($s0)
/* 052090 80051490 3C0E0600 */  lui   $t6, 0x600
/* 052094 80051494 24590008 */  addiu $t9, $v0, 8
/* 052098 80051498 AE190000 */  sw    $t9, ($s0)
/* 05209C 8005149C AC4E0000 */  sw    $t6, ($v0)
/* 0520A0 800514A0 8FAF0034 */  lw    $t7, 0x34($sp)
/* 0520A4 800514A4 AC4F0004 */  sw    $t7, 4($v0)
.L800514A8:
/* 0520A8 800514A8 8FBF002C */  lw    $ra, 0x2c($sp)
.L800514AC:
/* 0520AC 800514AC 8FB00024 */  lw    $s0, 0x24($sp)
/* 0520B0 800514B0 8FB10028 */  lw    $s1, 0x28($sp)
/* 0520B4 800514B4 03E00008 */  jr    $ra
/* 0520B8 800514B8 27BD00D8 */   addiu $sp, $sp, 0xd8
