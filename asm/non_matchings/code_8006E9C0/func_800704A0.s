glabel func_800704A0
/* 0710A0 800704A0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0710A4 800704A4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0710A8 800704A8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0710AC 800704AC AFB40024 */  sw    $s4, 0x24($sp)
/* 0710B0 800704B0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0710B4 800704B4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0710B8 800704B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0710BC 800704BC 3C138019 */  lui   $s3, %hi(D_8018CC80) # $s3, 0x8019
/* 0710C0 800704C0 3C158019 */  lui   $s5, %hi(D_8018D1F8) # $s5, 0x8019
/* 0710C4 800704C4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0710C8 800704C8 00009025 */  move  $s2, $zero
/* 0710CC 800704CC 00808025 */  move  $s0, $a0
/* 0710D0 800704D0 26B5D1F8 */  addiu $s5, %lo(D_8018D1F8) # addiu $s5, $s5, -0x2e08
/* 0710D4 800704D4 2673CC80 */  addiu $s3, %lo(D_8018CC80) # addiu $s3, $s3, -0x3380
/* 0710D8 800704D8 00008825 */  move  $s1, $zero
/* 0710DC 800704DC 3414FFFF */  li    $s4, 65535
.L800704E0:
/* 0710E0 800704E0 8EAE0000 */  lw    $t6, ($s5)
/* 0710E4 800704E4 000E7880 */  sll   $t7, $t6, 2
/* 0710E8 800704E8 026FC021 */  addu  $t8, $s3, $t7
/* 0710EC 800704EC 0C01C7C0 */  jal   find_unused_obj_index
/* 0710F0 800704F0 03112021 */   addu  $a0, $t8, $s1
/* 0710F4 800704F4 00402025 */  move  $a0, $v0
/* 0710F8 800704F8 24050001 */  li    $a1, 1
/* 0710FC 800704FC 0C01C0F8 */  jal   func_800703E0
/* 071100 80070500 02003025 */   move  $a2, $s0
/* 071104 80070504 96190008 */  lhu   $t9, 8($s0)
/* 071108 80070508 26520001 */  addiu $s2, $s2, 1
/* 07110C 8007050C 26310004 */  addiu $s1, $s1, 4
/* 071110 80070510 1699FFF3 */  bne   $s4, $t9, .L800704E0
/* 071114 80070514 26100008 */   addiu $s0, $s0, 8
/* 071118 80070518 8EA80000 */  lw    $t0, ($s5)
/* 07111C 8007051C 3C018019 */  lui   $at, %hi(D_8018D1F0) # $at, 0x8019
/* 071120 80070520 8FBF002C */  lw    $ra, 0x2c($sp)
/* 071124 80070524 01124821 */  addu  $t1, $t0, $s2
/* 071128 80070528 AEA90000 */  sw    $t1, ($s5)
/* 07112C 8007052C AC32D1F0 */  sw    $s2, %lo(D_8018D1F0)($at)
/* 071130 80070530 3C018019 */  lui   $at, %hi(D_8018D230) # $at, 0x8019
/* 071134 80070534 240A0001 */  li    $t2, 1
/* 071138 80070538 8FB2001C */  lw    $s2, 0x1c($sp)
/* 07113C 8007053C 8FB50028 */  lw    $s5, 0x28($sp)
/* 071140 80070540 8FB00014 */  lw    $s0, 0x14($sp)
/* 071144 80070544 8FB10018 */  lw    $s1, 0x18($sp)
/* 071148 80070548 8FB30020 */  lw    $s3, 0x20($sp)
/* 07114C 8007054C 8FB40024 */  lw    $s4, 0x24($sp)
/* 071150 80070550 A02AD230 */  sb    $t2, %lo(D_8018D230)($at)
/* 071154 80070554 03E00008 */  jr    $ra
/* 071158 80070558 27BD0030 */   addiu $sp, $sp, 0x30
