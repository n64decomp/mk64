glabel func_80088364
/* 088F64 80088364 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 088F68 80088368 AFBF001C */  sw    $ra, 0x1c($sp)
/* 088F6C 8008836C AFB00018 */  sw    $s0, 0x18($sp)
/* 088F70 80088370 0C022039 */  jal   func_800880E4
/* 088F74 80088374 00808025 */   move  $s0, $a0
/* 088F78 80088378 02002025 */  move  $a0, $s0
/* 088F7C 8008837C 0C02205E */  jal   func_80088178
/* 088F80 80088380 24050001 */   li    $a1, 1
/* 088F84 80088384 0C021DA8 */  jal   func_800876A0
/* 088F88 80088388 02002025 */   move  $a0, $s0
/* 088F8C 8008838C 02002025 */  move  $a0, $s0
/* 088F90 80088390 0C0220AC */  jal   func_800882B0
/* 088F94 80088394 2405000A */   li    $a1, 10
/* 088F98 80088398 10400013 */  beqz  $v0, .L800883E8
/* 088F9C 8008839C 001070C0 */   sll   $t6, $s0, 3
/* 088FA0 800883A0 01D07023 */  subu  $t6, $t6, $s0
/* 088FA4 800883A4 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 088FA8 800883A8 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 088FAC 800883AC 000E7140 */  sll   $t6, $t6, 5
/* 088FB0 800883B0 01CF1021 */  addu  $v0, $t6, $t7
/* 088FB4 800883B4 94580096 */  lhu   $t8, 0x96($v0)
/* 088FB8 800883B8 944A0094 */  lhu   $t2, 0x94($v0)
/* 088FBC 800883BC 27190001 */  addiu $t9, $t8, 1
/* 088FC0 800883C0 3328FFFF */  andi  $t0, $t9, 0xffff
/* 088FC4 800883C4 25090003 */  addiu $t1, $t0, 3
/* 088FC8 800883C8 152A0005 */  bne   $t1, $t2, .L800883E0
/* 088FCC 800883CC A4590096 */   sh    $t9, 0x96($v0)
/* 088FD0 800883D0 844B00AE */  lh    $t3, 0xae($v0)
/* 088FD4 800883D4 256C0001 */  addiu $t4, $t3, 1
/* 088FD8 800883D8 10000003 */  b     .L800883E8
/* 088FDC 800883DC A44C00AE */   sh    $t4, 0xae($v0)
.L800883E0:
/* 088FE0 800883E0 0C022054 */  jal   func_80088150
/* 088FE4 800883E4 02002025 */   move  $a0, $s0
.L800883E8:
/* 088FE8 800883E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 088FEC 800883EC 8FB00018 */  lw    $s0, 0x18($sp)
/* 088FF0 800883F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 088FF4 800883F4 03E00008 */  jr    $ra
/* 088FF8 800883F8 00000000 */   nop   

/* 088FFC 800883FC 000470C0 */  sll   $t6, $a0, 3
/* 089000 80088400 01C47023 */  subu  $t6, $t6, $a0
/* 089004 80088404 000E7140 */  sll   $t6, $t6, 5
/* 089008 80088408 3C028016 */  lui   $v0, %hi(D_80165CC6) # 0x8016
/* 08900C 8008840C 004E1021 */  addu  $v0, $v0, $t6
/* 089010 80088410 84425CC6 */  lh    $v0, %lo(D_80165CC6)($v0) # 0x5cc6($v0)
/* 089014 80088414 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 089018 80088418 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08901C 8008841C 10400013 */  beqz  $v0, .L8008846C
/* 089020 80088420 24010001 */   li    $at, 1
/* 089024 80088424 10410007 */  beq   $v0, $at, .L80088444
/* 089028 80088428 24010002 */   li    $at, 2
/* 08902C 8008842C 10410009 */  beq   $v0, $at, .L80088454
/* 089030 80088430 24010003 */   li    $at, 3
/* 089034 80088434 1041000B */  beq   $v0, $at, .L80088464
/* 089038 80088438 00000000 */   nop   
/* 08903C 8008843C 1000000C */  b     .L80088470
/* 089040 80088440 8FBF0014 */   lw    $ra, 0x14($sp)
.L80088444:
/* 089044 80088444 0C02208A */  jal   func_80088228
/* 089048 80088448 00000000 */   nop   
/* 08904C 8008844C 10000008 */  b     .L80088470
/* 089050 80088450 8FBF0014 */   lw    $ra, 0x14($sp)
.L80088454:
/* 089054 80088454 0C0220D9 */  jal   func_80088364
/* 089058 80088458 00000000 */   nop   
/* 08905C 8008845C 10000004 */  b     .L80088470
/* 089060 80088460 8FBF0014 */   lw    $ra, 0x14($sp)
.L80088464:
/* 089064 80088464 0C021BD8 */  jal   func_80086F60
/* 089068 80088468 00000000 */   nop   
.L8008846C:
/* 08906C 8008846C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80088470:
/* 089070 80088470 27BD0018 */  addiu $sp, $sp, 0x18
/* 089074 80088474 03E00008 */  jr    $ra
/* 089078 80088478 00000000 */   nop   
