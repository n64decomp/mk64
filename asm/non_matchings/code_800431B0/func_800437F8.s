glabel func_800437F8
/* 0443F8 800437F8 44876000 */  mtc1  $a3, $f12
/* 0443FC 800437FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 044400 80043800 AFBF0014 */  sw    $ra, 0x14($sp)
/* 044404 80043804 AFA60020 */  sw    $a2, 0x20($sp)
/* 044408 80043808 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04440C 8004380C 44076000 */  mfc1  $a3, $f12
/* 044410 80043810 0C0108CC */  jal   func_80042330
/* 044414 80043814 01C03025 */   move  $a2, $t6
/* 044418 80043818 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04441C 8004381C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 044420 80043820 8C620000 */  lw    $v0, ($v1)
/* 044424 80043824 8FA40028 */  lw    $a0, 0x28($sp)
/* 044428 80043828 8FA7002C */  lw    $a3, 0x2c($sp)
/* 04442C 8004382C 244F0008 */  addiu $t7, $v0, 8
/* 044430 80043830 AC6F0000 */  sw    $t7, ($v1)
/* 044434 80043834 3C180D00 */  lui   $t8, %hi(D_0D0078A0) # $t8, 0xd00
/* 044438 80043838 3C0A0600 */  lui   $t2, 0x600
/* 04443C 8004383C 271878A0 */  addiu $t8, %lo(D_0D0078A0) # addiu $t8, $t8, 0x78a0
/* 044440 80043840 AC580004 */  sw    $t8, 4($v0)
/* 044444 80043844 AC4A0000 */  sw    $t2, ($v0)
/* 044448 80043848 8C620000 */  lw    $v0, ($v1)
/* 04444C 8004384C 3C0BB900 */  lui   $t3, (0xB900031D >> 16) # lui $t3, 0xb900
/* 044450 80043850 3C0C0050 */  lui   $t4, (0x00504340 >> 16) # lui $t4, 0x50
/* 044454 80043854 24590008 */  addiu $t9, $v0, 8
/* 044458 80043858 AC790000 */  sw    $t9, ($v1)
/* 04445C 8004385C 358C4340 */  ori   $t4, (0x00504340 & 0xFFFF) # ori $t4, $t4, 0x4340
/* 044460 80043860 356B031D */  ori   $t3, (0xB900031D & 0xFFFF) # ori $t3, $t3, 0x31d
/* 044464 80043864 AC4B0000 */  sw    $t3, ($v0)
/* 044468 80043868 AC4C0004 */  sw    $t4, 4($v0)
/* 04446C 8004386C A087000F */  sb    $a3, 0xf($a0)
/* 044470 80043870 A087001F */  sb    $a3, 0x1f($a0)
/* 044474 80043874 A087002F */  sb    $a3, 0x2f($a0)
/* 044478 80043878 A087003F */  sb    $a3, 0x3f($a0)
/* 04447C 8004387C 8C620000 */  lw    $v0, ($v1)
/* 044480 80043880 3C0E0400 */  lui   $t6, (0x0400103F >> 16) # lui $t6, 0x400
/* 044484 80043884 35CE103F */  ori   $t6, (0x0400103F & 0xFFFF) # ori $t6, $t6, 0x103f
/* 044488 80043888 244D0008 */  addiu $t5, $v0, 8
/* 04448C 8004388C AC6D0000 */  sw    $t5, ($v1)
/* 044490 80043890 AC440004 */  sw    $a0, 4($v0)
/* 044494 80043894 AC4E0000 */  sw    $t6, ($v0)
/* 044498 80043898 8C620000 */  lw    $v0, ($v1)
/* 04449C 8004389C 3C180D00 */  lui   $t8, %hi(D_0D006940) # $t8, 0xd00
/* 0444A0 800438A0 27186940 */  addiu $t8, %lo(D_0D006940) # addiu $t8, $t8, 0x6940
/* 0444A4 800438A4 244F0008 */  addiu $t7, $v0, 8
/* 0444A8 800438A8 AC6F0000 */  sw    $t7, ($v1)
/* 0444AC 800438AC AC580004 */  sw    $t8, 4($v0)
/* 0444B0 800438B0 AC4A0000 */  sw    $t2, ($v0)
/* 0444B4 800438B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0444B8 800438B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0444BC 800438BC 03E00008 */  jr    $ra
/* 0444C0 800438C0 00000000 */   nop   
