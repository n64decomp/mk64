glabel func_800C5384
/* 0C5F84 800C5384 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C5F88 800C5388 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0C5F8C 800C538C 309500FF */  andi  $s5, $a0, 0xff
/* 0C5F90 800C5390 00157100 */  sll   $t6, $s5, 4
/* 0C5F94 800C5394 01D57023 */  subu  $t6, $t6, $s5
/* 0C5F98 800C5398 3C0F8019 */  lui   $t7, %hi(D_80191420) # $t7, 0x8019
/* 0C5F9C 800C539C 25EF1420 */  addiu $t7, %lo(D_80191420) # addiu $t7, $t7, 0x1420
/* 0C5FA0 800C53A0 000E7180 */  sll   $t6, $t6, 6
/* 0C5FA4 800C53A4 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0C5FA8 800C53A8 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0C5FAC 800C53AC AFB70044 */  sw    $s7, 0x44($sp)
/* 0C5FB0 800C53B0 AFB60040 */  sw    $s6, 0x40($sp)
/* 0C5FB4 800C53B4 AFB40038 */  sw    $s4, 0x38($sp)
/* 0C5FB8 800C53B8 AFB30034 */  sw    $s3, 0x34($sp)
/* 0C5FBC 800C53BC AFB20030 */  sw    $s2, 0x30($sp)
/* 0C5FC0 800C53C0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C5FC4 800C53C4 AFB00028 */  sw    $s0, 0x28($sp)
/* 0C5FC8 800C53C8 AFA40050 */  sw    $a0, 0x50($sp)
/* 0C5FCC 800C53CC 01CFC021 */  addu  $t8, $t6, $t7
/* 0C5FD0 800C53D0 9311002B */  lbu   $s1, 0x2b($t8)
/* 0C5FD4 800C53D4 241700FF */  li    $s7, 255
/* 0C5FD8 800C53D8 00A0B025 */  move  $s6, $a1
/* 0C5FDC 800C53DC 03A0F025 */  move  $fp, $sp
/* 0C5FE0 800C53E0 12F10028 */  beq   $s7, $s1, .L800C5484
/* 0C5FE4 800C53E4 00009025 */   move  $s2, $zero
/* 0C5FE8 800C53E8 0015C900 */  sll   $t9, $s5, 4
/* 0C5FEC 800C53EC 0335C823 */  subu  $t9, $t9, $s5
/* 0C5FF0 800C53F0 0019C980 */  sll   $t9, $t9, 6
/* 0C5FF4 800C53F4 032F9821 */  addu  $s3, $t9, $t7
/* 0C5FF8 800C53F8 00114080 */  sll   $t0, $s1, 2
.L800C53FC:
/* 0C5FFC 800C53FC 01114023 */  subu  $t0, $t0, $s1
/* 0C6000 800C5400 00084100 */  sll   $t0, $t0, 4
/* 0C6004 800C5404 02688021 */  addu  $s0, $s3, $t0
/* 0C6008 800C5408 8E090000 */  lw    $t1, ($s0)
/* 0C600C 800C540C 00125080 */  sll   $t2, $s2, 2
/* 0C6010 800C5410 56C90015 */  bnel  $s6, $t1, .L800C5468
/* 0C6014 800C5414 323200FF */   andi  $s2, $s1, 0xff
/* 0C6018 800C5418 92020028 */  lbu   $v0, 0x28($s0)
/* 0C601C 800C541C 01525023 */  subu  $t2, $t2, $s2
/* 0C6020 800C5420 000A5100 */  sll   $t2, $t2, 4
/* 0C6024 800C5424 28410003 */  slti  $at, $v0, 3
/* 0C6028 800C5428 14200008 */  bnez  $at, .L800C544C
/* 0C602C 800C542C 026AA021 */   addu  $s4, $s3, $t2
/* 0C6030 800C5430 920B002C */  lbu   $t3, 0x2c($s0)
/* 0C6034 800C5434 3C010602 */  lui   $at, 0x602
/* 0C6038 800C5438 00002825 */  move  $a1, $zero
/* 0C603C 800C543C 000B6200 */  sll   $t4, $t3, 8
/* 0C6040 800C5440 0C032EFA */  jal   func_800CBBE8
/* 0C6044 800C5444 01812025 */   or    $a0, $t4, $at
/* 0C6048 800C5448 92020028 */  lbu   $v0, 0x28($s0)
.L800C544C:
/* 0C604C 800C544C 10400003 */  beqz  $v0, .L800C545C
/* 0C6050 800C5450 32A400FF */   andi  $a0, $s5, 0xff
/* 0C6054 800C5454 0C0311CF */  jal   func_800C473C
/* 0C6058 800C5458 322500FF */   andi  $a1, $s1, 0xff
.L800C545C:
/* 0C605C 800C545C 10000007 */  b     .L800C547C
/* 0C6060 800C5460 9291002B */   lbu   $s1, 0x2b($s4)
/* 0C6064 800C5464 323200FF */  andi  $s2, $s1, 0xff
.L800C5468:
/* 0C6068 800C5468 00127080 */  sll   $t6, $s2, 2
/* 0C606C 800C546C 01D27023 */  subu  $t6, $t6, $s2
/* 0C6070 800C5470 000E7100 */  sll   $t6, $t6, 4
/* 0C6074 800C5474 026EC021 */  addu  $t8, $s3, $t6
/* 0C6078 800C5478 9311002B */  lbu   $s1, 0x2b($t8)
.L800C547C:
/* 0C607C 800C547C 56F1FFDF */  bnel  $s7, $s1, .L800C53FC
/* 0C6080 800C5480 00114080 */   sll   $t0, $s1, 2
.L800C5484:
/* 0C6084 800C5484 8FDF004C */  lw    $ra, 0x4c($fp)
/* 0C6088 800C5488 03C0E825 */  move  $sp, $fp
/* 0C608C 800C548C 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C6090 800C5490 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C6094 800C5494 8FD20030 */  lw    $s2, 0x30($fp)
/* 0C6098 800C5498 8FD30034 */  lw    $s3, 0x34($fp)
/* 0C609C 800C549C 8FD40038 */  lw    $s4, 0x38($fp)
/* 0C60A0 800C54A0 8FD5003C */  lw    $s5, 0x3c($fp)
/* 0C60A4 800C54A4 8FD60040 */  lw    $s6, 0x40($fp)
/* 0C60A8 800C54A8 8FD70044 */  lw    $s7, 0x44($fp)
/* 0C60AC 800C54AC 8FDE0048 */  lw    $fp, 0x48($fp)
/* 0C60B0 800C54B0 03E00008 */  jr    $ra
/* 0C60B4 800C54B4 27BD0050 */   addiu $sp, $sp, 0x50
