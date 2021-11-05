glabel func_8004B72C
/* 04C32C 8004B72C 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 04C330 8004B730 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 04C334 8004B734 8D430000 */  lw    $v1, ($t2)
/* 04C338 8004B738 3C0FFA00 */  lui   $t7, 0xfa00
/* 04C33C 8004B73C 30AB00FF */  andi  $t3, $a1, 0xff
/* 04C340 8004B740 246E0008 */  addiu $t6, $v1, 8
/* 04C344 8004B744 AD4E0000 */  sw    $t6, ($t2)
/* 04C348 8004B748 000B6400 */  sll   $t4, $t3, 0x10
/* 04C34C 8004B74C AC6F0000 */  sw    $t7, ($v1)
/* 04C350 8004B750 8FAB0018 */  lw    $t3, 0x18($sp)
/* 04C354 8004B754 0004CE00 */  sll   $t9, $a0, 0x18
/* 04C358 8004B758 032C6825 */  or    $t5, $t9, $t4
/* 04C35C 8004B75C 30CE00FF */  andi  $t6, $a2, 0xff
/* 04C360 8004B760 000E7A00 */  sll   $t7, $t6, 8
/* 04C364 8004B764 01AFC025 */  or    $t8, $t5, $t7
/* 04C368 8004B768 317900FF */  andi  $t9, $t3, 0xff
/* 04C36C 8004B76C 03196025 */  or    $t4, $t8, $t9
/* 04C370 8004B770 AC6C0004 */  sw    $t4, 4($v1)
/* 04C374 8004B774 8D430000 */  lw    $v1, ($t2)
/* 04C378 8004B778 3C0DFB00 */  lui   $t5, 0xfb00
/* 04C37C 8004B77C 00075E00 */  sll   $t3, $a3, 0x18
/* 04C380 8004B780 246E0008 */  addiu $t6, $v1, 8
/* 04C384 8004B784 AD4E0000 */  sw    $t6, ($t2)
/* 04C388 8004B788 AC6D0000 */  sw    $t5, ($v1)
/* 04C38C 8004B78C 8FB80010 */  lw    $t8, 0x10($sp)
/* 04C390 8004B790 8FAD0014 */  lw    $t5, 0x14($sp)
/* 04C394 8004B794 331900FF */  andi  $t9, $t8, 0xff
/* 04C398 8004B798 00196400 */  sll   $t4, $t9, 0x10
/* 04C39C 8004B79C 31AF00FF */  andi  $t7, $t5, 0xff
/* 04C3A0 8004B7A0 000FC200 */  sll   $t8, $t7, 8
/* 04C3A4 8004B7A4 016C7025 */  or    $t6, $t3, $t4
/* 04C3A8 8004B7A8 01D8C825 */  or    $t9, $t6, $t8
/* 04C3AC 8004B7AC 372B00FF */  ori   $t3, $t9, 0xff
/* 04C3B0 8004B7B0 AC6B0004 */  sw    $t3, 4($v1)
/* 04C3B4 8004B7B4 8D430000 */  lw    $v1, ($t2)
/* 04C3B8 8004B7B8 3C0F552E */  lui   $t7, (0x552EFF7F >> 16) # lui $t7, 0x552e
/* 04C3BC 8004B7BC 3C0DFC30 */  lui   $t5, (0xFC309661 >> 16) # lui $t5, 0xfc30
/* 04C3C0 8004B7C0 246C0008 */  addiu $t4, $v1, 8
/* 04C3C4 8004B7C4 AD4C0000 */  sw    $t4, ($t2)
/* 04C3C8 8004B7C8 35AD9661 */  ori   $t5, (0xFC309661 & 0xFFFF) # ori $t5, $t5, 0x9661
/* 04C3CC 8004B7CC 35EFFF7F */  ori   $t7, (0x552EFF7F & 0xFFFF) # ori $t7, $t7, 0xff7f
/* 04C3D0 8004B7D0 AC6F0004 */  sw    $t7, 4($v1)
/* 04C3D4 8004B7D4 03E00008 */  jr    $ra
/* 04C3D8 8004B7D8 AC6D0000 */   sw    $t5, ($v1)
