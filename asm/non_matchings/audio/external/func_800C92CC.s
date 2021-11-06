glabel func_800C92CC
/* 0C9ECC 800C92CC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0C9ED0 800C92D0 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0C9ED4 800C92D4 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0C9ED8 800C92D8 AFBE0058 */  sw    $fp, 0x58($sp)
/* 0C9EDC 800C92DC AFB5004C */  sw    $s5, 0x4c($sp)
/* 0C9EE0 800C92E0 AFB40048 */  sw    $s4, 0x48($sp)
/* 0C9EE4 800C92E4 309400FF */  andi  $s4, $a0, 0xff
/* 0C9EE8 800C92E8 00A0A825 */  move  $s5, $a1
/* 0C9EEC 800C92EC 03A0F025 */  move  $fp, $sp
/* 0C9EF0 800C92F0 AFBF005C */  sw    $ra, 0x5c($sp)
/* 0C9EF4 800C92F4 AFB70054 */  sw    $s7, 0x54($sp)
/* 0C9EF8 800C92F8 AFB60050 */  sw    $s6, 0x50($sp)
/* 0C9EFC 800C92FC AFB30044 */  sw    $s3, 0x44($sp)
/* 0C9F00 800C9300 AFB20040 */  sw    $s2, 0x40($sp)
/* 0C9F04 800C9304 AFB1003C */  sw    $s1, 0x3c($sp)
/* 0C9F08 800C9308 AFB00038 */  sw    $s0, 0x38($sp)
/* 0C9F0C 800C930C F7B40030 */  sdc1  $f20, 0x30($sp)
/* 0C9F10 800C9310 15C00056 */  bnez  $t6, .L800C946C
/* 0C9F14 800C9314 AFA40078 */   sw    $a0, 0x78($sp)
/* 0C9F18 800C9318 3C0F800F */  lui   $t7, %hi(D_800EA0F0) # $t7, 0x800f
/* 0C9F1C 800C931C 91EFA0F0 */  lbu   $t7, %lo(D_800EA0F0)($t7)
/* 0C9F20 800C9320 3C02800F */  lui   $v0, %hi(D_800EA1C0) # $v0, 0x800f
/* 0C9F24 800C9324 55E00052 */  bnel  $t7, $zero, .L800C9470
/* 0C9F28 800C9328 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0C9F2C 800C932C 9042A1C0 */  lbu   $v0, %lo(D_800EA1C0)($v0)
/* 0C9F30 800C9330 28410002 */  slti  $at, $v0, 2
/* 0C9F34 800C9334 5020004E */  beql  $at, $zero, .L800C9470
/* 0C9F38 800C9338 8FDF005C */   lw    $ra, 0x5c($fp)
/* 0C9F3C 800C933C 0440004B */  bltz  $v0, .L800C946C
/* 0C9F40 800C9340 00008025 */   move  $s0, $zero
/* 0C9F44 800C9344 0014C0C0 */  sll   $t8, $s4, 3
/* 0C9F48 800C9348 0314C023 */  subu  $t8, $t8, $s4
/* 0C9F4C 800C934C 0018C100 */  sll   $t8, $t8, 4
/* 0C9F50 800C9350 0314C023 */  subu  $t8, $t8, $s4
/* 0C9F54 800C9354 0018C080 */  sll   $t8, $t8, 2
/* 0C9F58 800C9358 0314C023 */  subu  $t8, $t8, $s4
/* 0C9F5C 800C935C 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 0C9F60 800C9360 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 0C9F64 800C9364 0018C0C0 */  sll   $t8, $t8, 3
/* 0C9F68 800C9368 03198821 */  addu  $s1, $t8, $t9
/* 0C9F6C 800C936C 3C01432A */  li    $at, 0x432A0000 # 170.000000
/* 0C9F70 800C9370 26250014 */  addiu $a1, $s1, 0x14
/* 0C9F74 800C9374 26260034 */  addiu $a2, $s1, 0x34
/* 0C9F78 800C9378 3C17800F */  lui   $s7, %hi(D_800E9F2C) # $s7, 0x800f
/* 0C9F7C 800C937C 3C16800F */  lui   $s6, %hi(D_800EA1C8) # $s6, 0x800f
/* 0C9F80 800C9380 3C13800F */  lui   $s3, %hi(D_800EA1D4) # $s3, 0x800f
/* 0C9F84 800C9384 4481A000 */  mtc1  $at, $f20
/* 0C9F88 800C9388 2673A1D4 */  addiu $s3, %lo(D_800EA1D4) # addiu $s3, $s3, -0x5e2c
/* 0C9F8C 800C938C 26D6A1C8 */  addiu $s6, %lo(D_800EA1C8) # addiu $s6, $s6, -0x5e38
/* 0C9F90 800C9390 26F79F2C */  addiu $s7, %lo(D_800E9F2C) # addiu $s7, $s7, -0x60d4
/* 0C9F94 800C9394 AFA60064 */  sw    $a2, 0x64($sp)
/* 0C9F98 800C9398 AFA50068 */  sw    $a1, 0x68($sp)
/* 0C9F9C 800C939C 3C124000 */  lui   $s2, 0x4000
.L800C93A0:
/* 0C9FA0 800C93A0 8FC50068 */  lw    $a1, 0x68($fp)
/* 0C9FA4 800C93A4 8FC60064 */  lw    $a2, 0x64($fp)
/* 0C9FA8 800C93A8 AFB50014 */  sw    $s5, 0x14($sp)
/* 0C9FAC 800C93AC AFB00010 */  sw    $s0, 0x10($sp)
/* 0C9FB0 800C93B0 328400FF */  andi  $a0, $s4, 0xff
/* 0C9FB4 800C93B4 0C030722 */  jal   func_800C1C88
/* 0C9FB8 800C93B8 02C03825 */   move  $a3, $s6
/* 0C9FBC 800C93BC 10400023 */  beqz  $v0, .L800C944C
/* 0C9FC0 800C93C0 00401825 */   move  $v1, $v0
/* 0C9FC4 800C93C4 E4540034 */  swc1  $f20, 0x34($v0)
/* 0C9FC8 800C93C8 8E2C00BC */  lw    $t4, 0xbc($s1)
/* 0C9FCC 800C93CC 00144900 */  sll   $t1, $s4, 4
/* 0C9FD0 800C93D0 3C0B800F */  lui   $t3, %hi(D_800EA06C) # $t3, 0x800f
/* 0C9FD4 800C93D4 256BA06C */  addiu $t3, %lo(D_800EA06C) # addiu $t3, $t3, -0x5f94
/* 0C9FD8 800C93D8 252A000C */  addiu $t2, $t1, 0xc
/* 0C9FDC 800C93DC 01926824 */  and   $t5, $t4, $s2
/* 0C9FE0 800C93E0 164D0011 */  bne   $s2, $t5, .L800C9428
/* 0C9FE4 800C93E4 014B4021 */   addu  $t0, $t2, $t3
/* 0C9FE8 800C93E8 02F47021 */  addu  $t6, $s7, $s4
/* 0C9FEC 800C93EC 91CF0000 */  lbu   $t7, ($t6)
/* 0C9FF0 800C93F0 24450018 */  addiu $a1, $v0, 0x18
/* 0C9FF4 800C93F4 320600FF */  andi  $a2, $s0, 0xff
/* 0C9FF8 800C93F8 29E1001F */  slti  $at, $t7, 0x1f
/* 0C9FFC 800C93FC 1420000A */  bnez  $at, .L800C9428
/* 0CA000 800C9400 3C07800F */   lui   $a3, %hi(D_800EA150) # $a3, 0x800f
/* 0CA004 800C9404 96380254 */  lhu   $t8, 0x254($s1)
/* 0CA008 800C9408 24E7A150 */  addiu $a3, %lo(D_800EA150) # addiu $a3, $a3, -0x5eb0
/* 0CA00C 800C940C AFB30010 */  sw    $s3, 0x10($sp)
/* 0CA010 800C9410 0018C900 */  sll   $t9, $t8, 4
/* 0CA014 800C9414 03352021 */  addu  $a0, $t9, $s5
/* 0CA018 800C9418 0C031052 */  jal   play_sound
/* 0CA01C 800C941C AFA80014 */   sw    $t0, 0x14($sp)
/* 0CA020 800C9420 1000000A */  b     .L800C944C
/* 0CA024 800C9424 00000000 */   nop   
.L800C9428:
/* 0CA028 800C9428 96290254 */  lhu   $t1, 0x254($s1)
/* 0CA02C 800C942C 24650018 */  addiu $a1, $v1, 0x18
/* 0CA030 800C9430 320600FF */  andi  $a2, $s0, 0xff
/* 0CA034 800C9434 00095100 */  sll   $t2, $t1, 4
/* 0CA038 800C9438 01552021 */  addu  $a0, $t2, $s5
/* 0CA03C 800C943C 2467002C */  addiu $a3, $v1, 0x2c
/* 0CA040 800C9440 AFB30010 */  sw    $s3, 0x10($sp)
/* 0CA044 800C9444 0C031052 */  jal   play_sound
/* 0CA048 800C9448 AFA80014 */   sw    $t0, 0x14($sp)
.L800C944C:
/* 0CA04C 800C944C 3C0C800F */  lui   $t4, %hi(D_800EA1C0) # $t4, 0x800f
/* 0CA050 800C9450 918CA1C0 */  lbu   $t4, %lo(D_800EA1C0)($t4)
/* 0CA054 800C9454 26100001 */  addiu $s0, $s0, 1
/* 0CA058 800C9458 320B00FF */  andi  $t3, $s0, 0xff
/* 0CA05C 800C945C 258D0001 */  addiu $t5, $t4, 1
/* 0CA060 800C9460 016D082A */  slt   $at, $t3, $t5
/* 0CA064 800C9464 1420FFCE */  bnez  $at, .L800C93A0
/* 0CA068 800C9468 01608025 */   move  $s0, $t3
.L800C946C:
/* 0CA06C 800C946C 8FDF005C */  lw    $ra, 0x5c($fp)
.L800C9470:
/* 0CA070 800C9470 03C0E825 */  move  $sp, $fp
/* 0CA074 800C9474 D7D40030 */  ldc1  $f20, 0x30($fp)
/* 0CA078 800C9478 8FD00038 */  lw    $s0, 0x38($fp)
/* 0CA07C 800C947C 8FD1003C */  lw    $s1, 0x3c($fp)
/* 0CA080 800C9480 8FD20040 */  lw    $s2, 0x40($fp)
/* 0CA084 800C9484 8FD30044 */  lw    $s3, 0x44($fp)
/* 0CA088 800C9488 8FD40048 */  lw    $s4, 0x48($fp)
/* 0CA08C 800C948C 8FD5004C */  lw    $s5, 0x4c($fp)
/* 0CA090 800C9490 8FD60050 */  lw    $s6, 0x50($fp)
/* 0CA094 800C9494 8FD70054 */  lw    $s7, 0x54($fp)
/* 0CA098 800C9498 8FDE0058 */  lw    $fp, 0x58($fp)
/* 0CA09C 800C949C 03E00008 */  jr    $ra
/* 0CA0A0 800C94A0 27BD0078 */   addiu $sp, $sp, 0x78
