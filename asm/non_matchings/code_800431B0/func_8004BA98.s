glabel func_8004BA98
/* 04C698 8004BA98 00067023 */  negu  $t6, $a2
/* 04C69C 8004BA9C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 04C6A0 8004BAA0 01C4082A */  slt   $at, $t6, $a0
/* 04C6A4 8004BAA4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04C6A8 8004BAA8 1020001E */  beqz  $at, .L8004BB24
/* 04C6AC 8004BAAC AFA7004C */   sw    $a3, 0x4c($sp)
/* 04C6B0 8004BAB0 0007C023 */  negu  $t8, $a3
/* 04C6B4 8004BAB4 0305082A */  slt   $at, $t8, $a1
/* 04C6B8 8004BAB8 1020001A */  beqz  $at, .L8004BB24
/* 04C6BC 8004BABC 8FA80050 */   lw    $t0, 0x50($sp)
/* 04C6C0 8004BAC0 8FA90054 */  lw    $t1, 0x54($sp)
/* 04C6C4 8004BAC4 AFA40034 */  sw    $a0, 0x34($sp)
/* 04C6C8 8004BAC8 AFA50030 */  sw    $a1, 0x30($sp)
/* 04C6CC 8004BACC 01001025 */  move  $v0, $t0
/* 04C6D0 8004BAD0 AFA6002C */  sw    $a2, 0x2c($sp)
/* 04C6D4 8004BAD4 04810005 */  bgez  $a0, .L8004BAEC
/* 04C6D8 8004BAD8 01201825 */   move  $v1, $t1
/* 04C6DC 8004BADC 00C4C821 */  addu  $t9, $a2, $a0
/* 04C6E0 8004BAE0 01041023 */  subu  $v0, $t0, $a0
/* 04C6E4 8004BAE4 AFA00034 */  sw    $zero, 0x34($sp)
/* 04C6E8 8004BAE8 AFB9002C */  sw    $t9, 0x2c($sp)
.L8004BAEC:
/* 04C6EC 8004BAEC 04A30006 */  bgezl $a1, .L8004BB08
/* 04C6F0 8004BAF0 8FAB0058 */   lw    $t3, 0x58($sp)
/* 04C6F4 8004BAF4 8FAA004C */  lw    $t2, 0x4c($sp)
/* 04C6F8 8004BAF8 01251823 */  subu  $v1, $t1, $a1
/* 04C6FC 8004BAFC AFA00030 */  sw    $zero, 0x30($sp)
/* 04C700 8004BB00 01453821 */  addu  $a3, $t2, $a1
/* 04C704 8004BB04 8FAB0058 */  lw    $t3, 0x58($sp)
.L8004BB08:
/* 04C708 8004BB08 8FA40034 */  lw    $a0, 0x34($sp)
/* 04C70C 8004BB0C 8FA50030 */  lw    $a1, 0x30($sp)
/* 04C710 8004BB10 8FA6002C */  lw    $a2, 0x2c($sp)
/* 04C714 8004BB14 AFA20010 */  sw    $v0, 0x10($sp)
/* 04C718 8004BB18 AFA30014 */  sw    $v1, 0x14($sp)
/* 04C71C 8004BB1C 0C012DF7 */  jal   func_8004B7DC
/* 04C720 8004BB20 AFAB0018 */   sw    $t3, 0x18($sp)
.L8004BB24:
/* 04C724 8004BB24 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04C728 8004BB28 27BD0040 */  addiu $sp, $sp, 0x40
/* 04C72C 8004BB2C 03E00008 */  jr    $ra
/* 04C730 8004BB30 00000000 */   nop   
