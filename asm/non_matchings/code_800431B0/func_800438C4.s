glabel func_800438C4
/* 0444C4 800438C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0444C8 800438C8 44876000 */  mtc1  $a3, $f12
/* 0444CC 800438CC 8FAF002C */  lw    $t7, 0x2c($sp)
/* 0444D0 800438D0 8FB80028 */  lw    $t8, 0x28($sp)
/* 0444D4 800438D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0444D8 800438D8 AFA60020 */  sw    $a2, 0x20($sp)
/* 0444DC 800438DC 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 0444E0 800438E0 44076000 */  mfc1  $a3, $f12
/* 0444E4 800438E4 01C03025 */  move  $a2, $t6
/* 0444E8 800438E8 A70F0010 */  sh    $t7, 0x10($t8)
/* 0444EC 800438EC 0C0108CC */  jal   func_80042330
/* 0444F0 800438F0 A70F0020 */   sh    $t7, 0x20($t8)
/* 0444F4 800438F4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0444F8 800438F8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0444FC 800438FC 8C620000 */  lw    $v0, ($v1)
/* 044500 80043900 3C090D00 */  lui   $t1, %hi(D_0D0078A0) # $t1, 0xd00
/* 044504 80043904 3C080600 */  lui   $t0, 0x600
/* 044508 80043908 24590008 */  addiu $t9, $v0, 8
/* 04450C 8004390C AC790000 */  sw    $t9, ($v1)
/* 044510 80043910 252978A0 */  addiu $t1, %lo(D_0D0078A0) # addiu $t1, $t1, 0x78a0
/* 044514 80043914 AC490004 */  sw    $t1, 4($v0)
/* 044518 80043918 AC480000 */  sw    $t0, ($v0)
/* 04451C 8004391C 8C620000 */  lw    $v0, ($v1)
/* 044520 80043920 3C0BB900 */  lui   $t3, (0xB900031D >> 16) # lui $t3, 0xb900
/* 044524 80043924 3C0C0050 */  lui   $t4, (0x00504340 >> 16) # lui $t4, 0x50
/* 044528 80043928 244A0008 */  addiu $t2, $v0, 8
/* 04452C 8004392C AC6A0000 */  sw    $t2, ($v1)
/* 044530 80043930 358C4340 */  ori   $t4, (0x00504340 & 0xFFFF) # ori $t4, $t4, 0x4340
/* 044534 80043934 356B031D */  ori   $t3, (0xB900031D & 0xFFFF) # ori $t3, $t3, 0x31d
/* 044538 80043938 AC4B0000 */  sw    $t3, ($v0)
/* 04453C 8004393C AC4C0004 */  sw    $t4, 4($v0)
/* 044540 80043940 8C620000 */  lw    $v0, ($v1)
/* 044544 80043944 3C0E0400 */  lui   $t6, (0x0400103F >> 16) # lui $t6, 0x400
/* 044548 80043948 35CE103F */  ori   $t6, (0x0400103F & 0xFFFF) # ori $t6, $t6, 0x103f
/* 04454C 8004394C 244D0008 */  addiu $t5, $v0, 8
/* 044550 80043950 AC6D0000 */  sw    $t5, ($v1)
/* 044554 80043954 AC4E0000 */  sw    $t6, ($v0)
/* 044558 80043958 8FAF0028 */  lw    $t7, 0x28($sp)
/* 04455C 8004395C 3C190D00 */  lui   $t9, %hi(D_0D006940) # $t9, 0xd00
/* 044560 80043960 27396940 */  addiu $t9, %lo(D_0D006940) # addiu $t9, $t9, 0x6940
/* 044564 80043964 AC4F0004 */  sw    $t7, 4($v0)
/* 044568 80043968 8C620000 */  lw    $v0, ($v1)
/* 04456C 8004396C 24580008 */  addiu $t8, $v0, 8
/* 044570 80043970 AC780000 */  sw    $t8, ($v1)
/* 044574 80043974 AC590004 */  sw    $t9, 4($v0)
/* 044578 80043978 AC480000 */  sw    $t0, ($v0)
/* 04457C 8004397C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 044580 80043980 27BD0018 */  addiu $sp, $sp, 0x18
/* 044584 80043984 03E00008 */  jr    $ra
/* 044588 80043988 00000000 */   nop   
