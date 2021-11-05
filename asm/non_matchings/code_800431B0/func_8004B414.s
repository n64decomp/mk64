glabel func_8004B414
/* 04C014 8004B414 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04C018 8004B418 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04C01C 8004B41C 8D230000 */  lw    $v1, ($t1)
/* 04C020 8004B420 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* 04C024 8004B424 3C18FF2D */  lui   $t8, (0xFF2DFEFF >> 16) # lui $t8, 0xff2d
/* 04C028 8004B428 246E0008 */  addiu $t6, $v1, 8
/* 04C02C 8004B42C AD2E0000 */  sw    $t6, ($t1)
/* 04C030 8004B430 3718FEFF */  ori   $t8, (0xFF2DFEFF & 0xFFFF) # ori $t8, $t8, 0xfeff
/* 04C034 8004B434 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* 04C038 8004B438 AC6F0000 */  sw    $t7, ($v1)
/* 04C03C 8004B43C AC780004 */  sw    $t8, 4($v1)
/* 04C040 8004B440 8D230000 */  lw    $v1, ($t1)
/* 04C044 8004B444 30AD00FF */  andi  $t5, $a1, 0xff
/* 04C048 8004B448 000D7400 */  sll   $t6, $t5, 0x10
/* 04C04C 8004B44C 24790008 */  addiu $t9, $v1, 8
/* 04C050 8004B450 AD390000 */  sw    $t9, ($t1)
/* 04C054 8004B454 30D800FF */  andi  $t8, $a2, 0xff
/* 04C058 8004B458 3C0AFA00 */  lui   $t2, 0xfa00
/* 04C05C 8004B45C 00046600 */  sll   $t4, $a0, 0x18
/* 04C060 8004B460 018E7825 */  or    $t7, $t4, $t6
/* 04C064 8004B464 0018CA00 */  sll   $t9, $t8, 8
/* 04C068 8004B468 AC6A0000 */  sw    $t2, ($v1)
/* 04C06C 8004B46C 01F95025 */  or    $t2, $t7, $t9
/* 04C070 8004B470 30EB00FF */  andi  $t3, $a3, 0xff
/* 04C074 8004B474 014B6825 */  or    $t5, $t2, $t3
/* 04C078 8004B478 03E00008 */  jr    $ra
/* 04C07C 8004B47C AC6D0004 */   sw    $t5, 4($v1)
