glabel func_800B3B58
/* 0B4758 800B3B58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0B475C 800B3B5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B4760 800B3B60 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0B4764 800B3B64 948F000C */  lhu   $t7, 0xc($a0)
/* 0B4768 800B3B68 948E0006 */  lhu   $t6, 6($a0)
/* 0B476C 800B3B6C 3C19800E */  lui   $t9, %hi(gEnableDebugMode) # $t9, 0x800e
/* 0B4770 800B3B70 9739C520 */  lhu   $t9, %lo(gEnableDebugMode)($t9)
/* 0B4774 800B3B74 01CF3025 */  or    $a2, $t6, $t7
/* 0B4778 800B3B78 30D8FFFF */  andi  $t8, $a2, 0xffff
/* 0B477C 800B3B7C 17200007 */  bnez  $t9, .L800B3B9C
/* 0B4780 800B3B80 03003025 */   move  $a2, $t8
/* 0B4784 800B3B84 33081000 */  andi  $t0, $t8, 0x1000
/* 0B4788 800B3B88 11000004 */  beqz  $t0, .L800B3B9C
/* 0B478C 800B3B8C 00000000 */   nop   
/* 0B4790 800B3B90 37068000 */  ori   $a2, $t8, 0x8000
/* 0B4794 800B3B94 30C9FFFF */  andi  $t1, $a2, 0xffff
/* 0B4798 800B3B98 01203025 */  move  $a2, $t1
.L800B3B9C:
/* 0B479C 800B3B9C 0C02D148 */  jal   func_800B4520
/* 0B47A0 800B3BA0 A7A60026 */   sh    $a2, 0x26($sp)
/* 0B47A4 800B3BA4 144000EF */  bnez  $v0, .L800B3F64
/* 0B47A8 800B3BA8 97A60026 */   lhu   $a2, 0x26($sp)
/* 0B47AC 800B3BAC 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B47B0 800B3BB0 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B47B4 800B3BB4 80A20000 */  lb    $v0, ($a1)
/* 0B47B8 800B3BB8 24010001 */  li    $at, 1
/* 0B47BC 800B3BBC 30CA0100 */  andi  $t2, $a2, 0x100
/* 0B47C0 800B3BC0 1041000B */  beq   $v0, $at, .L800B3BF0
/* 0B47C4 800B3BC4 24010002 */   li    $at, 2
/* 0B47C8 800B3BC8 10410065 */  beq   $v0, $at, .L800B3D60
/* 0B47CC 800B3BCC 30D90400 */   andi  $t9, $a2, 0x400
/* 0B47D0 800B3BD0 24010003 */  li    $at, 3
/* 0B47D4 800B3BD4 104100AE */  beq   $v0, $at, .L800B3E90
/* 0B47D8 800B3BD8 97AB002E */   lhu   $t3, 0x2e($sp)
/* 0B47DC 800B3BDC 24010004 */  li    $at, 4
/* 0B47E0 800B3BE0 1041005F */  beq   $v0, $at, .L800B3D60
/* 0B47E4 800B3BE4 00000000 */   nop   
/* 0B47E8 800B3BE8 100000DF */  b     .L800B3F68
/* 0B47EC 800B3BEC 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B3BF0:
/* 0B47F0 800B3BF0 11400012 */  beqz  $t2, .L800B3C3C
/* 0B47F4 800B3BF4 00C01825 */   move  $v1, $a2
/* 0B47F8 800B3BF8 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 0B47FC 800B3BFC 8042EE09 */  lb    $v0, %lo(gCupSelection)($v0)
/* 0B4800 800B3C00 28410003 */  slti  $at, $v0, 3
/* 0B4804 800B3C04 1020000D */  beqz  $at, .L800B3C3C
/* 0B4808 800B3C08 244B0001 */   addiu $t3, $v0, 1
/* 0B480C 800B3C0C 3C018019 */  lui   $at, %hi(D_8018EE0A) # $at, 0x8019
/* 0B4810 800B3C10 A022EE0A */  sb    $v0, %lo(D_8018EE0A)($at)
/* 0B4814 800B3C14 3C018019 */  lui   $at, %hi(gCupSelection) # $at, 0x8019
/* 0B4818 800B3C18 A02BEE09 */  sb    $t3, %lo(gCupSelection)($at)
/* 0B481C 800B3C1C 0C02D12B */  jal   func_800B44AC
/* 0B4820 800B3C20 AFA6001C */   sw    $a2, 0x1c($sp)
/* 0B4824 800B3C24 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4828 800B3C28 0C032384 */  jal   play_sound2
/* 0B482C 800B3C2C 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B4830 800B3C30 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B4834 800B3C34 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B4838 800B3C38 8FA3001C */  lw    $v1, 0x1c($sp)
.L800B3C3C:
/* 0B483C 800B3C3C 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 0B4840 800B3C40 306C0200 */  andi  $t4, $v1, 0x200
/* 0B4844 800B3C44 11800011 */  beqz  $t4, .L800B3C8C
/* 0B4848 800B3C48 8042EE09 */   lb    $v0, %lo(gCupSelection)($v0)
/* 0B484C 800B3C4C 1840000F */  blez  $v0, .L800B3C8C
/* 0B4850 800B3C50 3C018019 */   lui   $at, %hi(D_8018EE0A) # $at, 0x8019
/* 0B4854 800B3C54 A022EE0A */  sb    $v0, %lo(D_8018EE0A)($at)
/* 0B4858 800B3C58 3C018019 */  lui   $at, %hi(gCupSelection) # $at, 0x8019
/* 0B485C 800B3C5C 244DFFFF */  addiu $t5, $v0, -1
/* 0B4860 800B3C60 A02DEE09 */  sb    $t5, %lo(gCupSelection)($at)
/* 0B4864 800B3C64 0C02D12B */  jal   func_800B44AC
/* 0B4868 800B3C68 AFA3001C */   sw    $v1, 0x1c($sp)
/* 0B486C 800B3C6C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4870 800B3C70 0C032384 */  jal   play_sound2
/* 0B4874 800B3C74 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B4878 800B3C78 3C028019 */  lui   $v0, %hi(gCupSelection) # $v0, 0x8019
/* 0B487C 800B3C7C 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B4880 800B3C80 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B4884 800B3C84 8042EE09 */  lb    $v0, %lo(gCupSelection)($v0)
/* 0B4888 800B3C88 8FA3001C */  lw    $v1, 0x1c($sp)
.L800B3C8C:
/* 0B488C 800B3C8C 3C0F8019 */  lui   $t7, %hi(gCupCourseSelection) # $t7, 0x8019
/* 0B4890 800B3C90 81EFEE0B */  lb    $t7, %lo(gCupCourseSelection)($t7)
/* 0B4894 800B3C94 000270C0 */  sll   $t6, $v0, 3
/* 0B4898 800B3C98 3C08800F */  lui   $t0, %hi(gCupCourseOrder) # 0x800f
/* 0B489C 800B3C9C 000FC040 */  sll   $t8, $t7, 1
/* 0B48A0 800B3CA0 01D8C821 */  addu  $t9, $t6, $t8
/* 0B48A4 800B3CA4 3C01800E */  lui   $at, %hi(D_800DC540) # $at, 0x800e
/* 0B48A8 800B3CA8 01194021 */  addu  $t0, $t0, $t9
/* 0B48AC 800B3CAC 85082BB4 */  lh    $t0, %lo(gCupCourseOrder)($t0) # 0x2bb4($t0)
/* 0B48B0 800B3CB0 AC22C540 */  sw    $v0, %lo(D_800DC540)($at)
/* 0B48B4 800B3CB4 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 0B48B8 800B3CB8 30694000 */  andi  $t1, $v1, 0x4000
/* 0B48BC 800B3CBC 11200008 */  beqz  $t1, .L800B3CE0
/* 0B48C0 800B3CC0 A428C5A0 */   sh    $t0, %lo(gCurrentCourseId)($at)
/* 0B48C4 800B3CC4 0C027882 */  jal   func_8009E208
/* 0B48C8 800B3CC8 00000000 */   nop   
/* 0B48CC 800B3CCC 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B48D0 800B3CD0 0C032384 */  jal   play_sound2
/* 0B48D4 800B3CD4 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B48D8 800B3CD8 100000A3 */  b     .L800B3F68
/* 0B48DC 800B3CDC 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B3CE0:
/* 0B48E0 800B3CE0 306A8000 */  andi  $t2, $v1, 0x8000
/* 0B48E4 800B3CE4 1140009F */  beqz  $t2, .L800B3F64
/* 0B48E8 800B3CE8 3C0B800E */   lui   $t3, %hi(gModeSelection) # $t3, 0x800e
/* 0B48EC 800B3CEC 8D6BC53C */  lw    $t3, %lo(gModeSelection)($t3)
/* 0B48F0 800B3CF0 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B48F4 800B3CF4 240D0003 */  li    $t5, 3
/* 0B48F8 800B3CF8 11600008 */  beqz  $t3, .L800B3D1C
/* 0B48FC 800B3CFC 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B4900 800B3D00 240C0002 */  li    $t4, 2
/* 0B4904 800B3D04 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B4908 800B3D08 A0AC0000 */  sb    $t4, ($a1)
/* 0B490C 800B3D0C 0C032384 */  jal   play_sound2
/* 0B4910 800B3D10 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B4914 800B3D14 1000000E */  b     .L800B3D50
/* 0B4918 800B3D18 00000000 */   nop   
.L800B3D1C:
/* 0B491C 800B3D1C 0C032384 */  jal   play_sound2
/* 0B4920 800B3D20 A0AD0000 */   sb    $t5, ($a1)
/* 0B4924 800B3D24 3C0F8019 */  lui   $t7, %hi(gCupSelection) # $t7, 0x8019
/* 0B4928 800B3D28 81EFEE09 */  lb    $t7, %lo(gCupSelection)($t7)
/* 0B492C 800B3D2C 3C18800F */  lui   $t8, %hi(gCupCourseOrder) # 0x800f
/* 0B4930 800B3D30 3C048019 */  lui   $a0, %hi(gStartMenuCounterForDemos) # $a0, 0x8019
/* 0B4934 800B3D34 000F70C0 */  sll   $t6, $t7, 3
/* 0B4938 800B3D38 030EC021 */  addu  $t8, $t8, $t6
/* 0B493C 800B3D3C 87182BB4 */  lh    $t8, %lo(gCupCourseOrder)($t8) # 0x2bb4($t8)
/* 0B4940 800B3D40 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 0B4944 800B3D44 2484EE00 */  addiu $a0, %lo(gStartMenuCounterForDemos) # addiu $a0, $a0, -0x1200
/* 0B4948 800B3D48 A438C5A0 */  sh    $t8, %lo(gCurrentCourseId)($at)
/* 0B494C 800B3D4C AC800000 */  sw    $zero, ($a0)
.L800B3D50:
/* 0B4950 800B3D50 0C02D12B */  jal   func_800B44AC
/* 0B4954 800B3D54 00000000 */   nop   
/* 0B4958 800B3D58 10000083 */  b     .L800B3F68
/* 0B495C 800B3D5C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B3D60:
/* 0B4960 800B3D60 13200010 */  beqz  $t9, .L800B3DA4
/* 0B4964 800B3D64 00C01825 */   move  $v1, $a2
/* 0B4968 800B3D68 3C048019 */  lui   $a0, %hi(gCupCourseSelection) # $a0, 0x8019
/* 0B496C 800B3D6C 2484EE0B */  addiu $a0, %lo(gCupCourseSelection) # addiu $a0, $a0, -0x11f5
/* 0B4970 800B3D70 80820000 */  lb    $v0, ($a0)
/* 0B4974 800B3D74 28410003 */  slti  $at, $v0, 3
/* 0B4978 800B3D78 1020000A */  beqz  $at, .L800B3DA4
/* 0B497C 800B3D7C 24480001 */   addiu $t0, $v0, 1
/* 0B4980 800B3D80 A0880000 */  sb    $t0, ($a0)
/* 0B4984 800B3D84 0C02D12B */  jal   func_800B44AC
/* 0B4988 800B3D88 AFA6001C */   sw    $a2, 0x1c($sp)
/* 0B498C 800B3D8C 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B4990 800B3D90 0C032384 */  jal   play_sound2
/* 0B4994 800B3D94 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B4998 800B3D98 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B499C 800B3D9C 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B49A0 800B3DA0 8FA3001C */  lw    $v1, 0x1c($sp)
.L800B3DA4:
/* 0B49A4 800B3DA4 3C048019 */  lui   $a0, %hi(gCupCourseSelection) # $a0, 0x8019
/* 0B49A8 800B3DA8 2484EE0B */  addiu $a0, %lo(gCupCourseSelection) # addiu $a0, $a0, -0x11f5
/* 0B49AC 800B3DAC 30690800 */  andi  $t1, $v1, 0x800
/* 0B49B0 800B3DB0 1120000E */  beqz  $t1, .L800B3DEC
/* 0B49B4 800B3DB4 80820000 */   lb    $v0, ($a0)
/* 0B49B8 800B3DB8 1840000C */  blez  $v0, .L800B3DEC
/* 0B49BC 800B3DBC 244AFFFF */   addiu $t2, $v0, -1
/* 0B49C0 800B3DC0 A08A0000 */  sb    $t2, ($a0)
/* 0B49C4 800B3DC4 0C02D12B */  jal   func_800B44AC
/* 0B49C8 800B3DC8 AFA3001C */   sw    $v1, 0x1c($sp)
/* 0B49CC 800B3DCC 3C044900 */  lui   $a0, (0x49008000 >> 16) # lui $a0, 0x4900
/* 0B49D0 800B3DD0 0C032384 */  jal   play_sound2
/* 0B49D4 800B3DD4 34848000 */   ori   $a0, (0x49008000 & 0xFFFF) # ori $a0, $a0, 0x8000
/* 0B49D8 800B3DD8 3C028019 */  lui   $v0, %hi(gCupCourseSelection) # $v0, 0x8019
/* 0B49DC 800B3DDC 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B49E0 800B3DE0 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B49E4 800B3DE4 8042EE0B */  lb    $v0, %lo(gCupCourseSelection)($v0)
/* 0B49E8 800B3DE8 8FA3001C */  lw    $v1, 0x1c($sp)
.L800B3DEC:
/* 0B49EC 800B3DEC 3C0B8019 */  lui   $t3, %hi(gCupSelection) # $t3, 0x8019
/* 0B49F0 800B3DF0 816BEE09 */  lb    $t3, %lo(gCupSelection)($t3)
/* 0B49F4 800B3DF4 00026840 */  sll   $t5, $v0, 1
/* 0B49F8 800B3DF8 3C0E800F */  lui   $t6, %hi(gCupCourseOrder) # 0x800f
/* 0B49FC 800B3DFC 000B60C0 */  sll   $t4, $t3, 3
/* 0B4A00 800B3E00 018D7821 */  addu  $t7, $t4, $t5
/* 0B4A04 800B3E04 01CF7021 */  addu  $t6, $t6, $t7
/* 0B4A08 800B3E08 85CE2BB4 */  lh    $t6, %lo(gCupCourseOrder)($t6) # 0x2bb4($t6)
/* 0B4A0C 800B3E0C 3C01800E */  lui   $at, %hi(gCurrentCourseId) # $at, 0x800e
/* 0B4A10 800B3E10 30784000 */  andi  $t8, $v1, 0x4000
/* 0B4A14 800B3E14 13000011 */  beqz  $t8, .L800B3E5C
/* 0B4A18 800B3E18 A42EC5A0 */   sh    $t6, %lo(gCurrentCourseId)($at)
/* 0B4A1C 800B3E1C 80B90000 */  lb    $t9, ($a1)
/* 0B4A20 800B3E20 24010002 */  li    $at, 2
/* 0B4A24 800B3E24 24080001 */  li    $t0, 1
/* 0B4A28 800B3E28 17210003 */  bne   $t9, $at, .L800B3E38
/* 0B4A2C 800B3E2C 00000000 */   nop   
/* 0B4A30 800B3E30 10000003 */  b     .L800B3E40
/* 0B4A34 800B3E34 A0A80000 */   sb    $t0, ($a1)
.L800B3E38:
/* 0B4A38 800B3E38 0C027882 */  jal   func_8009E208
/* 0B4A3C 800B3E3C 00000000 */   nop   
.L800B3E40:
/* 0B4A40 800B3E40 0C02D12B */  jal   func_800B44AC
/* 0B4A44 800B3E44 00000000 */   nop   
/* 0B4A48 800B3E48 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B4A4C 800B3E4C 0C032384 */  jal   play_sound2
/* 0B4A50 800B3E50 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B4A54 800B3E54 10000044 */  b     .L800B3F68
/* 0B4A58 800B3E58 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B3E5C:
/* 0B4A5C 800B3E5C 30698000 */  andi  $t1, $v1, 0x8000
/* 0B4A60 800B3E60 11200040 */  beqz  $t1, .L800B3F64
/* 0B4A64 800B3E64 240A0003 */   li    $t2, 3
/* 0B4A68 800B3E68 3C044900 */  lui   $a0, (0x49008001 >> 16) # lui $a0, 0x4900
/* 0B4A6C 800B3E6C A0AA0000 */  sb    $t2, ($a1)
/* 0B4A70 800B3E70 0C032384 */  jal   play_sound2
/* 0B4A74 800B3E74 34848001 */   ori   $a0, (0x49008001 & 0xFFFF) # ori $a0, $a0, 0x8001
/* 0B4A78 800B3E78 0C02D12B */  jal   func_800B44AC
/* 0B4A7C 800B3E7C 00000000 */   nop   
/* 0B4A80 800B3E80 3C048019 */  lui   $a0, %hi(gStartMenuCounterForDemos) # $a0, 0x8019
/* 0B4A84 800B3E84 2484EE00 */  addiu $a0, %lo(gStartMenuCounterForDemos) # addiu $a0, $a0, -0x1200
/* 0B4A88 800B3E88 10000036 */  b     .L800B3F64
/* 0B4A8C 800B3E8C AC800000 */   sw    $zero, ($a0)
.L800B3E90:
/* 0B4A90 800B3E90 15600013 */  bnez  $t3, .L800B3EE0
/* 0B4A94 800B3E94 00C01825 */   move  $v1, $a2
/* 0B4A98 800B3E98 3C048019 */  lui   $a0, %hi(gStartMenuCounterForDemos) # $a0, 0x8019
/* 0B4A9C 800B3E9C 2484EE00 */  addiu $a0, %lo(gStartMenuCounterForDemos) # addiu $a0, $a0, -0x1200
/* 0B4AA0 800B3EA0 8C8C0000 */  lw    $t4, ($a0)
/* 0B4AA4 800B3EA4 2401003C */  li    $at, 60
/* 0B4AA8 800B3EA8 258D0001 */  addiu $t5, $t4, 1
/* 0B4AAC 800B3EAC 11A10005 */  beq   $t5, $at, .L800B3EC4
/* 0B4AB0 800B3EB0 AC8D0000 */   sw    $t5, ($a0)
/* 0B4AB4 800B3EB4 2401012C */  li    $at, 300
/* 0B4AB8 800B3EB8 01A1001A */  div   $zero, $t5, $at
/* 0B4ABC 800B3EBC 00007810 */  mfhi  $t7
/* 0B4AC0 800B3EC0 15E00007 */  bnez  $t7, .L800B3EE0
.L800B3EC4:
/* 0B4AC4 800B3EC4 3C044900 */   lui   $a0, (0x4900900F >> 16) # lui $a0, 0x4900
/* 0B4AC8 800B3EC8 3484900F */  ori   $a0, (0x4900900F & 0xFFFF) # ori $a0, $a0, 0x900f
/* 0B4ACC 800B3ECC 0C032384 */  jal   play_sound2
/* 0B4AD0 800B3ED0 AFA3001C */   sw    $v1, 0x1c($sp)
/* 0B4AD4 800B3ED4 3C058019 */  lui   $a1, %hi(D_8018EDEC) # $a1, 0x8019
/* 0B4AD8 800B3ED8 24A5EDEC */  addiu $a1, %lo(D_8018EDEC) # addiu $a1, $a1, -0x1214
/* 0B4ADC 800B3EDC 8FA3001C */  lw    $v1, 0x1c($sp)
.L800B3EE0:
/* 0B4AE0 800B3EE0 306E4000 */  andi  $t6, $v1, 0x4000
/* 0B4AE4 800B3EE4 11C00016 */  beqz  $t6, .L800B3F40
/* 0B4AE8 800B3EE8 30698000 */   andi  $t1, $v1, 0x8000
/* 0B4AEC 800B3EEC 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 0B4AF0 800B3EF0 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 0B4AF4 800B3EF4 24010003 */  li    $at, 3
/* 0B4AF8 800B3EF8 24190001 */  li    $t9, 1
/* 0B4AFC 800B3EFC 10400006 */  beqz  $v0, .L800B3F18
/* 0B4B00 800B3F00 00000000 */   nop   
/* 0B4B04 800B3F04 10410006 */  beq   $v0, $at, .L800B3F20
/* 0B4B08 800B3F08 24080004 */   li    $t0, 4
/* 0B4B0C 800B3F0C 24180002 */  li    $t8, 2
/* 0B4B10 800B3F10 10000004 */  b     .L800B3F24
/* 0B4B14 800B3F14 A0B80000 */   sb    $t8, ($a1)
.L800B3F18:
/* 0B4B18 800B3F18 10000002 */  b     .L800B3F24
/* 0B4B1C 800B3F1C A0B90000 */   sb    $t9, ($a1)
.L800B3F20:
/* 0B4B20 800B3F20 A0A80000 */  sb    $t0, ($a1)
.L800B3F24:
/* 0B4B24 800B3F24 0C02D12B */  jal   func_800B44AC
/* 0B4B28 800B3F28 00000000 */   nop   
/* 0B4B2C 800B3F2C 3C044900 */  lui   $a0, (0x49008002 >> 16) # lui $a0, 0x4900
/* 0B4B30 800B3F30 0C032384 */  jal   play_sound2
/* 0B4B34 800B3F34 34848002 */   ori   $a0, (0x49008002 & 0xFFFF) # ori $a0, $a0, 0x8002
/* 0B4B38 800B3F38 1000000B */  b     .L800B3F68
/* 0B4B3C 800B3F3C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B3F40:
/* 0B4B40 800B3F40 51200009 */  beql  $t1, $zero, .L800B3F68
/* 0B4B44 800B3F44 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B4B48 800B3F48 0C027870 */  jal   func_8009E1C0
/* 0B4B4C 800B3F4C 00000000 */   nop   
/* 0B4B50 800B3F50 0C0328CC */  jal   func_800CA330
/* 0B4B54 800B3F54 24040019 */   li    $a0, 25
/* 0B4B58 800B3F58 3C044900 */  lui   $a0, (0x49008016 >> 16) # lui $a0, 0x4900
/* 0B4B5C 800B3F5C 0C032384 */  jal   play_sound2
/* 0B4B60 800B3F60 34848016 */   ori   $a0, (0x49008016 & 0xFFFF) # ori $a0, $a0, 0x8016
.L800B3F64:
/* 0B4B64 800B3F64 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B3F68:
/* 0B4B68 800B3F68 27BD0028 */  addiu $sp, $sp, 0x28
/* 0B4B6C 800B3F6C 03E00008 */  jr    $ra
/* 0B4B70 800B3F70 00000000 */   nop   
