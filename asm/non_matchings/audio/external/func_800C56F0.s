glabel func_800C56F0
/* 0C62F0 800C56F0 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 0C62F4 800C56F4 3C01F000 */  lui   $at, 0xf000
/* 0C62F8 800C56F8 00817024 */  and   $t6, $a0, $at
/* 0C62FC 800C56FC 000E7F02 */  srl   $t7, $t6, 0x1c
/* 0C6300 800C5700 31F800FF */  andi  $t8, $t7, 0xff
/* 0C6304 800C5704 0018C900 */  sll   $t9, $t8, 4
/* 0C6308 800C5708 0338C823 */  subu  $t9, $t9, $t8
/* 0C630C 800C570C 3C088019 */  lui   $t0, %hi(sSoundBanks) # $t0, 0x8019
/* 0C6310 800C5710 25081420 */  addiu $t0, %lo(sSoundBanks) # addiu $t0, $t0, 0x1420
/* 0C6314 800C5714 0019C980 */  sll   $t9, $t9, 6
/* 0C6318 800C5718 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0C631C 800C571C AFBE0048 */  sw    $fp, 0x48($sp)
/* 0C6320 800C5720 AFB70044 */  sw    $s7, 0x44($sp)
/* 0C6324 800C5724 AFB60040 */  sw    $s6, 0x40($sp)
/* 0C6328 800C5728 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0C632C 800C572C AFB40038 */  sw    $s4, 0x38($sp)
/* 0C6330 800C5730 AFB30034 */  sw    $s3, 0x34($sp)
/* 0C6334 800C5734 AFB20030 */  sw    $s2, 0x30($sp)
/* 0C6338 800C5738 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C633C 800C573C AFB00028 */  sw    $s0, 0x28($sp)
/* 0C6340 800C5740 AFA400A0 */  sw    $a0, 0xa0($sp)
/* 0C6344 800C5744 03284821 */  addu  $t1, $t9, $t0
/* 0C6348 800C5748 9131002B */  lbu   $s1, 0x2b($t1)
/* 0C634C 800C574C 241600FF */  li    $s6, 255
/* 0C6350 800C5750 03A0F025 */  move  $fp, $sp
/* 0C6354 800C5754 0300A825 */  move  $s5, $t8
/* 0C6358 800C5758 12D10029 */  beq   $s6, $s1, .L800C5800
/* 0C635C 800C575C 00009025 */   move  $s2, $zero
/* 0C6360 800C5760 00185100 */  sll   $t2, $t8, 4
/* 0C6364 800C5764 01585023 */  subu  $t2, $t2, $t8
/* 0C6368 800C5768 000A5180 */  sll   $t2, $t2, 6
/* 0C636C 800C576C 01489821 */  addu  $s3, $t2, $t0
/* 0C6370 800C5770 24170030 */  li    $s7, 48
.L800C5774:
/* 0C6374 800C5774 02370019 */  multu $s1, $s7
/* 0C6378 800C5778 8FCC00A0 */  lw    $t4, 0xa0($fp)
/* 0C637C 800C577C 00127080 */  sll   $t6, $s2, 2
/* 0C6380 800C5780 00005812 */  mflo  $t3
/* 0C6384 800C5784 026B8021 */  addu  $s0, $s3, $t3
/* 0C6388 800C5788 8E0D0024 */  lw    $t5, 0x24($s0)
/* 0C638C 800C578C 558D0015 */  bnel  $t4, $t5, .L800C57E4
/* 0C6390 800C5790 323200FF */   andi  $s2, $s1, 0xff
/* 0C6394 800C5794 92020028 */  lbu   $v0, 0x28($s0)
/* 0C6398 800C5798 01D27023 */  subu  $t6, $t6, $s2
/* 0C639C 800C579C 000E7100 */  sll   $t6, $t6, 4
/* 0C63A0 800C57A0 28410003 */  slti  $at, $v0, 3
/* 0C63A4 800C57A4 14200008 */  bnez  $at, .L800C57C8
/* 0C63A8 800C57A8 026EA021 */   addu  $s4, $s3, $t6
/* 0C63AC 800C57AC 920F002C */  lbu   $t7, 0x2c($s0)
/* 0C63B0 800C57B0 3C010602 */  lui   $at, 0x602
/* 0C63B4 800C57B4 00002825 */  move  $a1, $zero
/* 0C63B8 800C57B8 000FC200 */  sll   $t8, $t7, 8
/* 0C63BC 800C57BC 0C032EFA */  jal   func_800CBBE8
/* 0C63C0 800C57C0 03012025 */   or    $a0, $t8, $at
/* 0C63C4 800C57C4 92020028 */  lbu   $v0, 0x28($s0)
.L800C57C8:
/* 0C63C8 800C57C8 10400003 */  beqz  $v0, .L800C57D8
/* 0C63CC 800C57CC 32A400FF */   andi  $a0, $s5, 0xff
/* 0C63D0 800C57D0 0C0311CF */  jal   delete_sound_from_bank
/* 0C63D4 800C57D4 322500FF */   andi  $a1, $s1, 0xff
.L800C57D8:
/* 0C63D8 800C57D8 10000007 */  b     .L800C57F8
/* 0C63DC 800C57DC 9291002B */   lbu   $s1, 0x2b($s4)
/* 0C63E0 800C57E0 323200FF */  andi  $s2, $s1, 0xff
.L800C57E4:
/* 0C63E4 800C57E4 00124880 */  sll   $t1, $s2, 2
/* 0C63E8 800C57E8 01324823 */  subu  $t1, $t1, $s2
/* 0C63EC 800C57EC 00094900 */  sll   $t1, $t1, 4
/* 0C63F0 800C57F0 02695021 */  addu  $t2, $s3, $t1
/* 0C63F4 800C57F4 9151002B */  lbu   $s1, 0x2b($t2)
.L800C57F8:
/* 0C63F8 800C57F8 16D1FFDE */  bne   $s6, $s1, .L800C5774
/* 0C63FC 800C57FC 00000000 */   nop   
.L800C5800:
/* 0C6400 800C5800 8FC800A0 */  lw    $t0, 0xa0($fp)
/* 0C6404 800C5804 24040005 */  li    $a0, 5
/* 0C6408 800C5808 27C50068 */  addiu $a1, $fp, 0x68
/* 0C640C 800C580C 0C031073 */  jal   func_800C41CC
/* 0C6410 800C5810 AFC8008C */   sw    $t0, 0x8c($fp)
/* 0C6414 800C5814 8FDF004C */  lw    $ra, 0x4c($fp)
/* 0C6418 800C5818 03C0E825 */  move  $sp, $fp
/* 0C641C 800C581C 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C6420 800C5820 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C6424 800C5824 8FD20030 */  lw    $s2, 0x30($fp)
/* 0C6428 800C5828 8FD30034 */  lw    $s3, 0x34($fp)
/* 0C642C 800C582C 8FD40038 */  lw    $s4, 0x38($fp)
/* 0C6430 800C5830 8FD5003C */  lw    $s5, 0x3c($fp)
/* 0C6434 800C5834 8FD60040 */  lw    $s6, 0x40($fp)
/* 0C6438 800C5838 8FD70044 */  lw    $s7, 0x44($fp)
/* 0C643C 800C583C 8FDE0048 */  lw    $fp, 0x48($fp)
/* 0C6440 800C5840 03E00008 */  jr    $ra
/* 0C6444 800C5844 27BD00A0 */   addiu $sp, $sp, 0xa0
