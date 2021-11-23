glabel func_8008FCDC
/* 0908DC 8008FCDC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0908E0 8008FCE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0908E4 8008FCE4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0908E8 8008FCE8 848F00C6 */  lh    $t7, 0xc6($a0)
/* 0908EC 8008FCEC 00053600 */  sll   $a2, $a1, 0x18
/* 0908F0 8008FCF0 00067603 */  sra   $t6, $a2, 0x18
/* 0908F4 8008FCF4 25F80002 */  addiu $t8, $t7, 2
/* 0908F8 8008FCF8 A49800C6 */  sh    $t8, 0xc6($a0)
/* 0908FC 8008FCFC 848200C6 */  lh    $v0, 0xc6($a0)
/* 090900 8008FD00 01C03025 */  move  $a2, $t6
/* 090904 8008FD04 241900FF */  li    $t9, 255
/* 090908 8008FD08 284100F0 */  slti  $at, $v0, 0xf0
/* 09090C 8008FD0C 54200009 */  bnel  $at, $zero, .L8008FD34
/* 090910 8008FD10 00C02025 */   move  $a0, $a2
/* 090914 8008FD14 8C88000C */  lw    $t0, 0xc($a0)
/* 090918 8008FD18 3C01F7FF */  lui   $at, (0xF7FFFFFF >> 16) # lui $at, 0xf7ff
/* 09091C 8008FD1C 3421FFFF */  ori   $at, (0xF7FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 090920 8008FD20 A49900C6 */  sh    $t9, 0xc6($a0)
/* 090924 8008FD24 01014824 */  and   $t1, $t0, $at
/* 090928 8008FD28 AC89000C */  sw    $t1, 0xc($a0)
/* 09092C 8008FD2C 848200C6 */  lh    $v0, 0xc6($a0)
/* 090930 8008FD30 00C02025 */  move  $a0, $a2
.L8008FD34:
/* 090934 8008FD34 0C015A90 */  jal   func_80056A40
/* 090938 8008FD38 00402825 */   move  $a1, $v0
/* 09093C 8008FD3C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 090940 8008FD40 27BD0018 */  addiu $sp, $sp, 0x18
/* 090944 8008FD44 03E00008 */  jr    $ra
/* 090948 8008FD48 00000000 */   nop   
