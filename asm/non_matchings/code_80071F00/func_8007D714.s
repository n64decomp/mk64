glabel func_8007D714
/* 07E314 8007D714 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07E318 8007D718 24010001 */  li    $at, 1
/* 07E31C 8007D71C AFBF0014 */  sw    $ra, 0x14($sp)
/* 07E320 8007D720 14810009 */  bne   $a0, $at, .L8007D748
/* 07E324 8007D724 AFA40020 */   sw    $a0, 0x20($sp)
/* 07E328 8007D728 3C048019 */  lui   $a0, %hi(D_8018C3F0) # $a0, 0x8019
/* 07E32C 8007D72C 3C058018 */  lui   $a1, %hi(D_80183E4C) # $a1, 0x8018
/* 07E330 8007D730 24A53E4C */  addiu $a1, %lo(D_80183E4C) # addiu $a1, $a1, 0x3e4c
/* 07E334 8007D734 2484C3F0 */  addiu $a0, %lo(D_8018C3F0) # addiu $a0, $a0, -0x3c10
/* 07E338 8007D738 0C01C811 */  jal   func_80072044
/* 07E33C 8007D73C 24060028 */   li    $a2, 40
/* 07E340 8007D740 10000008 */  b     .L8007D764
/* 07E344 8007D744 00402025 */   move  $a0, $v0
.L8007D748:
/* 07E348 8007D748 3C048019 */  lui   $a0, %hi(D_8018C630) # $a0, 0x8019
/* 07E34C 8007D74C 3C058018 */  lui   $a1, %hi(D_80183E5C) # $a1, 0x8018
/* 07E350 8007D750 24A53E5C */  addiu $a1, %lo(D_80183E5C) # addiu $a1, $a1, 0x3e5c
/* 07E354 8007D754 2484C630 */  addiu $a0, %lo(D_8018C630) # addiu $a0, $a0, -0x39d0
/* 07E358 8007D758 0C01C811 */  jal   func_80072044
/* 07E35C 8007D75C 2406001E */   li    $a2, 30
/* 07E360 8007D760 00402025 */  move  $a0, $v0
.L8007D764:
/* 07E364 8007D764 2401FFFF */  li    $at, -1
/* 07E368 8007D768 10410006 */  beq   $v0, $at, .L8007D784
/* 07E36C 8007D76C 00002825 */   move  $a1, $zero
/* 07E370 8007D770 0C01C8E9 */  jal   func_800723A4
/* 07E374 8007D774 AFA4001C */   sw    $a0, 0x1c($sp)
/* 07E378 8007D778 8FA4001C */  lw    $a0, 0x1c($sp)
/* 07E37C 8007D77C 0C01F5AA */  jal   func_8007D6A8
/* 07E380 8007D780 8FA50020 */   lw    $a1, 0x20($sp)
.L8007D784:
/* 07E384 8007D784 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07E388 8007D788 27BD0020 */  addiu $sp, $sp, 0x20
/* 07E38C 8007D78C 03E00008 */  jr    $ra
/* 07E390 8007D790 00000000 */   nop   
