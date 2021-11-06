glabel func_800C86D8
/* 0C92D8 800C86D8 308E00FF */  andi  $t6, $a0, 0xff
/* 0C92DC 800C86DC 000E78C0 */  sll   $t7, $t6, 3
/* 0C92E0 800C86E0 01EE7823 */  subu  $t7, $t7, $t6
/* 0C92E4 800C86E4 000F7900 */  sll   $t7, $t7, 4
/* 0C92E8 800C86E8 01EE7823 */  subu  $t7, $t7, $t6
/* 0C92EC 800C86EC 000F7880 */  sll   $t7, $t7, 2
/* 0C92F0 800C86F0 01EE7823 */  subu  $t7, $t7, $t6
/* 0C92F4 800C86F4 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 0C92F8 800C86F8 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 0C92FC 800C86FC 000F78C0 */  sll   $t7, $t7, 3
/* 0C9300 800C8700 01F81021 */  addu  $v0, $t7, $t8
/* 0C9304 800C8704 8C5900BC */  lw    $t9, 0xbc($v0)
/* 0C9308 800C8708 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C930C 800C870C 3C034000 */  lui   $v1, 0x4000
/* 0C9310 800C8710 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9314 800C8714 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9318 800C8718 03234024 */  and   $t0, $t9, $v1
/* 0C931C 800C871C 01C02025 */  move  $a0, $t6
/* 0C9320 800C8720 03A0F025 */  move  $fp, $sp
/* 0C9324 800C8724 1068000D */  beq   $v1, $t0, .L800C875C
/* 0C9328 800C8728 AFBF002C */   sw    $ra, 0x2c($sp)
/* 0C932C 800C872C 3C09800F */  lui   $t1, %hi(D_800E9F24)
/* 0C9330 800C8730 012E4821 */  addu  $t1, $t1, $t6
/* 0C9334 800C8734 91299F24 */  lbu   $t1, %lo(D_800E9F24)($t1)
/* 0C9338 800C8738 24010001 */  li    $at, 1
/* 0C933C 800C873C 55210008 */  bnel  $t1, $at, .L800C8760
/* 0C9340 800C8740 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9344 800C8744 94450254 */  lhu   $a1, 0x254($v0)
/* 0C9348 800C8748 3C012900 */  lui   $at, (0x29008008 >> 16) # lui $at, 0x2900
/* 0C934C 800C874C 34218008 */  ori   $at, (0x29008008 & 0xFFFF) # ori $at, $at, 0x8008
/* 0C9350 800C8750 00055100 */  sll   $t2, $a1, 4
/* 0C9354 800C8754 0C03243D */  jal   func_800C90F4
/* 0C9358 800C8758 01412821 */   addu  $a1, $t2, $at
.L800C875C:
/* 0C935C 800C875C 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C8760:
/* 0C9360 800C8760 03C0E825 */  move  $sp, $fp
/* 0C9364 800C8764 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9368 800C8768 03E00008 */  jr    $ra
/* 0C936C 800C876C 27BD0030 */   addiu $sp, $sp, 0x30
