glabel func_8009A6D4 #UNUSED
/* 09B2D4 8009A6D4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09B2D8 8009A6D8 AFB30028 */  sw    $s3, 0x28($sp)
/* 09B2DC 8009A6DC AFB10020 */  sw    $s1, 0x20($sp)
/* 09B2E0 8009A6E0 AFB0001C */  sw    $s0, 0x1c($sp)
/* 09B2E4 8009A6E4 AFB20024 */  sw    $s2, 0x24($sp)
/* 09B2E8 8009A6E8 3C108019 */  lui   $s0, %hi(D_8018DEE0) # $s0, 0x8019
/* 09B2EC 8009A6EC 3C118015 */  lui   $s1, %hi(gDisplayListHead) # $s1, 0x8015
/* 09B2F0 8009A6F0 3C138019 */  lui   $s3, %hi(D_8018E060) # $s3, 0x8019
/* 09B2F4 8009A6F4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09B2F8 8009A6F8 2673E060 */  addiu $s3, %lo(D_8018E060) # addiu $s3, $s3, -0x1fa0
/* 09B2FC 8009A6FC 26310298 */  addiu $s1, %lo(gDisplayListHead) # addiu $s1, $s1, 0x298
/* 09B300 8009A700 2610DEE0 */  addiu $s0, %lo(D_8018DEE0) # addiu $s0, $s0, -0x2120
/* 09B304 8009A704 3C128000 */  lui   $s2, 0x8000
/* 09B308 8009A708 8E0E000C */  lw    $t6, 0xc($s0)
.L8009A70C:
/* 09B30C 8009A70C 01D27824 */  and   $t7, $t6, $s2
/* 09B310 8009A710 51E0000B */  beql  $t7, $zero, .L8009A740
/* 09B314 8009A714 26100018 */   addiu $s0, $s0, 0x18
/* 09B318 8009A718 0C026A1E */  jal   func_8009A878
/* 09B31C 8009A71C 02002025 */   move  $a0, $s0
/* 09B320 8009A720 8E240000 */  lw    $a0, ($s1)
/* 09B324 8009A724 02002825 */  move  $a1, $s0
/* 09B328 8009A728 00003025 */  move  $a2, $zero
/* 09B32C 8009A72C 00003825 */  move  $a3, $zero
/* 09B330 8009A730 0C02710D */  jal   func_8009C434
/* 09B334 8009A734 AFA00010 */   sw    $zero, 0x10($sp)
/* 09B338 8009A738 AE220000 */  sw    $v0, ($s1)
/* 09B33C 8009A73C 26100018 */  addiu $s0, $s0, 0x18
.L8009A740:
/* 09B340 8009A740 5613FFF2 */  bnel  $s0, $s3, .L8009A70C
/* 09B344 8009A744 8E0E000C */   lw    $t6, 0xc($s0)
/* 09B348 8009A748 0C0266BB */  jal   func_80099AEC
/* 09B34C 8009A74C 00000000 */   nop   
/* 09B350 8009A750 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09B354 8009A754 8FB0001C */  lw    $s0, 0x1c($sp)
/* 09B358 8009A758 8FB10020 */  lw    $s1, 0x20($sp)
/* 09B35C 8009A75C 8FB20024 */  lw    $s2, 0x24($sp)
/* 09B360 8009A760 8FB30028 */  lw    $s3, 0x28($sp)
/* 09B364 8009A764 03E00008 */  jr    $ra
/* 09B368 8009A768 27BD0030 */   addiu $sp, $sp, 0x30
