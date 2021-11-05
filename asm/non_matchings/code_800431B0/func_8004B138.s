glabel func_8004B138
/* 04BD38 8004B138 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04BD3C 8004B13C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04BD40 8004B140 8D030000 */  lw    $v1, ($t0)
/* 04BD44 8004B144 30A900FF */  andi  $t1, $a1, 0xff
/* 04BD48 8004B148 00095400 */  sll   $t2, $t1, 0x10
/* 04BD4C 8004B14C 246E0008 */  addiu $t6, $v1, 8
/* 04BD50 8004B150 AD0E0000 */  sw    $t6, ($t0)
/* 04BD54 8004B154 3C0FFA00 */  lui   $t7, 0xfa00
/* 04BD58 8004B158 0004CE00 */  sll   $t9, $a0, 0x18
/* 04BD5C 8004B15C 30CC00FF */  andi  $t4, $a2, 0xff
/* 04BD60 8004B160 000C6A00 */  sll   $t5, $t4, 8
/* 04BD64 8004B164 032A5825 */  or    $t3, $t9, $t2
/* 04BD68 8004B168 AC6F0000 */  sw    $t7, ($v1)
/* 04BD6C 8004B16C 30EF00FF */  andi  $t7, $a3, 0xff
/* 04BD70 8004B170 016D7025 */  or    $t6, $t3, $t5
/* 04BD74 8004B174 01CFC025 */  or    $t8, $t6, $t7
/* 04BD78 8004B178 03E00008 */  jr    $ra
/* 04BD7C 8004B17C AC780004 */   sw    $t8, 4($v1)

/* 04BD80 8004B180 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04BD84 8004B184 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04BD88 8004B188 8D030000 */  lw    $v1, ($t0)
/* 04BD8C 8004B18C 30A900FF */  andi  $t1, $a1, 0xff
/* 04BD90 8004B190 00095400 */  sll   $t2, $t1, 0x10
/* 04BD94 8004B194 246E0008 */  addiu $t6, $v1, 8
/* 04BD98 8004B198 AD0E0000 */  sw    $t6, ($t0)
/* 04BD9C 8004B19C 3C0FFB00 */  lui   $t7, 0xfb00
/* 04BDA0 8004B1A0 0004CE00 */  sll   $t9, $a0, 0x18
/* 04BDA4 8004B1A4 30CC00FF */  andi  $t4, $a2, 0xff
/* 04BDA8 8004B1A8 000C6A00 */  sll   $t5, $t4, 8
/* 04BDAC 8004B1AC 032A5825 */  or    $t3, $t9, $t2
/* 04BDB0 8004B1B0 AC6F0000 */  sw    $t7, ($v1)
/* 04BDB4 8004B1B4 30EF00FF */  andi  $t7, $a3, 0xff
/* 04BDB8 8004B1B8 016D7025 */  or    $t6, $t3, $t5
/* 04BDBC 8004B1BC 01CFC025 */  or    $t8, $t6, $t7
/* 04BDC0 8004B1C0 03E00008 */  jr    $ra
/* 04BDC4 8004B1C4 AC780004 */   sw    $t8, 4($v1)
