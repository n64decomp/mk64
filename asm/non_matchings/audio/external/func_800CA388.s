glabel func_800CA388
/* 0CAF88 800CA388 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CAF8C 800CA38C AFB00024 */  sw    $s0, 0x24($sp)
/* 0CAF90 800CA390 00808025 */  move  $s0, $a0
/* 0CAF94 800CA394 00107040 */  sll   $t6, $s0, 1
/* 0CAF98 800CA398 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CAF9C 800CA39C AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CAFA0 800CA3A0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0CAFA4 800CA3A4 31D000FF */  andi  $s0, $t6, 0xff
/* 0CAFA8 800CA3A8 03A0F025 */  move  $fp, $sp
/* 0CAFAC 800CA3AC 3206FFFF */  andi  $a2, $s0, 0xffff
/* 0CAFB0 800CA3B0 00002025 */  move  $a0, $zero
/* 0CAFB4 800CA3B4 0C03162E */  jal   func_800C58B8
/* 0CAFB8 800CA3B8 00002825 */   move  $a1, $zero
/* 0CAFBC 800CA3BC 24040001 */  li    $a0, 1
/* 0CAFC0 800CA3C0 00002825 */  move  $a1, $zero
/* 0CAFC4 800CA3C4 0C03162E */  jal   func_800C58B8
/* 0CAFC8 800CA3C8 3206FFFF */   andi  $a2, $s0, 0xffff
/* 0CAFCC 800CA3CC 24040002 */  li    $a0, 2
/* 0CAFD0 800CA3D0 00002825 */  move  $a1, $zero
/* 0CAFD4 800CA3D4 0C03162E */  jal   func_800C58B8
/* 0CAFD8 800CA3D8 3206FFFF */   andi  $a2, $s0, 0xffff
/* 0CAFDC 800CA3DC 24040003 */  li    $a0, 3
/* 0CAFE0 800CA3E0 00002825 */  move  $a1, $zero
/* 0CAFE4 800CA3E4 0C03162E */  jal   func_800C58B8
/* 0CAFE8 800CA3E8 3206FFFF */   andi  $a2, $s0, 0xffff
/* 0CAFEC 800CA3EC 24040005 */  li    $a0, 5
/* 0CAFF0 800CA3F0 00002825 */  move  $a1, $zero
/* 0CAFF4 800CA3F4 0C03162E */  jal   func_800C58B8
/* 0CAFF8 800CA3F8 3206FFFF */   andi  $a2, $s0, 0xffff
/* 0CAFFC 800CA3FC 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CB000 800CA400 03C0E825 */  move  $sp, $fp
/* 0CB004 800CA404 8FD00024 */  lw    $s0, 0x24($fp)
/* 0CB008 800CA408 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CB00C 800CA40C 03E00008 */  jr    $ra
/* 0CB010 800CA410 27BD0030 */   addiu $sp, $sp, 0x30
