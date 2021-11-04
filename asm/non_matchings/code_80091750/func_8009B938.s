glabel func_8009B938
/* 09C538 8009B938 3C0E8019 */  lui   $t6, %hi(D_8018D9C0) # $t6, 0x8019
/* 09C53C 8009B93C 8DCED9C0 */  lw    $t6, %lo(D_8018D9C0)($t6)
/* 09C540 8009B940 3C018019 */  lui   $at, %hi(D_8018E75C) # $at, 0x8019
/* 09C544 8009B944 AC2EE75C */  sw    $t6, %lo(D_8018E75C)($at)
/* 09C548 8009B948 3C018019 */  lui   $at, %hi(D_8018E760)
/* 09C54C 8009B94C 03E00008 */  jr    $ra
/* 09C550 8009B950 AC20E760 */   sw    $zero, %lo(D_8018E760)($at)
