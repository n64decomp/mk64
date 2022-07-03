glabel func_80019ED0
/* 01AAD0 80019ED0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01AAD4 80019ED4 AFB0001C */  sw    $s0, 0x1c($sp)
/* 01AAD8 80019ED8 3C108016 */  lui   $s0, %hi(D_80164678) # $s0, 0x8016
/* 01AADC 80019EDC 3C028016 */  lui   $v0, %hi(D_80164670) # $v0, 0x8016
/* 01AAE0 80019EE0 3C038016 */  lui   $v1, %hi(D_80164680) # $v1, 0x8016
/* 01AAE4 80019EE4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 01AAE8 80019EE8 AFB50030 */  sw    $s5, 0x30($sp)
/* 01AAEC 80019EEC AFB4002C */  sw    $s4, 0x2c($sp)
/* 01AAF0 80019EF0 AFB30028 */  sw    $s3, 0x28($sp)
/* 01AAF4 80019EF4 AFB20024 */  sw    $s2, 0x24($sp)
/* 01AAF8 80019EF8 AFB10020 */  sw    $s1, 0x20($sp)
/* 01AAFC 80019EFC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 01AB00 80019F00 24634680 */  addiu $v1, %lo(D_80164680) # addiu $v1, $v1, 0x4680
/* 01AB04 80019F04 24424670 */  addiu $v0, %lo(D_80164670) # addiu $v0, $v0, 0x4670
/* 01AB08 80019F08 26104678 */  addiu $s0, %lo(D_80164678) # addiu $s0, $s0, 0x4678
.L80019F0C:
/* 01AB0C 80019F0C 860E0000 */  lh    $t6, ($s0)
/* 01AB10 80019F10 26100002 */  addiu $s0, $s0, 2
/* 01AB14 80019F14 0203082B */  sltu  $at, $s0, $v1
/* 01AB18 80019F18 24420002 */  addiu $v0, $v0, 2
/* 01AB1C 80019F1C 1420FFFB */  bnez  $at, .L80019F0C
/* 01AB20 80019F20 A44EFFFE */   sh    $t6, -2($v0)
/* 01AB24 80019F24 3C13800E */  lui   $s3, %hi(gPlayerWinningIndex)
/* 01AB28 80019F28 2673C5E8 */  addiu $s3, %lo(gPlayerWinningIndex) # addiu $s3, $s3, -0x3a18
/* 01AB2C 80019F2C 8E620000 */  lw    $v0, ($s3)
/* 01AB30 80019F30 3C0F800E */  lui   $t7, %hi(camera1)
/* 01AB34 80019F34 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 01AB38 80019F38 3C018016 */  lui   $at, %hi(gGPCurrentRacePlayerIdByRank) # $at, 0x8016
/* 01AB3C 80019F3C 3C108016 */  lui   $s0, %hi(D_80164678) # $s0, 0x8016
/* 01AB40 80019F40 3C128016 */  lui   $s2, %hi(D_80164680) # $s2, 0x8016
/* 01AB44 80019F44 A4224360 */  sh    $v0, %lo(gGPCurrentRacePlayerIdByRank)($at)
/* 01AB48 80019F48 4480A000 */  mtc1  $zero, $f20
/* 01AB4C 80019F4C 26524680 */  addiu $s2, %lo(D_80164680) # addiu $s2, $s2, 0x4680
/* 01AB50 80019F50 26104678 */  addiu $s0, %lo(D_80164678) # addiu $s0, $s0, 0x4678
/* 01AB54 80019F54 00008825 */  move  $s1, $zero
/* 01AB58 80019F58 24150004 */  li    $s5, 4
/* 01AB5C 80019F5C 24140001 */  li    $s4, 1
/* 01AB60 80019F60 A5E200AE */  sh    $v0, 0xae($t7)
.L80019F64:
/* 01AB64 80019F64 4405A000 */  mfc1  $a1, $f20
/* 01AB68 80019F68 A6400000 */  sh    $zero, ($s2)
/* 01AB6C 80019F6C 8E640000 */  lw    $a0, ($s3)
/* 01AB70 80019F70 0C0054C5 */  jal   func_80015314
/* 01AB74 80019F74 02203025 */   move  $a2, $s1
/* 01AB78 80019F78 26310001 */  addiu $s1, $s1, 1
/* 01AB7C 80019F7C 26100002 */  addiu $s0, $s0, 2
/* 01AB80 80019F80 26520002 */  addiu $s2, $s2, 2
/* 01AB84 80019F84 1635FFF7 */  bne   $s1, $s5, .L80019F64
/* 01AB88 80019F88 A614FFFE */   sh    $s4, -2($s0)
/* 01AB8C 80019F8C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 01AB90 80019F90 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 01AB94 80019F94 8FB0001C */  lw    $s0, 0x1c($sp)
/* 01AB98 80019F98 8FB10020 */  lw    $s1, 0x20($sp)
/* 01AB9C 80019F9C 8FB20024 */  lw    $s2, 0x24($sp)
/* 01ABA0 80019FA0 8FB30028 */  lw    $s3, 0x28($sp)
/* 01ABA4 80019FA4 8FB4002C */  lw    $s4, 0x2c($sp)
/* 01ABA8 80019FA8 8FB50030 */  lw    $s5, 0x30($sp)
/* 01ABAC 80019FAC 03E00008 */  jr    $ra
/* 01ABB0 80019FB0 27BD0038 */   addiu $sp, $sp, 0x38
