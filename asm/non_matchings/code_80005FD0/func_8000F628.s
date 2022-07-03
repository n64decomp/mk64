glabel func_8000F628
/* 010228 8000F628 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 01022C 8000F62C 3C0E8016 */  lui   $t6, %hi(D_80163210) # $t6, 0x8016
/* 010230 8000F630 3C0F8016 */  lui   $t7, %hi(gLapCountByPlayerId) # $t7, 0x8016
/* 010234 8000F634 25EF4390 */  addiu $t7, %lo(gLapCountByPlayerId) # addiu $t7, $t7, 0x4390
/* 010238 8000F638 25CE3210 */  addiu $t6, %lo(D_80163210) # addiu $t6, $t6, 0x3210
/* 01023C 8000F63C AFAE00D4 */  sw    $t6, 0xd4($sp)
/* 010240 8000F640 AFAF00D0 */  sw    $t7, 0xd0($sp)
/* 010244 8000F644 3C0F8016 */  lui   $t7, %hi(D_80163258) # $t7, 0x8016
/* 010248 8000F648 3C0E8016 */  lui   $t6, %hi(D_80164408) # $t6, 0x8016
/* 01024C 8000F64C 3C188016 */  lui   $t8, %hi(gCourseCompletionPercentByPlayerId) # $t8, 0x8016
/* 010250 8000F650 3C198016 */  lui   $t9, %hi(gTimePlayerLastTouchedFinishLine) # $t9, 0x8016
/* 010254 8000F654 2739F898 */  addiu $t9, %lo(gTimePlayerLastTouchedFinishLine) # addiu $t9, $t9, -0x768
/* 010258 8000F658 271844D0 */  addiu $t8, %lo(gCourseCompletionPercentByPlayerId) # addiu $t8, $t8, 0x44d0
/* 01025C 8000F65C 25CE4408 */  addiu $t6, %lo(D_80164408) # addiu $t6, $t6, 0x4408
/* 010260 8000F660 25EF3258 */  addiu $t7, %lo(D_80163258) # addiu $t7, $t7, 0x3258
/* 010264 8000F664 AFAF00B8 */  sw    $t7, 0xb8($sp)
/* 010268 8000F668 AFAE00BC */  sw    $t6, 0xbc($sp)
/* 01026C 8000F66C AFB800CC */  sw    $t8, 0xcc($sp)
/* 010270 8000F670 AFB900C8 */  sw    $t9, 0xc8($sp)
/* 010274 8000F674 3C198016 */  lui   $t9, %hi(D_801631E0) # $t9, 0x8016
/* 010278 8000F678 3C188016 */  lui   $t8, %hi(D_80163270) # $t8, 0x8016
/* 01027C 8000F67C 3C0E8016 */  lui   $t6, %hi(D_801631F8) # $t6, 0x8016
/* 010280 8000F680 3C0F8016 */  lui   $t7, %hi(D_80164450) # $t7, 0x8016
/* 010284 8000F684 25EF4450 */  addiu $t7, %lo(D_80164450) # addiu $t7, $t7, 0x4450
/* 010288 8000F688 25CE31F8 */  addiu $t6, %lo(D_801631F8) # addiu $t6, $t6, 0x31f8
/* 01028C 8000F68C 27183270 */  addiu $t8, %lo(D_80163270) # addiu $t8, $t8, 0x3270
/* 010290 8000F690 273931E0 */  addiu $t9, %lo(D_801631E0) # addiu $t9, $t9, 0x31e0
/* 010294 8000F694 AFB900B0 */  sw    $t9, 0xb0($sp)
/* 010298 8000F698 AFB800B4 */  sw    $t8, 0xb4($sp)
/* 01029C 8000F69C AFAE00AC */  sw    $t6, 0xac($sp)
/* 0102A0 8000F6A0 AFAF00A8 */  sw    $t7, 0xa8($sp)
/* 0102A4 8000F6A4 3C0F8016 */  lui   $t7, %hi(D_80163350) # $t7, 0x8016
/* 0102A8 8000F6A8 3C0E8016 */  lui   $t6, %hi(D_80163090) # $t6, 0x8016
/* 0102AC 8000F6AC 3C188016 */  lui   $t8, %hi(D_80163288) # $t8, 0x8016
/* 0102B0 8000F6B0 3C198016 */  lui   $t9, %hi(D_80163068) # $t9, 0x8016
/* 0102B4 8000F6B4 27393068 */  addiu $t9, %lo(D_80163068) # addiu $t9, $t9, 0x3068
/* 0102B8 8000F6B8 27183288 */  addiu $t8, %lo(D_80163288) # addiu $t8, $t8, 0x3288
/* 0102BC 8000F6BC 25CE3090 */  addiu $t6, %lo(D_80163090) # addiu $t6, $t6, 0x3090
/* 0102C0 8000F6C0 25EF3350 */  addiu $t7, %lo(D_80163350) # addiu $t7, $t7, 0x3350
/* 0102C4 8000F6C4 AFAF0090 */  sw    $t7, 0x90($sp)
/* 0102C8 8000F6C8 AFAE0098 */  sw    $t6, 0x98($sp)
/* 0102CC 8000F6CC AFB800A4 */  sw    $t8, 0xa4($sp)
/* 0102D0 8000F6D0 AFB9009C */  sw    $t9, 0x9c($sp)
/* 0102D4 8000F6D4 3C198016 */  lui   $t9, %hi(D_80163398) # $t9, 0x8016
/* 0102D8 8000F6D8 3C188016 */  lui   $t8, %hi(D_801644F8) # $t8, 0x8016
/* 0102DC 8000F6DC 3C0E8016 */  lui   $t6, %hi(D_801633B0) # $t6, 0x8016
/* 0102E0 8000F6E0 3C0F8016 */  lui   $t7, %hi(D_801633C8) # $t7, 0x8016
/* 0102E4 8000F6E4 25EF33C8 */  addiu $t7, %lo(D_801633C8) # addiu $t7, $t7, 0x33c8
/* 0102E8 8000F6E8 25CE33B0 */  addiu $t6, %lo(D_801633B0) # addiu $t6, $t6, 0x33b0
/* 0102EC 8000F6EC 271844F8 */  addiu $t8, %lo(D_801644F8) # addiu $t8, $t8, 0x44f8
/* 0102F0 8000F6F0 27393398 */  addiu $t9, %lo(D_80163398) # addiu $t9, $t9, 0x3398
/* 0102F4 8000F6F4 AFB90088 */  sw    $t9, 0x88($sp)
/* 0102F8 8000F6F8 AFB8008C */  sw    $t8, 0x8c($sp)
/* 0102FC 8000F6FC AFAE0084 */  sw    $t6, 0x84($sp)
/* 010300 8000F700 AFAF0080 */  sw    $t7, 0x80($sp)
/* 010304 8000F704 3C0F8016 */  lui   $t7, %hi(D_80163380) # $t7, 0x8016
/* 010308 8000F708 3C0E8016 */  lui   $t6, %hi(D_80163450) # $t6, 0x8016
/* 01030C 8000F70C 3C188016 */  lui   $t8, %hi(D_801633F8) # $t8, 0x8016
/* 010310 8000F710 3C198016 */  lui   $t9, %hi(D_80163318) # $t9, 0x8016
/* 010314 8000F714 27393318 */  addiu $t9, %lo(D_80163318) # addiu $t9, $t9, 0x3318
/* 010318 8000F718 271833F8 */  addiu $t8, %lo(D_801633F8) # addiu $t8, $t8, 0x33f8
/* 01031C 8000F71C 25CE3450 */  addiu $t6, %lo(D_80163450) # addiu $t6, $t6, 0x3450
/* 010320 8000F720 25EF3380 */  addiu $t7, %lo(D_80163380) # addiu $t7, $t7, 0x3380
/* 010324 8000F724 AFAF0070 */  sw    $t7, 0x70($sp)
/* 010328 8000F728 AFAE0074 */  sw    $t6, 0x74($sp)
/* 01032C 8000F72C AFB8007C */  sw    $t8, 0x7c($sp)
/* 010330 8000F730 AFB90078 */  sw    $t9, 0x78($sp)
/* 010334 8000F734 3C198016 */  lui   $t9, %hi(D_801634A8) # $t9, 0x8016
/* 010338 8000F738 3C188016 */  lui   $t8, %hi(D_80163490) # $t8, 0x8016
/* 01033C 8000F73C 3C0E8016 */  lui   $t6, %hi(D_80163128) # $t6, 0x8016
/* 010340 8000F740 3C0F8016 */  lui   $t7, %hi(D_80163150) # $t7, 0x8016
/* 010344 8000F744 25EF3150 */  addiu $t7, %lo(D_80163150) # addiu $t7, $t7, 0x3150
/* 010348 8000F748 25CE3128 */  addiu $t6, %lo(D_80163128) # addiu $t6, $t6, 0x3128
/* 01034C 8000F74C 27183490 */  addiu $t8, %lo(D_80163490) # addiu $t8, $t8, 0x3490
/* 010350 8000F750 273934A8 */  addiu $t9, %lo(D_801634A8) # addiu $t9, $t9, 0x34a8
/* 010354 8000F754 AFB90064 */  sw    $t9, 0x64($sp)
/* 010358 8000F758 AFB80068 */  sw    $t8, 0x68($sp)
/* 01035C 8000F75C AFAE0060 */  sw    $t6, 0x60($sp)
/* 010360 8000F760 AFAF005C */  sw    $t7, 0x5c($sp)
/* 010364 8000F764 AFBF0044 */  sw    $ra, 0x44($sp)
/* 010368 8000F768 AFB60038 */  sw    $s6, 0x38($sp)
/* 01036C 8000F76C AFB50034 */  sw    $s5, 0x34($sp)
/* 010370 8000F770 AFB40030 */  sw    $s4, 0x30($sp)
/* 010374 8000F774 AFB20028 */  sw    $s2, 0x28($sp)
/* 010378 8000F778 AFB10024 */  sw    $s1, 0x24($sp)
/* 01037C 8000F77C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 010380 8000F780 3C0F8016 */  lui   $t7, %hi(D_801630B8) # $t7, 0x8016
/* 010384 8000F784 3C0E8016 */  lui   $t6, %hi(D_801634D8) # $t6, 0x8016
/* 010388 8000F788 3C188016 */  lui   $t8, %hi(D_80164538) # $t8, 0x8016
/* 01038C 8000F78C 3C198016 */  lui   $t9, %hi(D_801634C0) # $t9, 0x8016
/* 010390 8000F790 AFBE0040 */  sw    $fp, 0x40($sp)
/* 010394 8000F794 AFB7003C */  sw    $s7, 0x3c($sp)
/* 010398 8000F798 AFB00020 */  sw    $s0, 0x20($sp)
/* 01039C 8000F79C 273934C0 */  addiu $t9, %lo(D_801634C0) # addiu $t9, $t9, 0x34c0
/* 0103A0 8000F7A0 27184538 */  addiu $t8, %lo(D_80164538) # addiu $t8, $t8, 0x4538
/* 0103A4 8000F7A4 25CE34D8 */  addiu $t6, %lo(D_801634D8) # addiu $t6, $t6, 0x34d8
/* 0103A8 8000F7A8 25EF30B8 */  addiu $t7, %lo(D_801630B8) # addiu $t7, $t7, 0x30b8
/* 0103AC 8000F7AC 3C11800F */  lui   $s1, %hi(gPlayers) # $s1, 0x800f
/* 0103B0 8000F7B0 3C128016 */  lui   $s2, %hi(D_80163330) # $s2, 0x8016
/* 0103B4 8000F7B4 3C148016 */  lui   $s4, %hi(gPlayerPositions) # $s4, 0x8016
/* 0103B8 8000F7B8 3C158016 */  lui   $s5, %hi(D_801634F8) # $s5, 0x8016
/* 0103BC 8000F7BC 3C168016 */  lui   $s6, %hi(D_801643E0) # $s6, 0x8016
/* 0103C0 8000F7C0 3C1F8016 */  lui   $ra, %hi(D_801631A0) # $ra, 0x8016
/* 0103C4 8000F7C4 3C078016 */  lui   $a3, %hi(D_80163050) # $a3, 0x8016
/* 0103C8 8000F7C8 3C088016 */  lui   $t0, %hi(D_80162FF8) # $t0, 0x8016
/* 0103CC 8000F7CC 3C098016 */  lui   $t1, %hi(D_80163010) # $t1, 0x8016
/* 0103D0 8000F7D0 3C0A8016 */  lui   $t2, %hi(D_80163028) # $t2, 0x8016
/* 0103D4 8000F7D4 3C0B8016 */  lui   $t3, %hi(D_801630E8) # $t3, 0x8016
/* 0103D8 8000F7D8 3C0C8016 */  lui   $t4, %hi(D_80163100) # $t4, 0x8016
/* 0103DC 8000F7DC 3C0D8016 */  lui   $t5, %hi(D_80163178) # $t5, 0x8016
/* 0103E0 8000F7E0 4480A000 */  mtc1  $zero, $f20
/* 0103E4 8000F7E4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0103E8 8000F7E8 25AD3178 */  addiu $t5, %lo(D_80163178) # addiu $t5, $t5, 0x3178
/* 0103EC 8000F7EC 258C3100 */  addiu $t4, %lo(D_80163100) # addiu $t4, $t4, 0x3100
/* 0103F0 8000F7F0 256B30E8 */  addiu $t3, %lo(D_801630E8) # addiu $t3, $t3, 0x30e8
/* 0103F4 8000F7F4 254A3028 */  addiu $t2, %lo(D_80163028) # addiu $t2, $t2, 0x3028
/* 0103F8 8000F7F8 25293010 */  addiu $t1, %lo(D_80163010) # addiu $t1, $t1, 0x3010
/* 0103FC 8000F7FC 25082FF8 */  addiu $t0, %lo(D_80162FF8) # addiu $t0, $t0, 0x2ff8
/* 010400 8000F800 24E73050 */  addiu $a3, %lo(D_80163050) # addiu $a3, $a3, 0x3050
/* 010404 8000F804 27FF31A0 */  addiu $ra, %lo(D_801631A0) # addiu $ra, $ra, 0x31a0
/* 010408 8000F808 26D643E0 */  addiu $s6, %lo(D_801643E0) # addiu $s6, $s6, 0x43e0
/* 01040C 8000F80C 26B534F8 */  addiu $s5, %lo(D_801634F8) # addiu $s5, $s5, 0x34f8
/* 010410 8000F810 269443B8 */  addiu $s4, %lo(gPlayerPositions) # addiu $s4, $s4, 0x43b8
/* 010414 8000F814 26523330 */  addiu $s2, %lo(D_80163330) # addiu $s2, $s2, 0x3330
/* 010418 8000F818 26316990 */  addiu $s1, %lo(gPlayers) # addiu $s1, $s1, 0x6990
/* 01041C 8000F81C AFAF004C */  sw    $t7, 0x4c($sp)
/* 010420 8000F820 AFAE0050 */  sw    $t6, 0x50($sp)
/* 010424 8000F824 AFB80058 */  sw    $t8, 0x58($sp)
/* 010428 8000F828 AFB90054 */  sw    $t9, 0x54($sp)
/* 01042C 8000F82C 00008025 */  move  $s0, $zero
/* 010430 8000F830 0000B825 */  move  $s7, $zero
/* 010434 8000F834 0000F025 */  move  $fp, $zero
.L8000F838:
/* 010438 8000F838 3C18800E */  lui   $t8, %hi(gPlayerOne)
/* 01043C 8000F83C 8F18C4DC */  lw    $t8, %lo(gPlayerOne)($t8)
/* 010440 8000F840 A4E00000 */  sh    $zero, ($a3)
/* 010444 8000F844 A5000000 */  sh    $zero, ($t0)
/* 010448 8000F848 A5200000 */  sh    $zero, ($t1)
/* 01044C 8000F84C 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 010450 8000F850 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 010454 8000F854 02F8C821 */  addu  $t9, $s7, $t8
/* 010458 8000F858 AFB90104 */  sw    $t9, 0x104($sp)
/* 01045C 8000F85C 28410014 */  slti  $at, $v0, 0x14
/* 010460 8000F860 10200017 */  beqz  $at, .L8000F8C0
/* 010464 8000F864 00000000 */   nop
/* 010468 8000F868 AFBF00D8 */  sw    $ra, 0xd8($sp)
/* 01046C 8000F86C 02002025 */  move  $a0, $s0
/* 010470 8000F870 00002825 */  move  $a1, $zero
/* 010474 8000F874 00003025 */  move  $a2, $zero
/* 010478 8000F878 AFA700F8 */  sw    $a3, 0xf8($sp)
/* 01047C 8000F87C AFA800F4 */  sw    $t0, 0xf4($sp)
/* 010480 8000F880 AFA900F0 */  sw    $t1, 0xf0($sp)
/* 010484 8000F884 AFAA00E8 */  sw    $t2, 0xe8($sp)
/* 010488 8000F888 AFAB00E4 */  sw    $t3, 0xe4($sp)
/* 01048C 8000F88C AFAC00E0 */  sw    $t4, 0xe0($sp)
/* 010490 8000F890 0C002E57 */  jal   func_8000B95C
/* 010494 8000F894 AFAD00DC */   sw    $t5, 0xdc($sp)
/* 010498 8000F898 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 01049C 8000F89C 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 0104A0 8000F8A0 8FA700F8 */  lw    $a3, 0xf8($sp)
/* 0104A4 8000F8A4 8FA800F4 */  lw    $t0, 0xf4($sp)
/* 0104A8 8000F8A8 8FA900F0 */  lw    $t1, 0xf0($sp)
/* 0104AC 8000F8AC 8FAA00E8 */  lw    $t2, 0xe8($sp)
/* 0104B0 8000F8B0 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 0104B4 8000F8B4 8FAC00E0 */  lw    $t4, 0xe0($sp)
/* 0104B8 8000F8B8 8FAD00DC */  lw    $t5, 0xdc($sp)
/* 0104BC 8000F8BC 8FBF00D8 */  lw    $ra, 0xd8($sp)
.L8000F8C0:
/* 0104C0 8000F8C0 3C0F800E */  lui   $t7, %hi(gCCSelection)
/* 0104C4 8000F8C4 8DEFC548 */  lw    $t7, %lo(gCCSelection)($t7)
/* 0104C8 8000F8C8 00027100 */  sll   $t6, $v0, 4
/* 0104CC 8000F8CC AFBF00D8 */  sw    $ra, 0xd8($sp)
/* 0104D0 8000F8D0 000FC080 */  sll   $t8, $t7, 2
/* 0104D4 8000F8D4 3C0F0D01 */  lui   $t7, %hi(D_0D009418) # $t7, 0xd01
/* 0104D8 8000F8D8 25EF9418 */  addiu $t7, %lo(D_0D009418) # addiu $t7, $t7, -0x6be8
/* 0104DC 8000F8DC 01D8C821 */  addu  $t9, $t6, $t8
/* 0104E0 8000F8E0 032F2021 */  addu  $a0, $t9, $t7
/* 0104E4 8000F8E4 AFA700F8 */  sw    $a3, 0xf8($sp)
/* 0104E8 8000F8E8 AFA800F4 */  sw    $t0, 0xf4($sp)
/* 0104EC 8000F8EC AFA900F0 */  sw    $t1, 0xf0($sp)
/* 0104F0 8000F8F0 AFAA00E8 */  sw    $t2, 0xe8($sp)
/* 0104F4 8000F8F4 AFAB00E4 */  sw    $t3, 0xe4($sp)
/* 0104F8 8000F8F8 AFAC00E0 */  sw    $t4, 0xe0($sp)
/* 0104FC 8000F8FC 0C026455 */  jal   segmented_to_virtual_dupe
/* 010500 8000F900 AFAD00DC */   sw    $t5, 0xdc($sp)
/* 010504 8000F904 C4440000 */  lwc1  $f4, ($v0)
/* 010508 8000F908 8FAA00E8 */  lw    $t2, 0xe8($sp)
/* 01050C 8000F90C 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 010510 8000F910 8FAC00E0 */  lw    $t4, 0xe0($sp)
/* 010514 8000F914 8FAD00DC */  lw    $t5, 0xdc($sp)
/* 010518 8000F918 8FBF00D8 */  lw    $ra, 0xd8($sp)
/* 01051C 8000F91C 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* 010520 8000F920 8FA700F8 */  lw    $a3, 0xf8($sp)
/* 010524 8000F924 8FA800F4 */  lw    $t0, 0xf4($sp)
/* 010528 8000F928 8FA900F0 */  lw    $t1, 0xf0($sp)
/* 01052C 8000F92C E5440000 */  swc1  $f4, ($t2)
/* 010530 8000F930 A5600000 */  sh    $zero, ($t3)
/* 010534 8000F934 AD800000 */  sw    $zero, ($t4)
/* 010538 8000F938 E5B40000 */  swc1  $f20, ($t5)
/* 01053C 8000F93C E7F40000 */  swc1  $f20, ($ra)
/* 010540 8000F940 E5D40000 */  swc1  $f20, ($t6)
/* 010544 8000F944 8FB900D0 */  lw    $t9, 0xd0($sp)
/* 010548 8000F948 2418FFFF */  li    $t8, -1
/* 01054C 8000F94C AF380000 */  sw    $t8, ($t9)
/* 010550 8000F950 8FAF00CC */  lw    $t7, 0xcc($sp)
/* 010554 8000F954 3C18800E */  lui   $t8, %hi(gModeSelection)
/* 010558 8000F958 E5F40000 */  swc1  $f20, ($t7)
/* 01055C 8000F95C 8FAE00C8 */  lw    $t6, 0xc8($sp)
/* 010560 8000F960 E5D40000 */  swc1  $f20, ($t6)
/* 010564 8000F964 8F18C53C */  lw    $t8, %lo(gModeSelection)($t8)
/* 010568 8000F968 17000007 */  bnez  $t8, .L8000F988
/* 01056C 8000F96C 3C198016 */   lui   $t9, %hi(D_80165270) # $t9, 0x8016
/* 010570 8000F970 27395270 */  addiu $t9, %lo(D_80165270) # addiu $t9, $t9, 0x5270
/* 010574 8000F974 03D91821 */  addu  $v1, $fp, $t9
/* 010578 8000F978 84620000 */  lh    $v0, ($v1)
/* 01057C 8000F97C AE820000 */  sw    $v0, ($s4)
/* 010580 8000F980 10000003 */  b     .L8000F990
/* 010584 8000F984 AEC20000 */   sw    $v0, ($s6)
.L8000F988:
/* 010588 8000F988 AE900000 */  sw    $s0, ($s4)
/* 01058C 8000F98C AED00000 */  sw    $s0, ($s6)
.L8000F990:
/* 010590 8000F990 8E820000 */  lw    $v0, ($s4)
/* 010594 8000F994 3C018016 */  lui   $at, %hi(gGPCurrentRacePlayerIdByRank) # 0x8016
/* 010598 8000F998 8FAF00BC */  lw    $t7, 0xbc($sp)
/* 01059C 8000F99C 00021840 */  sll   $v1, $v0, 1
/* 0105A0 8000F9A0 00230821 */  addu  $at, $at, $v1
/* 0105A4 8000F9A4 A4304360 */  sh    $s0, %lo(gGPCurrentRacePlayerIdByRank)($at) # 0x4360($at)
/* 0105A8 8000F9A8 3C018016 */  lui   $at, %hi(D_80164378) # 0x8016
/* 0105AC 8000F9AC 00230821 */  addu  $at, $at, $v1
/* 0105B0 8000F9B0 A4304378 */  sh    $s0, %lo(D_80164378)($at) # 0x4378($at)
/* 0105B4 8000F9B4 ADE20000 */  sw    $v0, ($t7)
/* 0105B8 8000F9B8 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 0105BC 8000F9BC 2405FFEC */  li    $a1, -20
/* 0105C0 8000F9C0 3C018016 */  lui   $at, %hi(D_80164478) # 0x8016
/* 0105C4 8000F9C4 A5C00000 */  sh    $zero, ($t6)
/* 0105C8 8000F9C8 8FB800B4 */  lw    $t8, 0xb4($sp)
/* 0105CC 8000F9CC 26130001 */  addiu $s3, $s0, 1
/* 0105D0 8000F9D0 02002025 */  move  $a0, $s0
/* 0105D4 8000F9D4 A7000000 */  sh    $zero, ($t8)
/* 0105D8 8000F9D8 8FB900B0 */  lw    $t9, 0xb0($sp)
/* 0105DC 8000F9DC A7200000 */  sh    $zero, ($t9)
/* 0105E0 8000F9E0 8FAF00AC */  lw    $t7, 0xac($sp)
/* 0105E4 8000F9E4 A5E00000 */  sh    $zero, ($t7)
/* 0105E8 8000F9E8 8FAE00A8 */  lw    $t6, 0xa8($sp)
/* 0105EC 8000F9EC ADC50000 */  sw    $a1, ($t6)
/* 0105F0 8000F9F0 8FB800A4 */  lw    $t8, 0xa4($sp)
/* 0105F4 8000F9F4 AF050000 */  sw    $a1, ($t8)
/* 0105F8 8000F9F8 96390254 */  lhu   $t9, 0x254($s1)
/* 0105FC 8000F9FC 8FAE009C */  lw    $t6, 0x9c($sp)
/* 010600 8000FA00 00197840 */  sll   $t7, $t9, 1
/* 010604 8000FA04 002F0821 */  addu  $at, $at, $t7
/* 010608 8000FA08 A4304478 */  sh    $s0, %lo(D_80164478)($at) # 0x4478($at)
/* 01060C 8000FA0C E5D40000 */  swc1  $f20, ($t6)
/* 010610 8000FA10 8FB80098 */  lw    $t8, 0x98($sp)
/* 010614 8000FA14 3C19800E */  lui   $t9, %hi(gCurrentCourseId)
/* 010618 8000FA18 3C01800E */  lui   $at, %hi(D_800DCAA0)
/* 01061C 8000FA1C E7140000 */  swc1  $f20, ($t8)
/* 010620 8000FA20 8739C5A0 */  lh    $t9, %lo(gCurrentCourseId)($t9)
/* 010624 8000FA24 AFBF00D8 */  sw    $ra, 0xd8($sp)
/* 010628 8000FA28 AFAD00DC */  sw    $t5, 0xdc($sp)
/* 01062C 8000FA2C 00197880 */  sll   $t7, $t9, 2
/* 010630 8000FA30 002F0821 */  addu  $at, $at, $t7
/* 010634 8000FA34 C426CAA0 */  lwc1  $f6, %lo(D_800DCAA0)($at)
/* 010638 8000FA38 24010003 */  li    $at, 3
/* 01063C 8000FA3C 0261001A */  div   $zero, $s3, $at
/* 010640 8000FA40 00007010 */  mfhi  $t6
/* 010644 8000FA44 25D8FFFF */  addiu $t8, $t6, -1
/* 010648 8000FA48 44984000 */  mtc1  $t8, $f8
/* 01064C 8000FA4C E6B40000 */  swc1  $f20, ($s5)
/* 010650 8000FA50 3C01800F */  lui   $at, %hi(D_800ED050) # $at, 0x800f
/* 010654 8000FA54 468042A0 */  cvt.s.w $f10, $f8
/* 010658 8000FA58 AFAC00E0 */  sw    $t4, 0xe0($sp)
/* 01065C 8000FA5C AFAB00E4 */  sw    $t3, 0xe4($sp)
/* 010660 8000FA60 AFAA00E8 */  sw    $t2, 0xe8($sp)
/* 010664 8000FA64 AFA900F0 */  sw    $t1, 0xf0($sp)
/* 010668 8000FA68 AFA800F4 */  sw    $t0, 0xf4($sp)
/* 01066C 8000FA6C 460A3002 */  mul.s $f0, $f6, $f10
/* 010670 8000FA70 AFA700F8 */  sw    $a3, 0xf8($sp)
/* 010674 8000FA74 E6A0000C */  swc1  $f0, 0xc($s5)
/* 010678 8000FA78 E6A00004 */  swc1  $f0, 4($s5)
/* 01067C 8000FA7C C430D050 */  lwc1  $f16, %lo(D_800ED050)($at)
/* 010680 8000FA80 0C0046AE */  jal   func_80011AB8
/* 010684 8000FA84 E6B00008 */   swc1  $f16, 8($s5)
/* 010688 8000FA88 8FB90090 */  lw    $t9, 0x90($sp)
/* 01068C 8000FA8C 8FA700F8 */  lw    $a3, 0xf8($sp)
/* 010690 8000FA90 8FA800F4 */  lw    $t0, 0xf4($sp)
/* 010694 8000FA94 8FA900F0 */  lw    $t1, 0xf0($sp)
/* 010698 8000FA98 8FAA00E8 */  lw    $t2, 0xe8($sp)
/* 01069C 8000FA9C 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 0106A0 8000FAA0 8FAC00E0 */  lw    $t4, 0xe0($sp)
/* 0106A4 8000FAA4 8FAD00DC */  lw    $t5, 0xdc($sp)
/* 0106A8 8000FAA8 8FBF00D8 */  lw    $ra, 0xd8($sp)
/* 0106AC 8000FAAC A7200000 */  sh    $zero, ($t9)
/* 0106B0 8000FAB0 8FAF008C */  lw    $t7, 0x8c($sp)
/* 0106B4 8000FAB4 02608025 */  move  $s0, $s3
/* 0106B8 8000FAB8 2A610008 */  slti  $at, $s3, 8
/* 0106BC 8000FABC A5E00000 */  sh    $zero, ($t7)
/* 0106C0 8000FAC0 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0106C4 8000FAC4 3C138019 */  lui   $s3, %hi(D_8018EE08) # $s3, 0x8019
/* 0106C8 8000FAC8 26F70DD8 */  addiu $s7, $s7, 0xdd8
/* 0106CC 8000FACC A5C00000 */  sh    $zero, ($t6)
/* 0106D0 8000FAD0 8FB80084 */  lw    $t8, 0x84($sp)
/* 0106D4 8000FAD4 27DE0002 */  addiu $fp, $fp, 2
/* 0106D8 8000FAD8 26940004 */  addiu $s4, $s4, 4
/* 0106DC 8000FADC A7000000 */  sh    $zero, ($t8)
/* 0106E0 8000FAE0 8FB90080 */  lw    $t9, 0x80($sp)
/* 0106E4 8000FAE4 26D60004 */  addiu $s6, $s6, 4
/* 0106E8 8000FAE8 26310DD8 */  addiu $s1, $s1, 0xdd8
/* 0106EC 8000FAEC A7200000 */  sh    $zero, ($t9)
/* 0106F0 8000FAF0 8FAF007C */  lw    $t7, 0x7c($sp)
/* 0106F4 8000FAF4 26B50010 */  addiu $s5, $s5, 0x10
/* 0106F8 8000FAF8 2402FFFF */  li    $v0, -1
/* 0106FC 8000FAFC A5E00000 */  sh    $zero, ($t7)
/* 010700 8000FB00 8FAE0078 */  lw    $t6, 0x78($sp)
/* 010704 8000FB04 240F0006 */  li    $t7, 6
/* 010708 8000FB08 2673EE08 */  addiu $s3, %lo(D_8018EE08) # addiu $s3, $s3, -0x11f8
/* 01070C 8000FB0C A5C00000 */  sh    $zero, ($t6)
/* 010710 8000FB10 8FB80104 */  lw    $t8, 0x104($sp)
/* 010714 8000FB14 8FB90074 */  lw    $t9, 0x74($sp)
/* 010718 8000FB18 24E70002 */  addiu $a3, $a3, 2
/* 01071C 8000FB1C C712001C */  lwc1  $f18, 0x1c($t8)
/* 010720 8000FB20 25080002 */  addiu $t0, $t0, 2
/* 010724 8000FB24 25290002 */  addiu $t1, $t1, 2
/* 010728 8000FB28 E7320000 */  swc1  $f18, ($t9)
/* 01072C 8000FB2C 8FAE0070 */  lw    $t6, 0x70($sp)
/* 010730 8000FB30 254A0004 */  addiu $t2, $t2, 4
/* 010734 8000FB34 256B0002 */  addiu $t3, $t3, 2
/* 010738 8000FB38 A5CF0000 */  sh    $t7, ($t6)
/* 01073C 8000FB3C 9638F228 */  lhu   $t8, -0xdd8($s1)
/* 010740 8000FB40 258C0004 */  addiu $t4, $t4, 4
/* 010744 8000FB44 25AD0004 */  addiu $t5, $t5, 4
/* 010748 8000FB48 33194000 */  andi  $t9, $t8, 0x4000
/* 01074C 8000FB4C 13200004 */  beqz  $t9, .L8000FB60
/* 010750 8000FB50 27FF0004 */   addiu $ra, $ra, 4
/* 010754 8000FB54 240F0003 */  li    $t7, 3
/* 010758 8000FB58 10000002 */  b     .L8000FB64
/* 01075C 8000FB5C A64F0000 */   sh    $t7, ($s2)
.L8000FB60:
/* 010760 8000FB60 A6400000 */  sh    $zero, ($s2)
.L8000FB64:
/* 010764 8000FB64 8FAE0068 */  lw    $t6, 0x68($sp)
/* 010768 8000FB68 8FA3004C */  lw    $v1, 0x4c($sp)
/* 01076C 8000FB6C 8FA40050 */  lw    $a0, 0x50($sp)
/* 010770 8000FB70 8FA50054 */  lw    $a1, 0x54($sp)
/* 010774 8000FB74 8FA60058 */  lw    $a2, 0x58($sp)
/* 010778 8000FB78 A5C00000 */  sh    $zero, ($t6)
/* 01077C 8000FB7C 8FB80064 */  lw    $t8, 0x64($sp)
/* 010780 8000FB80 240E0001 */  li    $t6, 1
/* 010784 8000FB84 24630004 */  addiu $v1, $v1, 4
/* 010788 8000FB88 A7000000 */  sh    $zero, ($t8)
/* 01078C 8000FB8C 8FB90060 */  lw    $t9, 0x60($sp)
/* 010790 8000FB90 24840002 */  addiu $a0, $a0, 2
/* 010794 8000FB94 24A50002 */  addiu $a1, $a1, 2
/* 010798 8000FB98 AF220000 */  sw    $v0, ($t9)
/* 01079C 8000FB9C 8FAF005C */  lw    $t7, 0x5c($sp)
/* 0107A0 8000FBA0 24C60002 */  addiu $a2, $a2, 2
/* 0107A4 8000FBA4 26520002 */  addiu $s2, $s2, 2
/* 0107A8 8000FBA8 ADE20000 */  sw    $v0, ($t7)
/* 0107AC 8000FBAC 8FAF00D0 */  lw    $t7, 0xd0($sp)
/* 0107B0 8000FBB0 8FB800D4 */  lw    $t8, 0xd4($sp)
/* 0107B4 8000FBB4 AC6EFFFC */  sw    $t6, -4($v1)
/* 0107B8 8000FBB8 25EE0004 */  addiu $t6, $t7, 4
/* 0107BC 8000FBBC 27190004 */  addiu $t9, $t8, 4
/* 0107C0 8000FBC0 8FB800CC */  lw    $t8, 0xcc($sp)
/* 0107C4 8000FBC4 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* 0107C8 8000FBC8 AFB900D4 */  sw    $t9, 0xd4($sp)
/* 0107CC 8000FBCC AFAE00D0 */  sw    $t6, 0xd0($sp)
/* 0107D0 8000FBD0 27190004 */  addiu $t9, $t8, 4
/* 0107D4 8000FBD4 25EE0004 */  addiu $t6, $t7, 4
/* 0107D8 8000FBD8 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 0107DC 8000FBDC 8FB800BC */  lw    $t8, 0xbc($sp)
/* 0107E0 8000FBE0 AFAE00C8 */  sw    $t6, 0xc8($sp)
/* 0107E4 8000FBE4 AFB900CC */  sw    $t9, 0xcc($sp)
/* 0107E8 8000FBE8 25EE0002 */  addiu $t6, $t7, 2
/* 0107EC 8000FBEC 27190004 */  addiu $t9, $t8, 4
/* 0107F0 8000FBF0 8FB800B4 */  lw    $t8, 0xb4($sp)
/* 0107F4 8000FBF4 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 0107F8 8000FBF8 AFB900BC */  sw    $t9, 0xbc($sp)
/* 0107FC 8000FBFC AFAE00B8 */  sw    $t6, 0xb8($sp)
/* 010800 8000FC00 27190002 */  addiu $t9, $t8, 2
/* 010804 8000FC04 25EE0002 */  addiu $t6, $t7, 2
/* 010808 8000FC08 8FAF00A8 */  lw    $t7, 0xa8($sp)
/* 01080C 8000FC0C 8FB800AC */  lw    $t8, 0xac($sp)
/* 010810 8000FC10 AFAE00B0 */  sw    $t6, 0xb0($sp)
/* 010814 8000FC14 AFB900B4 */  sw    $t9, 0xb4($sp)
/* 010818 8000FC18 25EE0004 */  addiu $t6, $t7, 4
/* 01081C 8000FC1C 27190002 */  addiu $t9, $t8, 2
/* 010820 8000FC20 8FB800A4 */  lw    $t8, 0xa4($sp)
/* 010824 8000FC24 8FAF009C */  lw    $t7, 0x9c($sp)
/* 010828 8000FC28 AFB900AC */  sw    $t9, 0xac($sp)
/* 01082C 8000FC2C AFAE00A8 */  sw    $t6, 0xa8($sp)
/* 010830 8000FC30 27190004 */  addiu $t9, $t8, 4
/* 010834 8000FC34 25EE0004 */  addiu $t6, $t7, 4
/* 010838 8000FC38 8FAF0090 */  lw    $t7, 0x90($sp)
/* 01083C 8000FC3C 8FB80098 */  lw    $t8, 0x98($sp)
/* 010840 8000FC40 AFAE009C */  sw    $t6, 0x9c($sp)
/* 010844 8000FC44 AFB900A4 */  sw    $t9, 0xa4($sp)
/* 010848 8000FC48 25EE0002 */  addiu $t6, $t7, 2
/* 01084C 8000FC4C 27190004 */  addiu $t9, $t8, 4
/* 010850 8000FC50 8FB8008C */  lw    $t8, 0x8c($sp)
/* 010854 8000FC54 8FAF0088 */  lw    $t7, 0x88($sp)
/* 010858 8000FC58 AFB90098 */  sw    $t9, 0x98($sp)
/* 01085C 8000FC5C AFAE0090 */  sw    $t6, 0x90($sp)
/* 010860 8000FC60 27190002 */  addiu $t9, $t8, 2
/* 010864 8000FC64 25EE0002 */  addiu $t6, $t7, 2
/* 010868 8000FC68 8FAF0080 */  lw    $t7, 0x80($sp)
/* 01086C 8000FC6C 8FB80084 */  lw    $t8, 0x84($sp)
/* 010870 8000FC70 AFAE0088 */  sw    $t6, 0x88($sp)
/* 010874 8000FC74 AFB9008C */  sw    $t9, 0x8c($sp)
/* 010878 8000FC78 25EE0002 */  addiu $t6, $t7, 2
/* 01087C 8000FC7C 27190002 */  addiu $t9, $t8, 2
/* 010880 8000FC80 8FB8007C */  lw    $t8, 0x7c($sp)
/* 010884 8000FC84 8FAF0078 */  lw    $t7, 0x78($sp)
/* 010888 8000FC88 AFB90084 */  sw    $t9, 0x84($sp)
/* 01088C 8000FC8C AFAE0080 */  sw    $t6, 0x80($sp)
/* 010890 8000FC90 27190002 */  addiu $t9, $t8, 2
/* 010894 8000FC94 25EE0002 */  addiu $t6, $t7, 2
/* 010898 8000FC98 8FAF0070 */  lw    $t7, 0x70($sp)
/* 01089C 8000FC9C 8FB80074 */  lw    $t8, 0x74($sp)
/* 0108A0 8000FCA0 AFAE0078 */  sw    $t6, 0x78($sp)
/* 0108A4 8000FCA4 AFB9007C */  sw    $t9, 0x7c($sp)
/* 0108A8 8000FCA8 25EE0002 */  addiu $t6, $t7, 2
/* 0108AC 8000FCAC 27190004 */  addiu $t9, $t8, 4
/* 0108B0 8000FCB0 8FB80068 */  lw    $t8, 0x68($sp)
/* 0108B4 8000FCB4 8FAF0064 */  lw    $t7, 0x64($sp)
/* 0108B8 8000FCB8 AFB90074 */  sw    $t9, 0x74($sp)
/* 0108BC 8000FCBC AFAE0070 */  sw    $t6, 0x70($sp)
/* 0108C0 8000FCC0 27190002 */  addiu $t9, $t8, 2
/* 0108C4 8000FCC4 25EE0002 */  addiu $t6, $t7, 2
/* 0108C8 8000FCC8 8FAF005C */  lw    $t7, 0x5c($sp)
/* 0108CC 8000FCCC 8FB80060 */  lw    $t8, 0x60($sp)
/* 0108D0 8000FCD0 AFAE0064 */  sw    $t6, 0x64($sp)
/* 0108D4 8000FCD4 AFB90068 */  sw    $t9, 0x68($sp)
/* 0108D8 8000FCD8 25EE0004 */  addiu $t6, $t7, 4
/* 0108DC 8000FCDC 27190004 */  addiu $t9, $t8, 4
/* 0108E0 8000FCE0 AFB90060 */  sw    $t9, 0x60($sp)
/* 0108E4 8000FCE4 AFAE005C */  sw    $t6, 0x5c($sp)
/* 0108E8 8000FCE8 AFA60058 */  sw    $a2, 0x58($sp)
/* 0108EC 8000FCEC AFA50054 */  sw    $a1, 0x54($sp)
/* 0108F0 8000FCF0 AFA40050 */  sw    $a0, 0x50($sp)
/* 0108F4 8000FCF4 AFA3004C */  sw    $v1, 0x4c($sp)
/* 0108F8 8000FCF8 A480FFFE */  sh    $zero, -2($a0)
/* 0108FC 8000FCFC A4A0FFFE */  sh    $zero, -2($a1)
/* 010900 8000FD00 1420FECD */  bnez  $at, .L8000F838
/* 010904 8000FD04 A4C2FFFE */   sh    $v0, -2($a2)
/* 010908 8000FD08 3C15800E */  lui   $s5, %hi(D_800DC51C)
/* 01090C 8000FD0C 26B5C51C */  addiu $s5, %lo(D_800DC51C) # addiu $s5, $s5, -0x3ae4
/* 010910 8000FD10 96B80000 */  lhu   $t8, ($s5)
/* 010914 8000FD14 3C028016 */  lui   $v0, %hi(D_801637BC) # $v0, 0x8016
/* 010918 8000FD18 244237BC */  addiu $v0, %lo(D_801637BC) # addiu $v0, $v0, 0x37bc
/* 01091C 8000FD1C A4400000 */  sh    $zero, ($v0)
/* 010920 8000FD20 17000020 */  bnez  $t8, .L8000FDA4
/* 010924 8000FD24 A4400002 */   sh    $zero, 2($v0)
/* 010928 8000FD28 3C19800E */  lui   $t9, %hi(gModeSelection)
/* 01092C 8000FD2C 8F39C53C */  lw    $t9, %lo(gModeSelection)($t9)
/* 010930 8000FD30 3C028016 */  lui   $v0, %hi(D_80163344) # $v0, 0x8016
/* 010934 8000FD34 24423344 */  addiu $v0, %lo(D_80163344) # addiu $v0, $v0, 0x3344
/* 010938 8000FD38 1720001A */  bnez  $t9, .L8000FDA4
/* 01093C 8000FD3C 00008025 */   move  $s0, $zero
/* 010940 8000FD40 3C048016 */  lui   $a0, %hi(D_80163348) # $a0, 0x8016
/* 010944 8000FD44 3C088016 */  lui   $t0, %hi(D_8016334C) # $t0, 0x8016
/* 010948 8000FD48 3C068016 */  lui   $a2, %hi(D_80163330) # $a2, 0x8016
/* 01094C 8000FD4C 3C058016 */  lui   $a1, %hi(D_80164478) # $a1, 0x8016
/* 010950 8000FD50 24A54478 */  addiu $a1, %lo(D_80164478) # addiu $a1, $a1, 0x4478
/* 010954 8000FD54 24C63330 */  addiu $a2, %lo(D_80163330) # addiu $a2, $a2, 0x3330
/* 010958 8000FD58 2508334C */  addiu $t0, %lo(D_8016334C) # addiu $t0, $t0, 0x334c
/* 01095C 8000FD5C 24843348 */  addiu $a0, %lo(D_80163348) # addiu $a0, $a0, 0x3348
/* 010960 8000FD60 24090002 */  li    $t1, 2
/* 010964 8000FD64 24070001 */  li    $a3, 1
.L8000FD68:
/* 010968 8000FD68 948F0000 */  lhu   $t7, ($a0)
/* 01096C 8000FD6C 24420002 */  addiu $v0, $v0, 2
/* 010970 8000FD70 24840002 */  addiu $a0, $a0, 2
/* 010974 8000FD74 000F7040 */  sll   $t6, $t7, 1
/* 010978 8000FD78 00AEC021 */  addu  $t8, $a1, $t6
/* 01097C 8000FD7C 87190000 */  lh    $t9, ($t8)
/* 010980 8000FD80 3323FFFF */  andi  $v1, $t9, 0xffff
/* 010984 8000FD84 00037840 */  sll   $t7, $v1, 1
/* 010988 8000FD88 00CF7021 */  addu  $t6, $a2, $t7
/* 01098C 8000FD8C A5C70000 */  sh    $a3, ($t6)
/* 010990 8000FD90 010FC021 */  addu  $t8, $t0, $t7
/* 010994 8000FD94 A7100000 */  sh    $s0, ($t8)
/* 010998 8000FD98 26100001 */  addiu $s0, $s0, 1
/* 01099C 8000FD9C 1609FFF2 */  bne   $s0, $t1, .L8000FD68
/* 0109A0 8000FDA0 A459FFFE */   sh    $t9, -2($v0)
.L8000FDA4:
/* 0109A4 8000FDA4 82790000 */  lb    $t9, ($s3)
/* 0109A8 8000FDA8 3C068016 */  lui   $a2, %hi(D_80163330) # $a2, 0x8016
/* 0109AC 8000FDAC 3C088016 */  lui   $t0, %hi(D_8016334C) # $t0, 0x8016
/* 0109B0 8000FDB0 24110001 */  li    $s1, 1
/* 0109B4 8000FDB4 2508334C */  addiu $t0, %lo(D_8016334C) # addiu $t0, $t0, 0x334c
/* 0109B8 8000FDB8 24C63330 */  addiu $a2, %lo(D_80163330) # addiu $a2, $a2, 0x3330
/* 0109BC 8000FDBC 24070001 */  li    $a3, 1
/* 0109C0 8000FDC0 1639002C */  bne   $s1, $t9, .L8000FE74
/* 0109C4 8000FDC4 24090002 */   li    $t1, 2
/* 0109C8 8000FDC8 3C0F800E */  lui   $t7, %hi(gCurrentCourseId)
/* 0109CC 8000FDCC 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 0109D0 8000FDD0 24010014 */  li    $at, 20
/* 0109D4 8000FDD4 3C03800E */  lui   $v1, %hi(gModeSelection)
/* 0109D8 8000FDD8 11E10026 */  beq   $t7, $at, .L8000FE74
/* 0109DC 8000FDDC 3C128016 */   lui   $s2, %hi(D_80163330) # $s2, 0x8016
/* 0109E0 8000FDE0 3C028016 */  lui   $v0, %hi(D_80163340) # $v0, 0x8016
/* 0109E4 8000FDE4 24423340 */  addiu $v0, %lo(D_80163340) # addiu $v0, $v0, 0x3340
/* 0109E8 8000FDE8 8C63C53C */  lw    $v1, %lo(gModeSelection)($v1)
/* 0109EC 8000FDEC 26523330 */  addiu $s2, %lo(D_80163330) # addiu $s2, $s2, 0x3330
.L8000FDF0:
/* 0109F0 8000FDF0 26520002 */  addiu $s2, $s2, 2
/* 0109F4 8000FDF4 0242082B */  sltu  $at, $s2, $v0
/* 0109F8 8000FDF8 1420FFFD */  bnez  $at, .L8000FDF0
/* 0109FC 8000FDFC A640FFFE */   sh    $zero, -2($s2)
/* 010A00 8000FE00 1523001C */  bne   $t1, $v1, .L8000FE74
/* 010A04 8000FE04 3C058016 */   lui   $a1, %hi(D_80163344) # $a1, 0x8016
/* 010A08 8000FE08 3C0E8016 */  lui   $t6, %hi(cameras+0xAE) # $t6, 0x8016
/* 010A0C 8000FE0C 85CE479E */  lh    $t6, %lo(cameras+0xAE)($t6)
/* 010A10 8000FE10 24A53344 */  addiu $a1, %lo(D_80163344) # addiu $a1, $a1, 0x3344
/* 010A14 8000FE14 3C028016 */  lui   $v0, %hi(D_80163346) # $v0, 0x8016
/* 010A18 8000FE18 31C3FFFF */  andi  $v1, $t6, 0xffff
/* 010A1C 8000FE1C 0003C040 */  sll   $t8, $v1, 1
/* 010A20 8000FE20 00D8C821 */  addu  $t9, $a2, $t8
/* 010A24 8000FE24 A7270000 */  sh    $a3, ($t9)
/* 010A28 8000FE28 01187821 */  addu  $t7, $t0, $t8
/* 010A2C 8000FE2C 3C048016 */  lui   $a0, %hi(cameras+0xB8) # $a0, 0x8016
/* 010A30 8000FE30 A5E00000 */  sh    $zero, ($t7)
/* 010A34 8000FE34 248447A8 */  addiu $a0, %lo(cameras+0xB8) # addiu $a0, $a0, 0x47a8
/* 010A38 8000FE38 24423346 */  addiu $v0, %lo(D_80163346) # addiu $v0, $v0, 0x3346
/* 010A3C 8000FE3C 02208025 */  move  $s0, $s1
/* 010A40 8000FE40 A4AE0000 */  sh    $t6, ($a1)
.L8000FE44:
/* 010A44 8000FE44 848E00AE */  lh    $t6, 0xae($a0)
/* 010A48 8000FE48 24420002 */  addiu $v0, $v0, 2
/* 010A4C 8000FE4C 248400B8 */  addiu $a0, $a0, 0xb8
/* 010A50 8000FE50 31C3FFFF */  andi  $v1, $t6, 0xffff
/* 010A54 8000FE54 0003C040 */  sll   $t8, $v1, 1
/* 010A58 8000FE58 00D8C821 */  addu  $t9, $a2, $t8
/* 010A5C 8000FE5C A7270000 */  sh    $a3, ($t9)
/* 010A60 8000FE60 01187821 */  addu  $t7, $t0, $t8
/* 010A64 8000FE64 A5F00000 */  sh    $s0, ($t7)
/* 010A68 8000FE68 26100001 */  addiu $s0, $s0, 1
/* 010A6C 8000FE6C 1609FFF5 */  bne   $s0, $t1, .L8000FE44
/* 010A70 8000FE70 A44EFFFE */   sh    $t6, -2($v0)
.L8000FE74:
/* 010A74 8000FE74 3C148016 */  lui   $s4, %hi(gPlayerPositions) # $s4, 0x8016
/* 010A78 8000FE78 3C028016 */  lui   $v0, %hi(gPathIndexByPlayerId) # $v0, 0x8016
/* 010A7C 8000FE7C 3C038016 */  lui   $v1, %hi(gNearestWaypointByPlayerId) # $v1, 0x8016
/* 010A80 8000FE80 3C058016 */  lui   $a1, %hi(D_80164448) # $a1, 0x8016
/* 010A84 8000FE84 3C048016 */  lui   $a0, %hi(gWaypointCountByPathIndex) # $a0, 0x8016
/* 010A88 8000FE88 248445C8 */  addiu $a0, %lo(gWaypointCountByPathIndex) # addiu $a0, $a0, 0x45c8
/* 010A8C 8000FE8C 24A54448 */  addiu $a1, %lo(D_80164448) # addiu $a1, $a1, 0x4448
/* 010A90 8000FE90 24634438 */  addiu $v1, %lo(gNearestWaypointByPlayerId) # addiu $v1, $v1, 0x4438
/* 010A94 8000FE94 244245B0 */  addiu $v0, %lo(gPathIndexByPlayerId) # addiu $v0, $v0, 0x45b0
/* 010A98 8000FE98 269443B8 */  addiu $s4, %lo(gPlayerPositions) # addiu $s4, $s4, 0x43b8
.L8000FE9C:
/* 010A9C 8000FE9C 300EFFFF */  andi  $t6, $zero, 0xffff
/* 010AA0 8000FEA0 000EC040 */  sll   $t8, $t6, 1
/* 010AA4 8000FEA4 0098C821 */  addu  $t9, $a0, $t8
/* 010AA8 8000FEA8 972F0000 */  lhu   $t7, ($t9)
/* 010AAC 8000FEAC 8E8E0000 */  lw    $t6, ($s4)
/* 010AB0 8000FEB0 24630002 */  addiu $v1, $v1, 2
/* 010AB4 8000FEB4 0065082B */  sltu  $at, $v1, $a1
/* 010AB8 8000FEB8 01EEC023 */  subu  $t8, $t7, $t6
/* 010ABC 8000FEBC 2719FFFC */  addiu $t9, $t8, -4
/* 010AC0 8000FEC0 26940004 */  addiu $s4, $s4, 4
/* 010AC4 8000FEC4 24420002 */  addiu $v0, $v0, 2
/* 010AC8 8000FEC8 A440FFFE */  sh    $zero, -2($v0)
/* 010ACC 8000FECC 1420FFF3 */  bnez  $at, .L8000FE9C
/* 010AD0 8000FED0 A479FFFE */   sh    $t9, -2($v1)
/* 010AD4 8000FED4 3C028016 */  lui   $v0, %hi(D_8016347A) # $v0, 0x8016
/* 010AD8 8000FED8 2442347A */  addiu $v0, %lo(D_8016347A) # addiu $v0, $v0, 0x347a
/* 010ADC 8000FEDC A4400000 */  sh    $zero, ($v0)
/* 010AE0 8000FEE0 3C0F800E */  lui   $t7, %hi(gCCSelection)
/* 010AE4 8000FEE4 8DEFC548 */  lw    $t7, %lo(gCCSelection)($t7)
/* 010AE8 8000FEE8 24010003 */  li    $at, 3
/* 010AEC 8000FEEC 3C038016 */  lui   $v1, %hi(D_80162F10) # $v1, 0x8016
/* 010AF0 8000FEF0 15E10002 */  bne   $t7, $at, .L8000FEFC
/* 010AF4 8000FEF4 24632F10 */   addiu $v1, %lo(D_80162F10) # addiu $v1, $v1, 0x2f10
/* 010AF8 8000FEF8 A4510000 */  sh    $s1, ($v0)
.L8000FEFC:
/* 010AFC 8000FEFC 3C028016 */  lui   $v0, %hi(D_80162F50) # $v0, 0x8016
/* 010B00 8000FF00 3C048016 */  lui   $a0, %hi(D_80162F8C) # $a0, 0x8016
/* 010B04 8000FF04 24842F8C */  addiu $a0, %lo(D_80162F8C) # addiu $a0, $a0, 0x2f8c
/* 010B08 8000FF08 24422F50 */  addiu $v0, %lo(D_80162F50) # addiu $v0, $v0, 0x2f50
/* 010B0C 8000FF0C 2405FFFF */  li    $a1, -1
.L8000FF10:
/* 010B10 8000FF10 24420002 */  addiu $v0, $v0, 2
/* 010B14 8000FF14 0044082B */  sltu  $at, $v0, $a0
/* 010B18 8000FF18 24630002 */  addiu $v1, $v1, 2
/* 010B1C 8000FF1C A465FFFE */  sh    $a1, -2($v1)
/* 010B20 8000FF20 1420FFFB */  bnez  $at, .L8000FF10
/* 010B24 8000FF24 A445FFFE */   sh    $a1, -2($v0)
/* 010B28 8000FF28 3C0E0001 */  lui   $t6, (0x000186A0 >> 16) # lui $t6, 1
/* 010B2C 8000FF2C 35CE86A0 */  ori   $t6, (0x000186A0 & 0xFFFF) # ori $t6, $t6, 0x86a0
/* 010B30 8000FF30 3C018016 */  lui   $at, %hi(D_801631CC) # $at, 0x8016
/* 010B34 8000FF34 AC2E31CC */  sw    $t6, %lo(D_801631CC)($at)
/* 010B38 8000FF38 3C018016 */  lui   $at, %hi(D_80164698) # $at, 0x8016
/* 010B3C 8000FF3C E4344698 */  swc1  $f20, %lo(D_80164698)($at)
/* 010B40 8000FF40 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 010B44 8000FF44 44812000 */  mtc1  $at, $f4
/* 010B48 8000FF48 3C018016 */  lui   $at, %hi(D_8016469C) # $at, 0x8016
/* 010B4C 8000FF4C 3C188016 */  lui   $t8, %hi(D_80164550) # $t8, 0x8016
/* 010B50 8000FF50 E424469C */  swc1  $f4, %lo(D_8016469C)($at)
/* 010B54 8000FF54 3C018016 */  lui   $at, %hi(D_801646A0) # $at, 0x8016
/* 010B58 8000FF58 E43446A0 */  swc1  $f20, %lo(D_801646A0)($at)
/* 010B5C 8000FF5C 3C018016 */  lui   $at, %hi(D_80164358) # $at, 0x8016
/* 010B60 8000FF60 A4204358 */  sh    $zero, %lo(D_80164358)($at)
/* 010B64 8000FF64 3C018016 */  lui   $at, %hi(D_8016435A) # $at, 0x8016
/* 010B68 8000FF68 A431435A */  sh    $s1, %lo(D_8016435A)($at)
/* 010B6C 8000FF6C 3C018016 */  lui   $at, %hi(D_8016435C) # $at, 0x8016
/* 010B70 8000FF70 A431435C */  sh    $s1, %lo(D_8016435C)($at)
/* 010B74 8000FF74 3C018016 */  lui   $at, %hi(D_80163478) # $at, 0x8016
/* 010B78 8000FF78 A4203478 */  sh    $zero, %lo(D_80163478)($at)
/* 010B7C 8000FF7C 3C018016 */  lui   $at, %hi(D_80163378) # $at, 0x8016
/* 010B80 8000FF80 8F184550 */  lw    $t8, %lo(D_80164550)($t8)
/* 010B84 8000FF84 AC203378 */  sw    $zero, %lo(D_80163378)($at)
/* 010B88 8000FF88 3C018016 */  lui   $at, %hi(D_8016337C) # $at, 0x8016
/* 010B8C 8000FF8C AC20337C */  sw    $zero, %lo(D_8016337C)($at)
/* 010B90 8000FF90 87190004 */  lh    $t9, 4($t8)
/* 010B94 8000FF94 3C018016 */  lui   $at, %hi(D_8016344C) # $at, 0x8016
/* 010B98 8000FF98 44994000 */  mtc1  $t9, $f8
/* 010B9C 8000FF9C 00000000 */  nop
/* 010BA0 8000FFA0 468041A0 */  cvt.s.w $f6, $f8
/* 010BA4 8000FFA4 E426344C */  swc1  $f6, %lo(D_8016344C)($at)
/* 010BA8 8000FFA8 3C018016 */  lui   $at, %hi(D_801634F0) # $at, 0x8016
/* 010BAC 8000FFAC AC2034F0 */  sw    $zero, %lo(D_801634F0)($at)
/* 010BB0 8000FFB0 3C018016 */  lui   $at, %hi(D_801634F4) # $at, 0x8016
/* 010BB4 8000FFB4 AC2034F4 */  sw    $zero, %lo(D_801634F4)($at)
/* 010BB8 8000FFB8 3C018016 */  lui   $at, %hi(D_80163488) # $at, 0x8016
/* 010BBC 8000FFBC AC203488 */  sw    $zero, %lo(D_80163488)($at)
/* 010BC0 8000FFC0 3C018016 */  lui   $at, %hi(D_8016348C) # $at, 0x8016
/* 010BC4 8000FFC4 A420348C */  sh    $zero, %lo(D_8016348C)($at)
/* 010BC8 8000FFC8 3C018016 */  lui   $at, %hi(D_801634EC) # $at, 0x8016
/* 010BCC 8000FFCC 0C006AC0 */  jal   func_8001AB00
/* 010BD0 8000FFD0 A42034EC */   sh    $zero, %lo(D_801634EC)($at)
/* 010BD4 8000FFD4 826F0000 */  lb    $t7, ($s3)
/* 010BD8 8000FFD8 162F0036 */  bne   $s1, $t7, .L800100B4
/* 010BDC 8000FFDC 00000000 */   nop
/* 010BE0 8000FFE0 96AE0000 */  lhu   $t6, ($s5)
/* 010BE4 8000FFE4 3C128016 */  lui   $s2, %hi(D_80163330) # $s2, 0x8016
/* 010BE8 8000FFE8 26523330 */  addiu $s2, %lo(D_80163330) # addiu $s2, $s2, 0x3330
/* 010BEC 8000FFEC 162E0031 */  bne   $s1, $t6, .L800100B4
/* 010BF0 8000FFF0 00008025 */   move  $s0, $zero
/* 010BF4 8000FFF4 3C02800F */  lui   $v0, %hi(gPlayers) # $v0, 0x800f
/* 010BF8 8000FFF8 24426990 */  addiu $v0, %lo(gPlayers) # addiu $v0, $v0, 0x6990
/* 010BFC 8000FFFC 24050008 */  li    $a1, 8
/* 010C00 80010000 3C040200 */  lui   $a0, 0x200
/* 010C04 80010004 24030DD8 */  li    $v1, 3544
.L80010008:
/* 010C08 80010008 96580000 */  lhu   $t8, ($s2)
/* 010C0C 8001000C 56380009 */  bnel  $s1, $t8, .L80010034
/* 010C10 80010010 96580002 */   lhu   $t8, 2($s2)
/* 010C14 80010014 02030019 */  multu $s0, $v1
/* 010C18 80010018 0000C812 */  mflo  $t9
/* 010C1C 8001001C 00598821 */  addu  $s1, $v0, $t9
/* 010C20 80010020 8E2F000C */  lw    $t7, 0xc($s1)
/* 010C24 80010024 01E47025 */  or    $t6, $t7, $a0
/* 010C28 80010028 AE2E000C */  sw    $t6, 0xc($s1)
/* 010C2C 8001002C 24110001 */  li    $s1, 1
/* 010C30 80010030 96580002 */  lhu   $t8, 2($s2)
.L80010034:
/* 010C34 80010034 56380009 */  bnel  $s1, $t8, .L8001005C
/* 010C38 80010038 96580004 */   lhu   $t8, 4($s2)
/* 010C3C 8001003C 02030019 */  multu $s0, $v1
/* 010C40 80010040 0000C812 */  mflo  $t9
/* 010C44 80010044 00598821 */  addu  $s1, $v0, $t9
/* 010C48 80010048 8E2F0DE4 */  lw    $t7, 0xde4($s1)
/* 010C4C 8001004C 01E47025 */  or    $t6, $t7, $a0
/* 010C50 80010050 AE2E0DE4 */  sw    $t6, 0xde4($s1)
/* 010C54 80010054 24110001 */  li    $s1, 1
/* 010C58 80010058 96580004 */  lhu   $t8, 4($s2)
.L8001005C:
/* 010C5C 8001005C 56380009 */  bnel  $s1, $t8, .L80010084
/* 010C60 80010060 96580006 */   lhu   $t8, 6($s2)
/* 010C64 80010064 02030019 */  multu $s0, $v1
/* 010C68 80010068 0000C812 */  mflo  $t9
/* 010C6C 8001006C 00598821 */  addu  $s1, $v0, $t9
/* 010C70 80010070 8E2F1BBC */  lw    $t7, 0x1bbc($s1)
/* 010C74 80010074 01E47025 */  or    $t6, $t7, $a0
/* 010C78 80010078 AE2E1BBC */  sw    $t6, 0x1bbc($s1)
/* 010C7C 8001007C 24110001 */  li    $s1, 1
/* 010C80 80010080 96580006 */  lhu   $t8, 6($s2)
.L80010084:
/* 010C84 80010084 56380009 */  bnel  $s1, $t8, .L800100AC
/* 010C88 80010088 26100004 */   addiu $s0, $s0, 4
/* 010C8C 8001008C 02030019 */  multu $s0, $v1
/* 010C90 80010090 0000C812 */  mflo  $t9
/* 010C94 80010094 00598821 */  addu  $s1, $v0, $t9
/* 010C98 80010098 8E2F2994 */  lw    $t7, 0x2994($s1)
/* 010C9C 8001009C 01E47025 */  or    $t6, $t7, $a0
/* 010CA0 800100A0 AE2E2994 */  sw    $t6, 0x2994($s1)
/* 010CA4 800100A4 24110001 */  li    $s1, 1
/* 010CA8 800100A8 26100004 */  addiu $s0, $s0, 4
.L800100AC:
/* 010CAC 800100AC 1605FFD6 */  bne   $s0, $a1, .L80010008
/* 010CB0 800100B0 26520008 */   addiu $s2, $s2, 8
.L800100B4:
/* 010CB4 800100B4 0C004697 */  jal   func_80011A5C
/* 010CB8 800100B8 00000000 */   nop
/* 010CBC 800100BC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 010CC0 800100C0 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 010CC4 800100C4 8FB00020 */  lw    $s0, 0x20($sp)
/* 010CC8 800100C8 8FB10024 */  lw    $s1, 0x24($sp)
/* 010CCC 800100CC 8FB20028 */  lw    $s2, 0x28($sp)
/* 010CD0 800100D0 8FB3002C */  lw    $s3, 0x2c($sp)
/* 010CD4 800100D4 8FB40030 */  lw    $s4, 0x30($sp)
/* 010CD8 800100D8 8FB50034 */  lw    $s5, 0x34($sp)
/* 010CDC 800100DC 8FB60038 */  lw    $s6, 0x38($sp)
/* 010CE0 800100E0 8FB7003C */  lw    $s7, 0x3c($sp)
/* 010CE4 800100E4 8FBE0040 */  lw    $fp, 0x40($sp)
/* 010CE8 800100E8 03E00008 */  jr    $ra
/* 010CEC 800100EC 27BD0120 */   addiu $sp, $sp, 0x120
