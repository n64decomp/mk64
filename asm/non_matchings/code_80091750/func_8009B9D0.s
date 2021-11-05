glabel func_8009B9D0
/* 09C5D0 8009B9D0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 09C5D4 8009B9D4 AFB20020 */  sw    $s2, 0x20($sp)
/* 09C5D8 8009B9D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 09C5DC 8009B9DC AFB1001C */  sw    $s1, 0x1c($sp)
/* 09C5E0 8009B9E0 3C108019 */  lui   $s0, %hi(D_8018E768) # $s0, 0x8019
/* 09C5E4 8009B9E4 3C128019 */  lui   $s2, %hi(D_8018E7A8) # $s2, 0x8019
/* 09C5E8 8009B9E8 00A08825 */  move  $s1, $a1
/* 09C5EC 8009B9EC AFBF0024 */  sw    $ra, 0x24($sp)
/* 09C5F0 8009B9F0 AFA40038 */  sw    $a0, 0x38($sp)
/* 09C5F4 8009B9F4 AFA0002C */  sw    $zero, 0x2c($sp)
/* 09C5F8 8009B9F8 2652E7A8 */  addiu $s2, %lo(D_8018E7A8) # addiu $s2, $s2, -0x1858
/* 09C5FC 8009B9FC 2610E768 */  addiu $s0, %lo(D_8018E768) # addiu $s0, $s0, -0x1898
.L8009BA00:
/* 09C600 8009BA00 0C026449 */  jal   segmented_to_virtual
/* 09C604 8009BA04 02202025 */   move  $a0, $s1
/* 09C608 8009BA08 8E0E0000 */  lw    $t6, ($s0)
/* 09C60C 8009BA0C 544E0007 */  bnel  $v0, $t6, .L8009BA2C
/* 09C610 8009BA10 26100008 */   addiu $s0, $s0, 8
/* 09C614 8009BA14 8E0F0004 */  lw    $t7, 4($s0)
/* 09C618 8009BA18 24180001 */  li    $t8, 1
/* 09C61C 8009BA1C AFB8002C */  sw    $t8, 0x2c($sp)
/* 09C620 8009BA20 10000004 */  b     .L8009BA34
/* 09C624 8009BA24 AFAF0034 */   sw    $t7, 0x34($sp)
/* 09C628 8009BA28 26100008 */  addiu $s0, $s0, 8
.L8009BA2C:
/* 09C62C 8009BA2C 1612FFF4 */  bne   $s0, $s2, .L8009BA00
/* 09C630 8009BA30 00000000 */   nop   
.L8009BA34:
/* 09C634 8009BA34 8FB9002C */  lw    $t9, 0x2c($sp)
/* 09C638 8009BA38 8FA80038 */  lw    $t0, 0x38($sp)
/* 09C63C 8009BA3C 3C0A0600 */  lui   $t2, 0x600
/* 09C640 8009BA40 13200006 */  beqz  $t9, .L8009BA5C
/* 09C644 8009BA44 25090008 */   addiu $t1, $t0, 8
/* 09C648 8009BA48 AFA90038 */  sw    $t1, 0x38($sp)
/* 09C64C 8009BA4C AD0A0000 */  sw    $t2, ($t0)
/* 09C650 8009BA50 8FAB0034 */  lw    $t3, 0x34($sp)
/* 09C654 8009BA54 AD0B0004 */  sw    $t3, 4($t0)
/* 09C658 8009BA58 8FA20038 */  lw    $v0, 0x38($sp)
.L8009BA5C:
/* 09C65C 8009BA5C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 09C660 8009BA60 8FB00018 */  lw    $s0, 0x18($sp)
/* 09C664 8009BA64 8FB1001C */  lw    $s1, 0x1c($sp)
/* 09C668 8009BA68 8FB20020 */  lw    $s2, 0x20($sp)
/* 09C66C 8009BA6C 03E00008 */  jr    $ra
/* 09C670 8009BA70 27BD0038 */   addiu $sp, $sp, 0x38
