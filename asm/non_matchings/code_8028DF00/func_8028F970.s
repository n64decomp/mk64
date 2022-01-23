glabel func_8028F970
/* 0F8F80 8028F970 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0F8F84 8028F974 3C0E8016 */  lui   $t6, %hi(D_8015F890) # $t6, 0x8016
/* 0F8F88 8028F978 95CEF890 */  lhu   $t6, %lo(D_8015F890)($t6)
/* 0F8F8C 8028F97C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0F8F90 8028F980 AFB30020 */  sw    $s3, 0x20($sp)
/* 0F8F94 8028F984 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0F8F98 8028F988 AFB10018 */  sw    $s1, 0x18($sp)
/* 0F8F9C 8028F98C 15C0008A */  bnez  $t6, .L8028FBB8
/* 0F8FA0 8028F990 AFB00014 */   sw    $s0, 0x14($sp)
/* 0F8FA4 8028F994 3C13800F */  lui   $s3, %hi(gPlayers) # $s3, 0x800f
/* 0F8FA8 8028F998 3C11800E */  lui   $s1, %hi(D_800DC5A8) # $s1, 0x800e
/* 0F8FAC 8028F99C 2631C5A8 */  addiu $s1, %lo(D_800DC5A8) # addiu $s1, $s1, -0x3a58
/* 0F8FB0 8028F9A0 26736990 */  addiu $s3, %lo(gPlayers) # addiu $s3, $s3, 0x6990
/* 0F8FB4 8028F9A4 00009025 */  move  $s2, $zero
.L8028F9A8:
/* 0F8FB8 8028F9A8 96620000 */  lhu   $v0, ($s3)
/* 0F8FBC 8028F9AC 304F4000 */  andi  $t7, $v0, 0x4000
/* 0F8FC0 8028F9B0 11E00056 */  beqz  $t7, .L8028FB0C
/* 0F8FC4 8028F9B4 30581000 */   andi  $t8, $v0, 0x1000
/* 0F8FC8 8028F9B8 17000054 */  bnez  $t8, .L8028FB0C
/* 0F8FCC 8028F9BC 0012C900 */   sll   $t9, $s2, 4
/* 0F8FD0 8028F9C0 3C09800E */  lui   $t1, %hi(gActiveScreenMode) # $t1, 0x800e
/* 0F8FD4 8028F9C4 8D29C52C */  lw    $t1, %lo(gActiveScreenMode)($t1)
/* 0F8FD8 8028F9C8 3C08800F */  lui   $t0, %hi(gControllers) # $t0, 0x800f
/* 0F8FDC 8028F9CC 25086910 */  addiu $t0, %lo(gControllers) # addiu $t0, $t0, 0x6910
/* 0F8FE0 8028F9D0 24010003 */  li    $at, 3
/* 0F8FE4 8028F9D4 11210017 */  beq   $t1, $at, .L8028FA34
/* 0F8FE8 8028F9D8 03288021 */   addu  $s0, $t9, $t0
/* 0F8FEC 8028F9DC 96020006 */  lhu   $v0, 6($s0)
/* 0F8FF0 8028F9E0 304A0020 */  andi  $t2, $v0, 0x20
/* 0F8FF4 8028F9E4 51400014 */  beql  $t2, $zero, .L8028FA38
/* 0F8FF8 8028F9E8 96190006 */   lhu   $t9, 6($s0)
/* 0F8FFC 8028F9EC 960B0004 */  lhu   $t3, 4($s0)
/* 0F9000 8028F9F0 304DFFDF */  andi  $t5, $v0, 0xffdf
/* 0F9004 8028F9F4 3C044900 */  lui   $a0, (0x4900801C >> 16) # lui $a0, 0x4900
/* 0F9008 8028F9F8 316C0010 */  andi  $t4, $t3, 0x10
/* 0F900C 8028F9FC 5580000E */  bnel  $t4, $zero, .L8028FA38
/* 0F9010 8028FA00 96190006 */   lhu   $t9, 6($s0)
/* 0F9014 8028FA04 A60D0006 */  sh    $t5, 6($s0)
/* 0F9018 8028FA08 962E0000 */  lhu   $t6, ($s1)
/* 0F901C 8028FA0C 25CF0001 */  addiu $t7, $t6, 1
/* 0F9020 8028FA10 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 0F9024 8028FA14 2B010003 */  slti  $at, $t8, 3
/* 0F9028 8028FA18 14200002 */  bnez  $at, .L8028FA24
/* 0F902C 8028FA1C A62F0000 */   sh    $t7, ($s1)
/* 0F9030 8028FA20 A6200000 */  sh    $zero, ($s1)
.L8028FA24:
/* 0F9034 8028FA24 0C032384 */  jal   play_sound2
/* 0F9038 8028FA28 3484801C */   ori   $a0, (0x4900801C & 0xFFFF) # ori $a0, $a0, 0x801c
/* 0F903C 8028FA2C 0C000A6C */  jal   func_800029B0
/* 0F9040 8028FA30 00000000 */   nop
.L8028FA34:
/* 0F9044 8028FA34 96190006 */  lhu   $t9, 6($s0)
.L8028FA38:
/* 0F9048 8028FA38 33281000 */  andi  $t0, $t9, 0x1000
/* 0F904C 8028FA3C 51000034 */  beql  $t0, $zero, .L8028FB10
/* 0F9050 8028FA40 26520001 */   addiu $s2, $s2, 1
/* 0F9054 8028FA44 96020004 */  lhu   $v0, 4($s0)
/* 0F9058 8028FA48 30490010 */  andi  $t1, $v0, 0x10
/* 0F905C 8028FA4C 1520002F */  bnez  $t1, .L8028FB0C
/* 0F9060 8028FA50 304A0020 */   andi  $t2, $v0, 0x20
/* 0F9064 8028FA54 5540002E */  bnel  $t2, $zero, .L8028FB10
/* 0F9068 8028FA58 26520001 */   addiu $s2, $s2, 1
/* 0F906C 8028FA5C 0C0A37C0 */  jal   func_8028DF00
/* 0F9070 8028FA60 00000000 */   nop
/* 0F9074 8028FA64 3C0B800E */  lui   $t3, %hi(gControllerOne) # $t3, 0x800e
/* 0F9078 8028FA68 8D6BC4BC */  lw    $t3, %lo(gControllerOne)($t3)
/* 0F907C 8028FA6C 3C01800E */  lui   $at, %hi(D_800DC5FC) # $at, 0x800e
/* 0F9080 8028FA70 24040001 */  li    $a0, 1
/* 0F9084 8028FA74 020B6023 */  subu  $t4, $s0, $t3
/* 0F9088 8028FA78 000C6903 */  sra   $t5, $t4, 4
/* 0F908C 8028FA7C 25AE0001 */  addiu $t6, $t5, 1
/* 0F9090 8028FA80 A42EC5FC */  sh    $t6, %lo(D_800DC5FC)($at)
/* 0F9094 8028FA84 0C0327E4 */  jal   func_800C9F90
/* 0F9098 8028FA88 A6000006 */   sh    $zero, 6($s0)
/* 0F909C 8028FA8C 3C0F800E */  lui   $t7, %hi(gModeSelection) # $t7, 0x800e
/* 0F90A0 8028FA90 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 0F90A4 8028FA94 24020001 */  li    $v0, 1
/* 0F90A8 8028FA98 3C018016 */  lui   $at, %hi(D_80162DF0) # $at, 0x8016
/* 0F90AC 8028FA9C 144F0046 */  bne   $v0, $t7, .L8028FBB8
/* 0F90B0 8028FAA0 AC222DF0 */   sw    $v0, %lo(D_80162DF0)($at)
/* 0F90B4 8028FAA4 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 0F90B8 8028FAA8 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 0F90BC 8028FAAC 94980000 */  lhu   $t8, ($a0)
/* 0F90C0 8028FAB0 33198100 */  andi  $t9, $t8, 0x8100
/* 0F90C4 8028FAB4 13200003 */  beqz  $t9, .L8028FAC4
/* 0F90C8 8028FAB8 00000000 */   nop
/* 0F90CC 8028FABC 0C0016BA */  jal   func_80005AE8
/* 0F90D0 8028FAC0 00000000 */   nop
.L8028FAC4:
/* 0F90D4 8028FAC4 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0F90D8 8028FAC8 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0F90DC 8028FACC 94880000 */  lhu   $t0, ($a0)
/* 0F90E0 8028FAD0 31098100 */  andi  $t1, $t0, 0x8100
/* 0F90E4 8028FAD4 11200003 */  beqz  $t1, .L8028FAE4
/* 0F90E8 8028FAD8 00000000 */   nop
/* 0F90EC 8028FADC 0C0016BA */  jal   func_80005AE8
/* 0F90F0 8028FAE0 00000000 */   nop
.L8028FAE4:
/* 0F90F4 8028FAE4 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0F90F8 8028FAE8 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 0F90FC 8028FAEC 948A0000 */  lhu   $t2, ($a0)
/* 0F9100 8028FAF0 314B8100 */  andi  $t3, $t2, 0x8100
/* 0F9104 8028FAF4 51600031 */  beql  $t3, $zero, .L8028FBBC
/* 0F9108 8028FAF8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0F910C 8028FAFC 0C0016BA */  jal   func_80005AE8
/* 0F9110 8028FB00 00000000 */   nop
/* 0F9114 8028FB04 1000002D */  b     .L8028FBBC
/* 0F9118 8028FB08 8FBF0024 */   lw    $ra, 0x24($sp)
.L8028FB0C:
/* 0F911C 8028FB0C 26520001 */  addiu $s2, $s2, 1
.L8028FB10:
/* 0F9120 8028FB10 24010004 */  li    $at, 4
/* 0F9124 8028FB14 1641FFA4 */  bne   $s2, $at, .L8028F9A8
/* 0F9128 8028FB18 26730DD8 */   addiu $s3, $s3, 0xdd8
/* 0F912C 8028FB1C 3C0C800E */  lui   $t4, %hi(gEnableDebugMode) # $t4, 0x800e
/* 0F9130 8028FB20 958CC520 */  lhu   $t4, %lo(gEnableDebugMode)($t4)
/* 0F9134 8028FB24 3C0D800E */  lui   $t5, %hi(gModeSelection) # $t5, 0x800e
/* 0F9138 8028FB28 51800024 */  beql  $t4, $zero, .L8028FBBC
/* 0F913C 8028FB2C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0F9140 8028FB30 8DADC53C */  lw    $t5, %lo(gModeSelection)($t5)
/* 0F9144 8028FB34 24010003 */  li    $at, 3
/* 0F9148 8028FB38 3C05800E */  lui   $a1, %hi(gControllerOne) # $a1, 0x800e
/* 0F914C 8028FB3C 51A1001F */  beql  $t5, $at, .L8028FBBC
/* 0F9150 8028FB40 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0F9154 8028FB44 8CA5C4BC */  lw    $a1, %lo(gControllerOne)($a1)
/* 0F9158 8028FB48 3C028016 */  lui   $v0, %hi(gLapCountByPlayerId) # $v0, 0x8016
/* 0F915C 8028FB4C 24424390 */  addiu $v0, %lo(gLapCountByPlayerId) # addiu $v0, $v0, 0x4390
/* 0F9160 8028FB50 94A40006 */  lhu   $a0, 6($a1)
/* 0F9164 8028FB54 24030002 */  li    $v1, 2
/* 0F9168 8028FB58 308E0800 */  andi  $t6, $a0, 0x800
/* 0F916C 8028FB5C 11C00003 */  beqz  $t6, .L8028FB6C
/* 0F9170 8028FB60 00000000 */   nop
/* 0F9174 8028FB64 AC430000 */  sw    $v1, ($v0)
/* 0F9178 8028FB68 94A40006 */  lhu   $a0, 6($a1)
.L8028FB6C:
/* 0F917C 8028FB6C 3C028016 */  lui   $v0, %hi(gLapCountByPlayerId) # $v0, 0x8016
/* 0F9180 8028FB70 308F0100 */  andi  $t7, $a0, 0x100
/* 0F9184 8028FB74 24424390 */  addiu $v0, %lo(gLapCountByPlayerId) # addiu $v0, $v0, 0x4390
/* 0F9188 8028FB78 11E00004 */  beqz  $t7, .L8028FB8C
/* 0F918C 8028FB7C 24030002 */   li    $v1, 2
/* 0F9190 8028FB80 AC430000 */  sw    $v1, ($v0)
/* 0F9194 8028FB84 AC430004 */  sw    $v1, 4($v0)
/* 0F9198 8028FB88 94A40006 */  lhu   $a0, 6($a1)
.L8028FB8C:
/* 0F919C 8028FB8C 30980400 */  andi  $t8, $a0, 0x400
/* 0F91A0 8028FB90 5300000A */  beql  $t8, $zero, .L8028FBBC
/* 0F91A4 8028FB94 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0F91A8 8028FB98 AC430000 */  sw    $v1, ($v0)
/* 0F91AC 8028FB9C AC430004 */  sw    $v1, 4($v0)
/* 0F91B0 8028FBA0 AC430008 */  sw    $v1, 8($v0)
/* 0F91B4 8028FBA4 AC43000C */  sw    $v1, 0xc($v0)
/* 0F91B8 8028FBA8 AC430010 */  sw    $v1, 0x10($v0)
/* 0F91BC 8028FBAC AC430014 */  sw    $v1, 0x14($v0)
/* 0F91C0 8028FBB0 AC430018 */  sw    $v1, 0x18($v0)
/* 0F91C4 8028FBB4 AC43001C */  sw    $v1, 0x1c($v0)
.L8028FBB8:
/* 0F91C8 8028FBB8 8FBF0024 */  lw    $ra, 0x24($sp)
.L8028FBBC:
/* 0F91CC 8028FBBC 8FB00014 */  lw    $s0, 0x14($sp)
/* 0F91D0 8028FBC0 8FB10018 */  lw    $s1, 0x18($sp)
/* 0F91D4 8028FBC4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0F91D8 8028FBC8 8FB30020 */  lw    $s3, 0x20($sp)
/* 0F91DC 8028FBCC 03E00008 */  jr    $ra
/* 0F91E0 8028FBD0 27BD0028 */   addiu $sp, $sp, 0x28
