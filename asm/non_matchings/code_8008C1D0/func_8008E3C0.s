glabel func_8008E3C0
/* 08EFC0 8008E3C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08EFC4 8008E3C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08EFC8 8008E3C8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08EFCC 8008E3CC 00803825 */  move  $a3, $a0
/* 08EFD0 8008E3D0 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08EFD4 8008E3D4 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08EFD8 8008E3D8 AFA70018 */  sw    $a3, 0x18($sp)
/* 08EFDC 8008E3DC 24840224 */  addiu $a0, $a0, 0x224
/* 08EFE0 8008E3E0 0C008973 */  jal   move_f32_towards
/* 08EFE4 8008E3E4 3C053F80 */   lui   $a1, 0x3f80
/* 08EFE8 8008E3E8 8FA70018 */  lw    $a3, 0x18($sp)
/* 08EFEC 8008E3EC 3C05800E */  lui   $a1, %hi(gKartBoundingBoxTable) # 0x800e
/* 08EFF0 8008E3F0 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 08EFF4 8008E3F4 94EE0254 */  lhu   $t6, 0x254($a3)
/* 08EFF8 8008E3F8 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 08EFFC 8008E3FC 24E40070 */  addiu $a0, $a3, 0x70
/* 08F000 8008E400 000E7880 */  sll   $t7, $t6, 2
/* 08F004 8008E404 00AF2821 */  addu  $a1, $a1, $t7
/* 08F008 8008E408 0C008973 */  jal   move_f32_towards
/* 08F00C 8008E40C 8CA526B0 */   lw    $a1, %lo(gKartBoundingBoxTable)($a1) # 0x26b0($a1)
/* 08F010 8008E410 8FA70018 */  lw    $a3, 0x18($sp)
/* 08F014 8008E414 3C01BFFF */  lui   $at, (0xBFFFFFFF >> 16) # lui $at, 0xbfff
/* 08F018 8008E418 3421FFFF */  ori   $at, (0xBFFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F01C 8008E41C 8CF800BC */  lw    $t8, 0xbc($a3)
/* 08F020 8008E420 94E80254 */  lhu   $t0, 0x254($a3)
/* 08F024 8008E424 3C030002 */  lui   $v1, 2
/* 08F028 8008E428 0301C824 */  and   $t9, $t8, $at
/* 08F02C 8008E42C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 08F030 8008E430 44812000 */  mtc1  $at, $f4
/* 08F034 8008E434 3C01800E */  lui   $at, %hi(gKartBoundingBoxTable)
/* 08F038 8008E438 00084880 */  sll   $t1, $t0, 2
/* 08F03C 8008E43C 00290821 */  addu  $at, $at, $t1
/* 08F040 8008E440 ACF900BC */  sw    $t9, 0xbc($a3)
/* 08F044 8008E444 E4E40224 */  swc1  $f4, 0x224($a3)
/* 08F048 8008E448 C42626B0 */  lwc1  $f6, %lo(gKartBoundingBoxTable)($at)
/* 08F04C 8008E44C 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 08F050 8008E450 44814000 */  mtc1  $at, $f8
/* 08F054 8008E454 3C010800 */  lui   $at, 0x800
/* 08F058 8008E458 03215825 */  or    $t3, $t9, $at
/* 08F05C 8008E45C 01636024 */  and   $t4, $t3, $v1
/* 08F060 8008E460 01601025 */  move  $v0, $t3
/* 08F064 8008E464 A4E00DB6 */  sh    $zero, 0xdb6($a3)
/* 08F068 8008E468 ACEB00BC */  sw    $t3, 0xbc($a3)
/* 08F06C 8008E46C E4E60070 */  swc1  $f6, 0x70($a3)
/* 08F070 8008E470 146C0004 */  bne   $v1, $t4, .L8008E484
/* 08F074 8008E474 E4E80DC4 */   swc1  $f8, 0xdc4($a3)
/* 08F078 8008E478 84ED00AE */  lh    $t5, 0xae($a3)
/* 08F07C 8008E47C 01601025 */  move  $v0, $t3
/* 08F080 8008E480 A4ED002E */  sh    $t5, 0x2e($a3)
.L8008E484:
/* 08F084 8008E484 3C01FFFD */  lui   $at, (0xFFFDFFFF >> 16) # lui $at, 0xfffd
/* 08F088 8008E488 3421FFFF */  ori   $at, (0xFFFDFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08F08C 8008E48C 00417024 */  and   $t6, $v0, $at
/* 08F090 8008E490 ACEE00BC */  sw    $t6, 0xbc($a3)
/* 08F094 8008E494 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08F098 8008E498 27BD0018 */  addiu $sp, $sp, 0x18
/* 08F09C 8008E49C 03E00008 */  jr    $ra
/* 08F0A0 8008E4A0 00000000 */   nop   
