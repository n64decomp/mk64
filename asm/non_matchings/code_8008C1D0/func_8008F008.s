glabel func_8008F008
/* 08FC08 8008F008 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08FC0C 8008F00C AFBF0014 */  sw    $ra, 0x14($sp)
/* 08FC10 8008F010 948F0254 */  lhu   $t7, 0x254($a0)
/* 08FC14 8008F014 3C0E800E */  lui   $t6, %hi(D_800E261C) # $t6, 0x800e
/* 08FC18 8008F018 8DCE261C */  lw    $t6, %lo(D_800E261C)($t6)
/* 08FC1C 8008F01C 000FC080 */  sll   $t8, $t7, 2
/* 08FC20 8008F020 948800F8 */  lhu   $t0, 0xf8($a0)
/* 08FC24 8008F024 01D8C821 */  addu  $t9, $t6, $t8
/* 08FC28 8008F028 C7240000 */  lwc1  $f4, ($t9)
/* 08FC2C 8008F02C 240100FC */  li    $at, 252
/* 08FC30 8008F030 00803825 */  move  $a3, $a0
/* 08FC34 8008F034 1101000C */  beq   $t0, $at, .L8008F068
/* 08FC38 8008F038 E484009C */   swc1  $f4, 0x9c($a0)
/* 08FC3C 8008F03C 8C8900BC */  lw    $t1, 0xbc($a0)
/* 08FC40 8008F040 24010008 */  li    $at, 8
/* 08FC44 8008F044 24840080 */  addiu $a0, $a0, 0x80
/* 08FC48 8008F048 312A0008 */  andi  $t2, $t1, 8
/* 08FC4C 8008F04C 11410006 */  beq   $t2, $at, .L8008F068
/* 08FC50 8008F050 24050000 */   li    $a1, 0
/* 08FC54 8008F054 3C063F80 */  lui   $a2, 0x3f80
/* 08FC58 8008F058 0C008973 */  jal   move_f32_towards
/* 08FC5C 8008F05C AFA70018 */   sw    $a3, 0x18($sp)
/* 08FC60 8008F060 10000008 */  b     .L8008F084
/* 08FC64 8008F064 8FA70018 */   lw    $a3, 0x18($sp)
.L8008F068:
/* 08FC68 8008F068 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08FC6C 8008F06C 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08FC70 8008F070 24E40080 */  addiu $a0, $a3, 0x80
/* 08FC74 8008F074 3C054396 */  lui   $a1, 0x4396
/* 08FC78 8008F078 0C008973 */  jal   move_f32_towards
/* 08FC7C 8008F07C AFA70018 */   sw    $a3, 0x18($sp)
/* 08FC80 8008F080 8FA70018 */  lw    $a3, 0x18($sp)
.L8008F084:
/* 08FC84 8008F084 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08FC88 8008F088 44813000 */  mtc1  $at, $f6
/* 08FC8C 8008F08C C4E80080 */  lwc1  $f8, 0x80($a3)
/* 08FC90 8008F090 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 08FC94 8008F094 4606403E */  c.le.s $f8, $f6
/* 08FC98 8008F098 00000000 */  nop   
/* 08FC9C 8008F09C 4502000F */  bc1fl .L8008F0DC
/* 08FCA0 8008F0A0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 08FCA4 8008F0A4 44810000 */  mtc1  $at, $f0
/* 08FCA8 8008F0A8 C4F0009C */  lwc1  $f16, 0x9c($a3)
/* 08FCAC 8008F0AC C4E4008C */  lwc1  $f4, 0x8c($a3)
/* 08FCB0 8008F0B0 8CEB00BC */  lw    $t3, 0xbc($a3)
/* 08FCB4 8008F0B4 46008483 */  div.s $f18, $f16, $f0
/* 08FCB8 8008F0B8 44805000 */  mtc1  $zero, $f10
/* 08FCBC 8008F0BC 2401FFFB */  li    $at, -5
/* 08FCC0 8008F0C0 01616024 */  and   $t4, $t3, $at
/* 08FCC4 8008F0C4 ACEC00BC */  sw    $t4, 0xbc($a3)
/* 08FCC8 8008F0C8 E4EA0080 */  swc1  $f10, 0x80($a3)
/* 08FCCC 8008F0CC 46002183 */  div.s $f6, $f4, $f0
/* 08FCD0 8008F0D0 E4F2009C */  swc1  $f18, 0x9c($a3)
/* 08FCD4 8008F0D4 E4E6008C */  swc1  $f6, 0x8c($a3)
/* 08FCD8 8008F0D8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008F0DC:
/* 08FCDC 8008F0DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 08FCE0 8008F0E0 03E00008 */  jr    $ra
/* 08FCE4 8008F0E4 00000000 */   nop   
