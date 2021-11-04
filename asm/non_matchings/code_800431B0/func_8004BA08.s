glabel func_8004BA08
/* 04C608 8004BA08 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 04C60C 8004BA0C 00067823 */  negu  $t7, $a2
/* 04C610 8004BA10 01E4082A */  slt   $at, $t7, $a0
/* 04C614 8004BA14 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04C618 8004BA18 AFA5003C */  sw    $a1, 0x3c($sp)
/* 04C61C 8004BA1C AFA60040 */  sw    $a2, 0x40($sp)
/* 04C620 8004BA20 10200019 */  beqz  $at, .L8004BA88
/* 04C624 8004BA24 AFA70044 */   sw    $a3, 0x44($sp)
/* 04C628 8004BA28 0007C823 */  negu  $t9, $a3
/* 04C62C 8004BA2C 0325082A */  slt   $at, $t9, $a1
/* 04C630 8004BA30 10200015 */  beqz  $at, .L8004BA88
/* 04C634 8004BA34 00001025 */   move  $v0, $zero
/* 04C638 8004BA38 00001825 */  move  $v1, $zero
/* 04C63C 8004BA3C 04810003 */  bgez  $a0, .L8004BA4C
/* 04C640 8004BA40 AFA4002C */   sw    $a0, 0x2c($sp)
/* 04C644 8004BA44 00041823 */  negu  $v1, $a0
/* 04C648 8004BA48 AFA0002C */  sw    $zero, 0x2c($sp)
.L8004BA4C:
/* 04C64C 8004BA4C 8FA9003C */  lw    $t1, 0x3c($sp)
/* 04C650 8004BA50 8FAA0040 */  lw    $t2, 0x40($sp)
/* 04C654 8004BA54 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04C658 8004BA58 05210003 */  bgez  $t1, .L8004BA68
/* 04C65C 8004BA5C 01433023 */   subu  $a2, $t2, $v1
/* 04C660 8004BA60 00091023 */  negu  $v0, $t1
/* 04C664 8004BA64 00002825 */  move  $a1, $zero
.L8004BA68:
/* 04C668 8004BA68 8FAB0044 */  lw    $t3, 0x44($sp)
/* 04C66C 8004BA6C 8FAD0048 */  lw    $t5, 0x48($sp)
/* 04C670 8004BA70 006A6021 */  addu  $t4, $v1, $t2
/* 04C674 8004BA74 AFAC0010 */  sw    $t4, 0x10($sp)
/* 04C678 8004BA78 AFA20014 */  sw    $v0, 0x14($sp)
/* 04C67C 8004BA7C 01623823 */  subu  $a3, $t3, $v0
/* 04C680 8004BA80 0C012DF7 */  jal   func_8004B7DC
/* 04C684 8004BA84 AFAD0018 */   sw    $t5, 0x18($sp)
.L8004BA88:
/* 04C688 8004BA88 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04C68C 8004BA8C 27BD0038 */  addiu $sp, $sp, 0x38
/* 04C690 8004BA90 03E00008 */  jr    $ra
/* 04C694 8004BA94 00000000 */   nop   
