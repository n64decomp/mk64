glabel func_80059C50
/* 05A850 80059C50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05A854 80059C54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05A858 80059C58 0C0168F0 */  jal   func_8005A3C0
/* 05A85C 80059C5C 00000000 */   nop
/* 05A860 80059C60 3C048016 */  lui   $a0, %hi(gGPCurrentRacePlayerIdByRank) # $a0, 0x8016
/* 05A864 80059C64 3C028019 */  lui   $v0, %hi(gGPCurrentRaceRanks) # $v0, 0x8019
/* 05A868 80059C68 3C07800E */  lui   $a3, %hi(gPlayerOne) # $a3, 0x800e
/* 05A86C 80059C6C 3C068019 */  lui   $a2, %hi(D_8018CF90) # $a2, 0x8019
/* 05A870 80059C70 24C6CF90 */  addiu $a2, %lo(D_8018CF90) # addiu $a2, $a2, -0x3070
/* 05A874 80059C74 8CE7C4DC */  lw    $a3, %lo(gPlayerOne)($a3)
/* 05A878 80059C78 2442CF80 */  addiu $v0, %lo(gGPCurrentRaceRanks) # addiu $v0, $v0, -0x3080
/* 05A87C 80059C7C 24844360 */  addiu $a0, %lo(gGPCurrentRacePlayerIdByRank) # addiu $a0, $a0, 0x4360
/* 05A880 80059C80 24050DD8 */  li    $a1, 3544
.L80059C84:
/* 05A884 80059C84 84830000 */  lh    $v1, ($a0)
/* 05A888 80059C88 24420002 */  addiu $v0, $v0, 2
/* 05A88C 80059C8C 0046082B */  sltu  $at, $v0, $a2
/* 05A890 80059C90 00650019 */  multu $v1, $a1
/* 05A894 80059C94 24840002 */  addiu $a0, $a0, 2
/* 05A898 80059C98 00007012 */  mflo  $t6
/* 05A89C 80059C9C 01C77821 */  addu  $t7, $t6, $a3
/* 05A8A0 80059CA0 95F80254 */  lhu   $t8, 0x254($t7)
/* 05A8A4 80059CA4 1420FFF7 */  bnez  $at, .L80059C84
/* 05A8A8 80059CA8 A458FFFE */   sh    $t8, -2($v0)
/* 05A8AC 80059CAC 3C038019 */  lui   $v1, %hi(D_8018CF98) # $v1, 0x8019
/* 05A8B0 80059CB0 3C028016 */  lui   $v0, %hi(gPlayerPositions) # $v0, 0x8016
/* 05A8B4 80059CB4 3C048016 */  lui   $a0, %hi(D_801643D8) # $a0, 0x8016
/* 05A8B8 80059CB8 248443D8 */  addiu $a0, %lo(D_801643D8) # addiu $a0, $a0, 0x43d8
/* 05A8BC 80059CBC 244243B8 */  addiu $v0, %lo(gPlayerPositions) # addiu $v0, $v0, 0x43b8
/* 05A8C0 80059CC0 2463CF98 */  addiu $v1, %lo(D_8018CF98) # addiu $v1, $v1, -0x3068
.L80059CC4:
/* 05A8C4 80059CC4 8C480004 */  lw    $t0, 4($v0)
/* 05A8C8 80059CC8 8C490008 */  lw    $t1, 8($v0)
/* 05A8CC 80059CCC 8C4A000C */  lw    $t2, 0xc($v0)
/* 05A8D0 80059CD0 8C590000 */  lw    $t9, ($v0)
/* 05A8D4 80059CD4 24420010 */  addiu $v0, $v0, 0x10
/* 05A8D8 80059CD8 24630008 */  addiu $v1, $v1, 8
/* 05A8DC 80059CDC A468FFFA */  sh    $t0, -6($v1)
/* 05A8E0 80059CE0 A469FFFC */  sh    $t1, -4($v1)
/* 05A8E4 80059CE4 A46AFFFE */  sh    $t2, -2($v1)
/* 05A8E8 80059CE8 1444FFF6 */  bne   $v0, $a0, .L80059CC4
/* 05A8EC 80059CEC A479FFF8 */   sh    $t9, -8($v1)
/* 05A8F0 80059CF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05A8F4 80059CF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 05A8F8 80059CF8 03E00008 */  jr    $ra
/* 05A8FC 80059CFC 00000000 */   nop
