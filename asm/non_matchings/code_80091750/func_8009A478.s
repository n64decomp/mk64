glabel func_8009A478
/* 09B078 8009A478 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09B07C 8009A47C AFBF001C */  sw    $ra, 0x1c($sp)
/* 09B080 8009A480 AFB00018 */  sw    $s0, 0x18($sp)
/* 09B084 8009A484 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 09B088 8009A488 AFA50034 */   sw    $a1, 0x34($sp)
/* 09B08C 8009A48C 3C048019 */  lui   $a0, %hi(D_8018DEE0) # $a0, 0x8019
/* 09B090 8009A490 2484DEE0 */  addiu $a0, %lo(D_8018DEE0) # addiu $a0, $a0, -0x2120
/* 09B094 8009A494 8C8E000C */  lw    $t6, 0xc($a0)
/* 09B098 8009A498 00408025 */  move  $s0, $v0
/* 09B09C 8009A49C 00003825 */  move  $a3, $zero
/* 09B0A0 8009A4A0 11C0000C */  beqz  $t6, .L8009A4D4
/* 09B0A4 8009A4A4 2419FFFF */   li    $t9, -1
/* 09B0A8 8009A4A8 3C038019 */  lui   $v1, %hi(D_8018DEE0) # $v1, 0x8019
/* 09B0AC 8009A4AC 2463DEE0 */  addiu $v1, %lo(D_8018DEE0) # addiu $v1, $v1, -0x2120
/* 09B0B0 8009A4B0 24E70001 */  addiu $a3, $a3, 1
.L8009A4B4:
/* 09B0B4 8009A4B4 28E10010 */  slti  $at, $a3, 0x10
/* 09B0B8 8009A4B8 14200003 */  bnez  $at, .L8009A4C8
/* 09B0BC 8009A4BC 24630018 */   addiu $v1, $v1, 0x18
.L8009A4C0:
/* 09B0C0 8009A4C0 1000FFFF */  b     .L8009A4C0
/* 09B0C4 8009A4C4 00000000 */   nop
.L8009A4C8:
/* 09B0C8 8009A4C8 8C6F000C */  lw    $t7, 0xc($v1)
/* 09B0CC 8009A4CC 55E0FFF9 */  bnel  $t7, $zero, .L8009A4B4
/* 09B0D0 8009A4D0 24E70001 */   addiu $a3, $a3, 1
.L8009A4D4:
/* 09B0D4 8009A4D4 0007C080 */  sll   $t8, $a3, 2
/* 09B0D8 8009A4D8 0307C023 */  subu  $t8, $t8, $a3
/* 09B0DC 8009A4DC 0018C0C0 */  sll   $t8, $t8, 3
/* 09B0E0 8009A4E0 00981821 */  addu  $v1, $a0, $t8
/* 09B0E4 8009A4E4 3C088000 */  lui   $t0, 0x8000
/* 09B0E8 8009A4E8 AC620000 */  sw    $v0, ($v1)
/* 09B0EC 8009A4EC AC790004 */  sw    $t9, 4($v1)
/* 09B0F0 8009A4F0 AC600008 */  sw    $zero, 8($v1)
/* 09B0F4 8009A4F4 AC68000C */  sw    $t0, 0xc($v1)
/* 09B0F8 8009A4F8 3C098019 */  lui   $t1, %hi(gNumD_8018E118Entries) # $t1, 0x8019
/* 09B0FC 8009A4FC 8D29E758 */  lw    $t1, %lo(gNumD_8018E118Entries)($t1)
/* 09B100 8009A500 00003025 */  move  $a2, $zero
/* 09B104 8009A504 AC690010 */  sw    $t1, 0x10($v1)
/* 09B108 8009A508 8C4A0000 */  lw    $t2, ($v0)
/* 09B10C 8009A50C 8FA50034 */  lw    $a1, 0x34($sp)
/* 09B110 8009A510 51400008 */  beql  $t2, $zero, .L8009A534
/* 09B114 8009A514 8E040008 */   lw    $a0, 8($s0)
/* 09B118 8009A518 8E040000 */  lw    $a0, ($s0)
/* 09B11C 8009A51C AFA7002C */  sw    $a3, 0x2c($sp)
/* 09B120 8009A520 0C026656 */  jal   func_80099958
/* 09B124 8009A524 AFA30024 */   sw    $v1, 0x24($sp)
/* 09B128 8009A528 8FA30024 */  lw    $v1, 0x24($sp)
/* 09B12C 8009A52C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 09B130 8009A530 8E040008 */  lw    $a0, 8($s0)
.L8009A534:
/* 09B134 8009A534 8FA50034 */  lw    $a1, 0x34($sp)
/* 09B138 8009A538 24060001 */  li    $a2, 1
/* 09B13C 8009A53C 5080000A */  beql  $a0, $zero, .L8009A568
/* 09B140 8009A540 8E040000 */   lw    $a0, ($s0)
/* 09B144 8009A544 8FA50034 */  lw    $a1, 0x34($sp)
/* 09B148 8009A548 24060001 */  li    $a2, 1
/* 09B14C 8009A54C AFA30024 */  sw    $v1, 0x24($sp)
/* 09B150 8009A550 0C026656 */  jal   func_80099958
/* 09B154 8009A554 AFA7002C */   sw    $a3, 0x2c($sp)
/* 09B158 8009A558 8FA30024 */  lw    $v1, 0x24($sp)
/* 09B15C 8009A55C 10000007 */  b     .L8009A57C
/* 09B160 8009A560 8FA7002C */   lw    $a3, 0x2c($sp)
/* 09B164 8009A564 8E040000 */  lw    $a0, ($s0)
.L8009A568:
/* 09B168 8009A568 AFA7002C */  sw    $a3, 0x2c($sp)
/* 09B16C 8009A56C 0C026656 */  jal   func_80099958
/* 09B170 8009A570 AFA30024 */   sw    $v1, 0x24($sp)
/* 09B174 8009A574 8FA30024 */  lw    $v1, 0x24($sp)
/* 09B178 8009A578 8FA7002C */  lw    $a3, 0x2c($sp)
.L8009A57C:
/* 09B17C 8009A57C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 09B180 8009A580 8FB00018 */  lw    $s0, 0x18($sp)
/* 09B184 8009A584 AC600014 */  sw    $zero, 0x14($v1)
/* 09B188 8009A588 27BD0030 */  addiu $sp, $sp, 0x30
/* 09B18C 8009A58C 03E00008 */  jr    $ra
/* 09B190 8009A590 00E01025 */   move  $v0, $a3
