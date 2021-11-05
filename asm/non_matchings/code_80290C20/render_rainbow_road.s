glabel render_rainbow_road
/* 0FE08C 80294A7C 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0FE090 80294A80 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 0FE094 80294A84 8D030000 */  lw    $v1, ($t0)
/* 0FE098 80294A88 AFA40000 */  sw    $a0, ($sp)
/* 0FE09C 80294A8C 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FE0A0 80294A90 246E0008 */  addiu $t6, $v1, 8
/* 0FE0A4 80294A94 AD0E0000 */  sw    $t6, ($t0)
/* 0FE0A8 80294A98 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FE0AC 80294A9C 2418FFFF */  li    $t8, -1
/* 0FE0B0 80294AA0 AC780004 */  sw    $t8, 4($v1)
/* 0FE0B4 80294AA4 AC6F0000 */  sw    $t7, ($v1)
/* 0FE0B8 80294AA8 8D030000 */  lw    $v1, ($t0)
/* 0FE0BC 80294AAC 3C09B700 */  lui   $t1, 0xb700
/* 0FE0C0 80294AB0 240A0200 */  li    $t2, 512
/* 0FE0C4 80294AB4 24790008 */  addiu $t9, $v1, 8
/* 0FE0C8 80294AB8 AD190000 */  sw    $t9, ($t0)
/* 0FE0CC 80294ABC AC6A0004 */  sw    $t2, 4($v1)
/* 0FE0D0 80294AC0 AC690000 */  sw    $t1, ($v1)
/* 0FE0D4 80294AC4 8D030000 */  lw    $v1, ($t0)
/* 0FE0D8 80294AC8 3C0CB600 */  lui   $t4, 0xb600
/* 0FE0DC 80294ACC 3C0D0002 */  lui   $t5, 2
/* 0FE0E0 80294AD0 246B0008 */  addiu $t3, $v1, 8
/* 0FE0E4 80294AD4 AD0B0000 */  sw    $t3, ($t0)
/* 0FE0E8 80294AD8 AC6D0004 */  sw    $t5, 4($v1)
/* 0FE0EC 80294ADC AC6C0000 */  sw    $t4, ($v1)
/* 0FE0F0 80294AE0 8D030000 */  lw    $v1, ($t0)
/* 0FE0F4 80294AE4 3C0FFC12 */  lui   $t7, (0xFC121824 >> 16) # lui $t7, 0xfc12
/* 0FE0F8 80294AE8 3C18FF33 */  lui   $t8, (0xFF33FFFF >> 16) # lui $t8, 0xff33
/* 0FE0FC 80294AEC 246E0008 */  addiu $t6, $v1, 8
/* 0FE100 80294AF0 AD0E0000 */  sw    $t6, ($t0)
/* 0FE104 80294AF4 3718FFFF */  ori   $t8, (0xFF33FFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FE108 80294AF8 35EF1824 */  ori   $t7, (0xFC121824 & 0xFFFF) # ori $t7, $t7, 0x1824
/* 0FE10C 80294AFC AC6F0000 */  sw    $t7, ($v1)
/* 0FE110 80294B00 AC780004 */  sw    $t8, 4($v1)
/* 0FE114 80294B04 8D030000 */  lw    $v1, ($t0)
/* 0FE118 80294B08 3C09B900 */  lui   $t1, (0xB900031D >> 16) # lui $t1, 0xb900
/* 0FE11C 80294B0C 3C0A0055 */  lui   $t2, (0x00552078 >> 16) # lui $t2, 0x55
/* 0FE120 80294B10 24790008 */  addiu $t9, $v1, 8
/* 0FE124 80294B14 AD190000 */  sw    $t9, ($t0)
/* 0FE128 80294B18 354A2078 */  ori   $t2, (0x00552078 & 0xFFFF) # ori $t2, $t2, 0x2078
/* 0FE12C 80294B1C 3529031D */  ori   $t1, (0xB900031D & 0xFFFF) # ori $t1, $t1, 0x31d
/* 0FE130 80294B20 AC690000 */  sw    $t1, ($v1)
/* 0FE134 80294B24 03E00008 */  jr    $ra
/* 0FE138 80294B28 AC6A0004 */   sw    $t2, 4($v1)
