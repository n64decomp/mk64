glabel func_8008FC64
/* 090864 8008FC64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 090868 8008FC68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09086C 8008FC6C AFA5001C */  sw    $a1, 0x1c($sp)
/* 090870 8008FC70 848E00C6 */  lh    $t6, 0xc6($a0)
/* 090874 8008FC74 25CFFFFC */  addiu $t7, $t6, -4
/* 090878 8008FC78 A48F00C6 */  sh    $t7, 0xc6($a0)
/* 09087C 8008FC7C 849800C6 */  lh    $t8, 0xc6($a0)
/* 090880 8008FC80 2B010005 */  slti  $at, $t8, 5
/* 090884 8008FC84 50200012 */  beql  $at, $zero, .L8008FCD0
/* 090888 8008FC88 8FBF0014 */   lw    $ra, 0x14($sp)
/* 09088C 8008FC8C 8C99000C */  lw    $t9, 0xc($a0)
/* 090890 8008FC90 3C01FBFF */  lui   $at, (0xFBFFFFFF >> 16) # lui $at, 0xfbff
/* 090894 8008FC94 3421FFFF */  ori   $at, (0xFBFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 090898 8008FC98 948B0000 */  lhu   $t3, ($a0)
/* 09089C 8008FC9C 03214024 */  and   $t0, $t9, $at
/* 0908A0 8008FCA0 3C010800 */  lui   $at, 0x800
/* 0908A4 8008FCA4 AC88000C */  sw    $t0, 0xc($a0)
/* 0908A8 8008FCA8 01015025 */  or    $t2, $t0, $at
/* 0908AC 8008FCAC 356C0040 */  ori   $t4, $t3, 0x40
/* 0908B0 8008FCB0 A48000C6 */  sh    $zero, 0xc6($a0)
/* 0908B4 8008FCB4 AC8A000C */  sw    $t2, 0xc($a0)
/* 0908B8 8008FCB8 A48C0000 */  sh    $t4, ($a0)
/* 0908BC 8008FCBC 0C023F6A */  jal   func_8008FDA8
/* 0908C0 8008FCC0 83A5001F */   lb    $a1, 0x1f($sp)
/* 0908C4 8008FCC4 0C015A7D */  jal   func_800569F4
/* 0908C8 8008FCC8 83A4001F */   lb    $a0, 0x1f($sp)
/* 0908CC 8008FCCC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008FCD0:
/* 0908D0 8008FCD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0908D4 8008FCD4 03E00008 */  jr    $ra
/* 0908D8 8008FCD8 00000000 */   nop   
