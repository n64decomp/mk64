glabel func_8008D4B4
/* 08E0B4 8008D4B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08E0B8 8008D4B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E0BC 8008D4BC 848200DC */  lh    $v0, 0xdc($a0)
/* 08E0C0 8008D4C0 C4840214 */  lwc1  $f4, 0x214($a0)
/* 08E0C4 8008D4C4 00803825 */  move  $a3, $a0
/* 08E0C8 8008D4C8 18400004 */  blez  $v0, .L8008D4DC
/* 08E0CC 8008D4CC E484009C */   swc1  $f4, 0x9c($a0)
/* 08E0D0 8008D4D0 244EFFFF */  addiu $t6, $v0, -1
/* 08E0D4 8008D4D4 A48E00DC */  sh    $t6, 0xdc($a0)
/* 08E0D8 8008D4D8 848200DC */  lh    $v0, 0xdc($a0)
.L8008D4DC:
/* 08E0DC 8008D4DC 10400008 */  beqz  $v0, .L8008D500
/* 08E0E0 8008D4E0 24E40080 */   addiu $a0, $a3, 0x80
/* 08E0E4 8008D4E4 24E40080 */  addiu $a0, $a3, 0x80
/* 08E0E8 8008D4E8 3C0543C8 */  lui   $a1, 0x43c8
/* 08E0EC 8008D4EC 3C063F00 */  lui   $a2, 0x3f00
/* 08E0F0 8008D4F0 0C008973 */  jal   move_f32_towards
/* 08E0F4 8008D4F4 AFA70018 */   sw    $a3, 0x18($sp)
/* 08E0F8 8008D4F8 10000007 */  b     .L8008D518
/* 08E0FC 8008D4FC 8FA70018 */   lw    $a3, 0x18($sp)
.L8008D500:
/* 08E100 8008D500 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08E104 8008D504 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08E108 8008D508 24050000 */  li    $a1, 0
/* 08E10C 8008D50C 0C008973 */  jal   move_f32_towards
/* 08E110 8008D510 AFA70018 */   sw    $a3, 0x18($sp)
/* 08E114 8008D514 8FA70018 */  lw    $a3, 0x18($sp)
.L8008D518:
/* 08E118 8008D518 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08E11C 8008D51C 44813000 */  mtc1  $at, $f6
/* 08E120 8008D520 C4E80080 */  lwc1  $f8, 0x80($a3)
/* 08E124 8008D524 4606403E */  c.le.s $f8, $f6
/* 08E128 8008D528 00000000 */  nop   
/* 08E12C 8008D52C 45020006 */  bc1fl .L8008D548
/* 08E130 8008D530 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08E134 8008D534 8CEF00BC */  lw    $t7, 0xbc($a3)
/* 08E138 8008D538 2401DFFF */  li    $at, -8193
/* 08E13C 8008D53C 01E1C024 */  and   $t8, $t7, $at
/* 08E140 8008D540 ACF800BC */  sw    $t8, 0xbc($a3)
/* 08E144 8008D544 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008D548:
/* 08E148 8008D548 27BD0018 */  addiu $sp, $sp, 0x18
/* 08E14C 8008D54C 03E00008 */  jr    $ra
/* 08E150 8008D550 00000000 */   nop   
