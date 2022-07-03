glabel func_800100F0
/* 010CF0 800100F0 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 010CF4 800100F4 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 010CF8 800100F8 3C01800E */  lui   $at, %hi(D_800DCA4C)
/* 010CFC 800100FC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 010D00 80010100 00027080 */  sll   $t6, $v0, 2
/* 010D04 80010104 002E0821 */  addu  $at, $at, $t6
/* 010D08 80010108 C424CA4C */  lwc1  $f4, %lo(D_800DCA4C)($at)
/* 010D0C 8001010C 0004C880 */  sll   $t9, $a0, 2
/* 010D10 80010110 3C088016 */  lui   $t0, %hi(D_80164550)
/* 010D14 80010114 4600218D */  trunc.w.s $f6, $f4
/* 010D18 80010118 AFBF0014 */  sw    $ra, 0x14($sp)
/* 010D1C 8001011C AFA40038 */  sw    $a0, 0x38($sp)
/* 010D20 80010120 01194021 */  addu  $t0, $t0, $t9
/* 010D24 80010124 44183000 */  mfc1  $t8, $f6
/* 010D28 80010128 03201825 */  move  $v1, $t9
/* 010D2C 8001012C 24060001 */  li    $a2, 1
/* 010D30 80010130 07020036 */  bltzl $t8, .L8001020C
/* 010D34 80010134 8FBF0014 */   lw    $ra, 0x14($sp)
/* 010D38 80010138 8D084550 */  lw    $t0, %lo(D_80164550)($t0)
/* 010D3C 8001013C 24010014 */  li    $at, 20
/* 010D40 80010140 10410010 */  beq   $v0, $at, .L80010184
/* 010D44 80010144 AFA80030 */   sw    $t0, 0x30($sp)
/* 010D48 80010148 00024900 */  sll   $t1, $v0, 4
/* 010D4C 8001014C 01395021 */  addu  $t2, $t1, $t9
/* 010D50 80010150 3C04800E */  lui   $a0, %hi(D_800DC8D0)
/* 010D54 80010154 008A2021 */  addu  $a0, $a0, $t2
/* 010D58 80010158 0C026455 */  jal   segmented_to_virtual_dupe
/* 010D5C 8001015C 8C84C8D0 */   lw    $a0, %lo(D_800DC8D0)($a0)
/* 010D60 80010160 8FA40030 */  lw    $a0, 0x30($sp)
/* 010D64 80010164 0C00457D */  jal   process_path_data
/* 010D68 80010168 00402825 */   move  $a1, $v0
/* 010D6C 8001016C 8FAB0038 */  lw    $t3, 0x38($sp)
/* 010D70 80010170 3C018016 */  lui   $at, %hi(gWaypointCountByPathIndex) # 0x8016
/* 010D74 80010174 000B6040 */  sll   $t4, $t3, 1
/* 010D78 80010178 002C0821 */  addu  $at, $at, $t4
/* 010D7C 8001017C 10000022 */  b     .L80010208
/* 010D80 80010180 A42245C8 */   sh    $v0, %lo(gWaypointCountByPathIndex)($at) # 0x45c8($at)
.L80010184:
/* 010D84 80010184 00026900 */  sll   $t5, $v0, 4
/* 010D88 80010188 01A37021 */  addu  $t6, $t5, $v1
/* 010D8C 8001018C 3C04800E */  lui   $a0, %hi(gCoursePathTable)
/* 010D90 80010190 008E2021 */  addu  $a0, $a0, $t6
/* 010D94 80010194 8C84C780 */  lw    $a0, %lo(gCoursePathTable)($a0)
/* 010D98 80010198 0C026455 */  jal   segmented_to_virtual_dupe
/* 010D9C 8001019C A7A6001A */   sh    $a2, 0x1a($sp)
/* 010DA0 800101A0 AFA2002C */  sw    $v0, 0x2c($sp)
/* 010DA4 800101A4 00402025 */  move  $a0, $v0
/* 010DA8 800101A8 87A6001A */  lh    $a2, 0x1a($sp)
/* 010DAC 800101AC 34028000 */  li    $v0, 32768
/* 010DB0 800101B0 00001825 */  move  $v1, $zero
/* 010DB4 800101B4 24050BB8 */  li    $a1, 3000
.L800101B8:
/* 010DB8 800101B8 948F0000 */  lhu   $t7, ($a0)
/* 010DBC 800101BC 144F0004 */  bne   $v0, $t7, .L800101D0
/* 010DC0 800101C0 2478FFFF */   addiu $t8, $v1, -1
/* 010DC4 800101C4 AFB80024 */  sw    $t8, 0x24($sp)
/* 010DC8 800101C8 10000004 */  b     .L800101DC
/* 010DCC 800101CC 00003025 */   move  $a2, $zero
.L800101D0:
/* 010DD0 800101D0 24630001 */  addiu $v1, $v1, 1
/* 010DD4 800101D4 1465FFF8 */  bne   $v1, $a1, .L800101B8
/* 010DD8 800101D8 24840008 */   addiu $a0, $a0, 8
.L800101DC:
/* 010DDC 800101DC 14C0000A */  bnez  $a2, .L80010208
/* 010DE0 800101E0 8FA40030 */   lw    $a0, 0x30($sp)
/* 010DE4 800101E4 8FA5002C */  lw    $a1, 0x2c($sp)
/* 010DE8 800101E8 8FA60024 */  lw    $a2, 0x24($sp)
/* 010DEC 800101EC 0C004405 */  jal   func_80011014
/* 010DF0 800101F0 8FA70038 */   lw    $a3, 0x38($sp)
/* 010DF4 800101F4 8FB90038 */  lw    $t9, 0x38($sp)
/* 010DF8 800101F8 3C018016 */  lui   $at, %hi(gWaypointCountByPathIndex) # 0x8016
/* 010DFC 800101FC 00194040 */  sll   $t0, $t9, 1
/* 010E00 80010200 00280821 */  addu  $at, $at, $t0
/* 010E04 80010204 A42245C8 */  sh    $v0, %lo(gWaypointCountByPathIndex)($at) # 0x45c8($at)
.L80010208:
/* 010E08 80010208 8FBF0014 */  lw    $ra, 0x14($sp)
.L8001020C:
/* 010E0C 8001020C 27BD0038 */  addiu $sp, $sp, 0x38
/* 010E10 80010210 03E00008 */  jr    $ra
/* 010E14 80010214 00000000 */   nop   
