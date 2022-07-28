glabel func_80014A88
/* 015688 80014A88 3C0E800E */  lui   $t6, %hi(gCCSelection)
/* 01568C 80014A8C 8DCEC548 */  lw    $t6, %lo(gCCSelection)($t6)
/* 015690 80014A90 3C01800F */  lui   $at, %hi(D_800ED1E8)
/* 015694 80014A94 D428D1E8 */  ldc1  $f8, %lo(D_800ED1E8)($at)
/* 015698 80014A98 448E2000 */  mtc1  $t6, $f4
/* 01569C 80014A9C 3C01406B */  li    $at, 0x406B0000 # 3.671875
/* 0156A0 80014AA0 44818800 */  mtc1  $at, $f17
/* 0156A4 80014AA4 468021A1 */  cvt.d.w $f6, $f4
/* 0156A8 80014AA8 44808000 */  mtc1  $zero, $f16
/* 0156AC 80014AAC 3C01800F */  lui   $at, %hi(D_800ED1F0)
/* 0156B0 80014AB0 D432D1F0 */  ldc1  $f18, %lo(D_800ED1F0)($at)
/* 0156B4 80014AB4 3C01800F */  lui   $at, %hi(D_800ED1F8)
/* 0156B8 80014AB8 46283282 */  mul.d $f10, $f6, $f8
/* 0156BC 80014ABC D426D1F8 */  ldc1  $f6, %lo(D_800ED1F8)($at)
/* 0156C0 80014AC0 3C0F800E */  lui   $t7, %hi(gModeSelection)
/* 0156C4 80014AC4 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 0156C8 80014AC8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0156CC 80014ACC 24010001 */  li    $at, 1
/* 0156D0 80014AD0 3C188016 */  lui   $t8, %hi(gTankerTruckList) # $t8, 0x8016
/* 0156D4 80014AD4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0156D8 80014AD8 46305003 */  div.d $f0, $f10, $f16
/* 0156DC 80014ADC 24060007 */  li    $a2, 7
/* 0156E0 80014AE0 27183AF8 */  addiu $t8, %lo(gTankerTruckList) # addiu $t8, $t8, 0x3af8
/* 0156E4 80014AE4 24070032 */  li    $a3, 50
/* 0156E8 80014AE8 3C198016 */  lui   $t9, %hi(D_80164550) # $t9, 0x8016
/* 0156EC 80014AEC 46320100 */  add.d $f4, $f0, $f18
/* 0156F0 80014AF0 46260200 */  add.d $f8, $f0, $f6
/* 0156F4 80014AF4 46202320 */  cvt.s.d $f12, $f4
/* 0156F8 80014AF8 15E10002 */  bne   $t7, $at, .L80014B04
/* 0156FC 80014AFC 462043A0 */   cvt.s.d $f14, $f8
/* 015700 80014B00 24060008 */  li    $a2, 8
.L80014B04:
/* 015704 80014B04 8F394550 */  lw    $t9, %lo(D_80164550)($t9)
/* 015708 80014B08 AFB80010 */  sw    $t8, 0x10($sp)
/* 01570C 80014B0C 0C004E79 */  jal   func_800139E4
/* 015710 80014B10 AFB90014 */   sw    $t9, 0x14($sp)
/* 015714 80014B14 8FBF001C */  lw    $ra, 0x1c($sp)
/* 015718 80014B18 27BD0020 */  addiu $sp, $sp, 0x20
/* 01571C 80014B1C 03E00008 */  jr    $ra
/* 015720 80014B20 00000000 */   nop   
