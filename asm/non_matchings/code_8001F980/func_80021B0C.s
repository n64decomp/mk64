glabel func_80021B0C
/* 02270C 80021B0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 022710 80021B10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 022714 80021B14 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 022718 80021B18 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 02271C 80021B1C 00002825 */  move  $a1, $zero
/* 022720 80021B20 0C01B9F3 */  jal   func_8006E7CC
/* 022724 80021B24 00003025 */   move  $a2, $zero
/* 022728 80021B28 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 02272C 80021B2C 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022730 80021B30 24050001 */  li    $a1, 1
/* 022734 80021B34 0C01B9F3 */  jal   func_8006E7CC
/* 022738 80021B38 00003025 */   move  $a2, $zero
/* 02273C 80021B3C 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022740 80021B40 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 022744 80021B44 24050002 */  li    $a1, 2
/* 022748 80021B48 0C01B9F3 */  jal   func_8006E7CC
/* 02274C 80021B4C 00003025 */   move  $a2, $zero
/* 022750 80021B50 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 022754 80021B54 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 022758 80021B58 24050003 */  li    $a1, 3
/* 02275C 80021B5C 0C01B9F3 */  jal   func_8006E7CC
/* 022760 80021B60 00003025 */   move  $a2, $zero
/* 022764 80021B64 3C0E800E */  lui   $t6, %hi(gActiveScreenMode) # $t6, 0x800e
/* 022768 80021B68 8DCEC52C */  lw    $t6, %lo(gActiveScreenMode)($t6)
/* 02276C 80021B6C 24010003 */  li    $at, 3
/* 022770 80021B70 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 022774 80021B74 11C10013 */  beq   $t6, $at, .L80021BC4
/* 022778 80021B78 24050004 */   li    $a1, 4
/* 02277C 80021B7C 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 022780 80021B80 0C01B9F3 */  jal   func_8006E7CC
/* 022784 80021B84 00003025 */   move  $a2, $zero
/* 022788 80021B88 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 02278C 80021B8C 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 022790 80021B90 24050005 */  li    $a1, 5
/* 022794 80021B94 0C01B9F3 */  jal   func_8006E7CC
/* 022798 80021B98 00003025 */   move  $a2, $zero
/* 02279C 80021B9C 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 0227A0 80021BA0 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 0227A4 80021BA4 24050006 */  li    $a1, 6
/* 0227A8 80021BA8 0C01B9F3 */  jal   func_8006E7CC
/* 0227AC 80021BAC 00003025 */   move  $a2, $zero
/* 0227B0 80021BB0 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 0227B4 80021BB4 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 0227B8 80021BB8 24050007 */  li    $a1, 7
/* 0227BC 80021BBC 0C01B9F3 */  jal   func_8006E7CC
/* 0227C0 80021BC0 00003025 */   move  $a2, $zero
.L80021BC4:
/* 0227C4 80021BC4 3C0F800E */  lui   $t7, %hi(gGamestate) # $t7, 0x800e
/* 0227C8 80021BC8 8DEFC50C */  lw    $t7, %lo(gGamestate)($t7)
/* 0227CC 80021BCC 24010005 */  li    $at, 5
/* 0227D0 80021BD0 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 0227D4 80021BD4 55E10025 */  bnel  $t7, $at, .L80021C6C
/* 0227D8 80021BD8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0227DC 80021BDC 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 0227E0 80021BE0 00002825 */  move  $a1, $zero
/* 0227E4 80021BE4 84980044 */  lh    $t8, 0x44($a0)
/* 0227E8 80021BE8 33192000 */  andi  $t9, $t8, 0x2000
/* 0227EC 80021BEC 13200003 */  beqz  $t9, .L80021BFC
/* 0227F0 80021BF0 00000000 */   nop
/* 0227F4 80021BF4 0C0090DD */  jal   func_80024374
/* 0227F8 80021BF8 00003025 */   move  $a2, $zero
.L80021BFC:
/* 0227FC 80021BFC 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 022800 80021C00 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022804 80021C04 24050001 */  li    $a1, 1
/* 022808 80021C08 84880044 */  lh    $t0, 0x44($a0)
/* 02280C 80021C0C 31092000 */  andi  $t1, $t0, 0x2000
/* 022810 80021C10 11200003 */  beqz  $t1, .L80021C20
/* 022814 80021C14 00000000 */   nop
/* 022818 80021C18 0C0090DD */  jal   func_80024374
/* 02281C 80021C1C 00003025 */   move  $a2, $zero
.L80021C20:
/* 022820 80021C20 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022824 80021C24 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 022828 80021C28 24050002 */  li    $a1, 2
/* 02282C 80021C2C 848A0044 */  lh    $t2, 0x44($a0)
/* 022830 80021C30 314B2000 */  andi  $t3, $t2, 0x2000
/* 022834 80021C34 11600003 */  beqz  $t3, .L80021C44
/* 022838 80021C38 00000000 */   nop
/* 02283C 80021C3C 0C0090DD */  jal   func_80024374
/* 022840 80021C40 00003025 */   move  $a2, $zero
.L80021C44:
/* 022844 80021C44 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 022848 80021C48 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 02284C 80021C4C 24050003 */  li    $a1, 3
/* 022850 80021C50 848C0044 */  lh    $t4, 0x44($a0)
/* 022854 80021C54 318D2000 */  andi  $t5, $t4, 0x2000
/* 022858 80021C58 51A00004 */  beql  $t5, $zero, .L80021C6C
/* 02285C 80021C5C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 022860 80021C60 0C0090DD */  jal   func_80024374
/* 022864 80021C64 00003025 */   move  $a2, $zero
/* 022868 80021C68 8FBF0014 */  lw    $ra, 0x14($sp)
.L80021C6C:
/* 02286C 80021C6C 27BD0018 */  addiu $sp, $sp, 0x18
/* 022870 80021C70 03E00008 */  jr    $ra
/* 022874 80021C74 00000000 */   nop
