glabel func_8006BA94
/* 06C694 8006BA94 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 06C698 8006BA98 AFA50024 */  sw    $a1, 0x24($sp)
/* 06C69C 8006BA9C 83AE0027 */  lb    $t6, 0x27($sp)
/* 06C6A0 8006BAA0 3C188019 */  lui   $t8, %hi(gPlayerBalloonStatus) # $t8, 0x8019
/* 06C6A4 8006BAA4 2718D5F0 */  addiu $t8, %lo(gPlayerBalloonStatus) # addiu $t8, $t8, -0x2a10
/* 06C6A8 8006BAA8 000E7880 */  sll   $t7, $t6, 2
/* 06C6AC 8006BAAC 01EE7823 */  subu  $t7, $t7, $t6
/* 06C6B0 8006BAB0 000F7840 */  sll   $t7, $t7, 1
/* 06C6B4 8006BAB4 01F81021 */  addu  $v0, $t7, $t8
/* 06C6B8 8006BAB8 94590000 */  lhu   $t9, ($v0)
/* 06C6BC 8006BABC AFBF0014 */  sw    $ra, 0x14($sp)
/* 06C6C0 8006BAC0 AFA40020 */  sw    $a0, 0x20($sp)
/* 06C6C4 8006BAC4 13200007 */  beqz  $t9, .L8006BAE4
/* 06C6C8 8006BAC8 AFA60028 */   sw    $a2, 0x28($sp)
/* 06C6CC 8006BACC 01C02825 */  move  $a1, $t6
/* 06C6D0 8006BAD0 00003025 */  move  $a2, $zero
/* 06C6D4 8006BAD4 83A7002B */  lb    $a3, 0x2b($sp)
/* 06C6D8 8006BAD8 0C01ABF4 */  jal   func_8006AFD0
/* 06C6DC 8006BADC AFA2001C */   sw    $v0, 0x1c($sp)
/* 06C6E0 8006BAE0 8FA2001C */  lw    $v0, 0x1c($sp)
.L8006BAE4:
/* 06C6E4 8006BAE4 94480002 */  lhu   $t0, 2($v0)
/* 06C6E8 8006BAE8 8FA40020 */  lw    $a0, 0x20($sp)
/* 06C6EC 8006BAEC 83A50027 */  lb    $a1, 0x27($sp)
/* 06C6F0 8006BAF0 11000005 */  beqz  $t0, .L8006BB08
/* 06C6F4 8006BAF4 24060001 */   li    $a2, 1
/* 06C6F8 8006BAF8 83A7002B */  lb    $a3, 0x2b($sp)
/* 06C6FC 8006BAFC 0C01ABF4 */  jal   func_8006AFD0
/* 06C700 8006BB00 AFA2001C */   sw    $v0, 0x1c($sp)
/* 06C704 8006BB04 8FA2001C */  lw    $v0, 0x1c($sp)
.L8006BB08:
/* 06C708 8006BB08 94490004 */  lhu   $t1, 4($v0)
/* 06C70C 8006BB0C 8FA40020 */  lw    $a0, 0x20($sp)
/* 06C710 8006BB10 83A50027 */  lb    $a1, 0x27($sp)
/* 06C714 8006BB14 11200003 */  beqz  $t1, .L8006BB24
/* 06C718 8006BB18 24060002 */   li    $a2, 2
/* 06C71C 8006BB1C 0C01ABF4 */  jal   func_8006AFD0
/* 06C720 8006BB20 83A7002B */   lb    $a3, 0x2b($sp)
.L8006BB24:
/* 06C724 8006BB24 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06C728 8006BB28 27BD0020 */  addiu $sp, $sp, 0x20
/* 06C72C 8006BB2C 03E00008 */  jr    $ra
/* 06C730 8006BB30 00000000 */   nop
