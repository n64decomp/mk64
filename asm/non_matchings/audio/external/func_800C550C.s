glabel func_800C550C
/* 0C610C 800C550C 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0C6110 800C5510 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C6114 800C5514 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C6118 800C5518 AFB00028 */  sw    $s0, 0x28($sp)
/* 0C611C 800C551C 00808825 */  move  $s1, $a0
/* 0C6120 800C5520 03A0F025 */  move  $fp, $sp
/* 0C6124 800C5524 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C6128 800C5528 00008025 */  move  $s0, $zero
.L800C552C:
/* 0C612C 800C552C 320400FF */  andi  $a0, $s0, 0xff
/* 0C6130 800C5530 0C0314E1 */  jal   func_800C5384
/* 0C6134 800C5534 02202825 */   move  $a1, $s1
/* 0C6138 800C5538 26100001 */  addiu $s0, $s0, 1
/* 0C613C 800C553C 320E00FF */  andi  $t6, $s0, 0xff
/* 0C6140 800C5540 29C10006 */  slti  $at, $t6, 6
/* 0C6144 800C5544 1420FFF9 */  bnez  $at, .L800C552C
/* 0C6148 800C5548 01C08025 */   move  $s0, $t6
/* 0C614C 800C554C AFD1003C */  sw    $s1, 0x3c($fp)
/* 0C6150 800C5550 24040002 */  li    $a0, 2
/* 0C6154 800C5554 0C031073 */  jal   func_800C41CC
/* 0C6158 800C5558 27C5003C */   addiu $a1, $fp, 0x3c
/* 0C615C 800C555C 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0C6160 800C5560 03C0E825 */  move  $sp, $fp
/* 0C6164 800C5564 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C6168 800C5568 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C616C 800C556C 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C6170 800C5570 03E00008 */  jr    $ra
/* 0C6174 800C5574 27BD0070 */   addiu $sp, $sp, 0x70
