glabel func_8008D97C
/* 08E57C 8008D97C 8C8F00BC */  lw    $t7, 0xbc($a0)
/* 08E580 8008D980 94990254 */  lhu   $t9, 0x254($a0)
/* 08E584 8008D984 3C01FF7F */  lui   $at, (0xFF7FFFFF >> 16) # lui $at, 0xff7f
/* 08E588 8008D988 848E00AE */  lh    $t6, 0xae($a0)
/* 08E58C 8008D98C 3421FFFF */  ori   $at, (0xFF7FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08E590 8008D990 01E1C024 */  and   $t8, $t7, $at
/* 08E594 8008D994 3C01800E */  lui   $at, %hi(gKartGravityTable)
/* 08E598 8008D998 00194080 */  sll   $t0, $t9, 2
/* 08E59C 8008D99C A48000A8 */  sh    $zero, 0xa8($a0)
/* 08E5A0 8008D9A0 AC80007C */  sw    $zero, 0x7c($a0)
/* 08E5A4 8008D9A4 A48000C0 */  sh    $zero, 0xc0($a0)
/* 08E5A8 8008D9A8 AC9800BC */  sw    $t8, 0xbc($a0)
/* 08E5AC 8008D9AC 00280821 */  addu  $at, $at, $t0
/* 08E5B0 8008D9B0 A48E002E */  sh    $t6, 0x2e($a0)
/* 08E5B4 8008D9B4 C4242650 */  lwc1  $f4, %lo(gKartGravityTable)($at)
/* 08E5B8 8008D9B8 03E00008 */  jr    $ra
/* 08E5BC 8008D9BC E4840100 */   swc1  $f4, 0x100($a0)
