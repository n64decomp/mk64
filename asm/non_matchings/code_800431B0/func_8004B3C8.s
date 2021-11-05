glabel func_8004B3C8
/* 04BFC8 8004B3C8 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 04BFCC 8004B3CC 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 04BFD0 8004B3D0 8CC30000 */  lw    $v1, ($a2)
/* 04BFD4 8004B3D4 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* 04BFD8 8004B3D8 3C18FF2F */  lui   $t8, (0xFF2F7FBF >> 16) # lui $t8, 0xff2f
/* 04BFDC 8004B3DC 246E0008 */  addiu $t6, $v1, 8
/* 04BFE0 8004B3E0 ACCE0000 */  sw    $t6, ($a2)
/* 04BFE4 8004B3E4 37187FBF */  ori   $t8, (0xFF2F7FBF & 0xFFFF) # ori $t8, $t8, 0x7fbf
/* 04BFE8 8004B3E8 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* 04BFEC 8004B3EC AC6F0000 */  sw    $t7, ($v1)
/* 04BFF0 8004B3F0 AC780004 */  sw    $t8, 4($v1)
/* 04BFF4 8004B3F4 8CC30000 */  lw    $v1, ($a2)
/* 04BFF8 8004B3F8 3C08FA00 */  lui   $t0, 0xfa00
/* 04BFFC 8004B3FC 308900FF */  andi  $t1, $a0, 0xff
/* 04C000 8004B400 24790008 */  addiu $t9, $v1, 8
/* 04C004 8004B404 ACD90000 */  sw    $t9, ($a2)
/* 04C008 8004B408 AC690004 */  sw    $t1, 4($v1)
/* 04C00C 8004B40C 03E00008 */  jr    $ra
/* 04C010 8004B410 AC680000 */   sw    $t0, ($v1)
