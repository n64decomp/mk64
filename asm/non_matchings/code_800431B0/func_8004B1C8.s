glabel func_8004B1C8
/* 04BDC8 8004B1C8 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04BDCC 8004B1CC 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04BDD0 8004B1D0 8D230000 */  lw    $v1, ($t1)
/* 04BDD4 8004B1D4 3C0FFA00 */  lui   $t7, 0xfa00
/* 04BDD8 8004B1D8 30AA00FF */  andi  $t2, $a1, 0xff
/* 04BDDC 8004B1DC 246E0008 */  addiu $t6, $v1, 8
/* 04BDE0 8004B1E0 AD2E0000 */  sw    $t6, ($t1)
/* 04BDE4 8004B1E4 AC6F0000 */  sw    $t7, ($v1)
/* 04BDE8 8004B1E8 8FB80018 */  lw    $t8, 0x18($sp)
/* 04BDEC 8004B1EC 000A5C00 */  sll   $t3, $t2, 0x10
/* 04BDF0 8004B1F0 0004CE00 */  sll   $t9, $a0, 0x18
/* 04BDF4 8004B1F4 30CD00FF */  andi  $t5, $a2, 0xff
/* 04BDF8 8004B1F8 000D7200 */  sll   $t6, $t5, 8
/* 04BDFC 8004B1FC 032B6025 */  or    $t4, $t9, $t3
/* 04BE00 8004B200 018E7825 */  or    $t7, $t4, $t6
/* 04BE04 8004B204 330A00FF */  andi  $t2, $t8, 0xff
/* 04BE08 8004B208 01EAC825 */  or    $t9, $t7, $t2
/* 04BE0C 8004B20C AC790004 */  sw    $t9, 4($v1)
/* 04BE10 8004B210 8D230000 */  lw    $v1, ($t1)
/* 04BE14 8004B214 3C0DFB00 */  lui   $t5, 0xfb00
/* 04BE18 8004B218 00077600 */  sll   $t6, $a3, 0x18
/* 04BE1C 8004B21C 246B0008 */  addiu $t3, $v1, 8
/* 04BE20 8004B220 AD2B0000 */  sw    $t3, ($t1)
/* 04BE24 8004B224 AC6D0000 */  sw    $t5, ($v1)
/* 04BE28 8004B228 8FB80010 */  lw    $t8, 0x10($sp)
/* 04BE2C 8004B22C 8FAB0014 */  lw    $t3, 0x14($sp)
/* 04BE30 8004B230 330F00FF */  andi  $t7, $t8, 0xff
/* 04BE34 8004B234 000F5400 */  sll   $t2, $t7, 0x10
/* 04BE38 8004B238 316D00FF */  andi  $t5, $t3, 0xff
/* 04BE3C 8004B23C 000D6200 */  sll   $t4, $t5, 8
/* 04BE40 8004B240 01CAC825 */  or    $t9, $t6, $t2
/* 04BE44 8004B244 032CC025 */  or    $t8, $t9, $t4
/* 04BE48 8004B248 370F00FF */  ori   $t7, $t8, 0xff
/* 04BE4C 8004B24C 03E00008 */  jr    $ra
/* 04BE50 8004B250 AC6F0004 */   sw    $t7, 4($v1)

/* 04BE54 8004B254 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04BE58 8004B258 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04BE5C 8004B25C 8D030000 */  lw    $v1, ($t0)
/* 04BE60 8004B260 3C0FFC11 */  lui   $t7, (0xFC119623 >> 16) # lui $t7, 0xfc11
/* 04BE64 8004B264 3C18FF2F */  lui   $t8, (0xFF2FFFFF >> 16) # lui $t8, 0xff2f
/* 04BE68 8004B268 246E0008 */  addiu $t6, $v1, 8
/* 04BE6C 8004B26C AD0E0000 */  sw    $t6, ($t0)
/* 04BE70 8004B270 3718FFFF */  ori   $t8, (0xFF2FFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 04BE74 8004B274 35EF9623 */  ori   $t7, (0xFC119623 & 0xFFFF) # ori $t7, $t7, 0x9623
/* 04BE78 8004B278 AC6F0000 */  sw    $t7, ($v1)
/* 04BE7C 8004B27C AC780004 */  sw    $t8, 4($v1)
/* 04BE80 8004B280 8D030000 */  lw    $v1, ($t0)
/* 04BE84 8004B284 30AC00FF */  andi  $t4, $a1, 0xff
/* 04BE88 8004B288 000C6C00 */  sll   $t5, $t4, 0x10
/* 04BE8C 8004B28C 24790008 */  addiu $t9, $v1, 8
/* 04BE90 8004B290 AD190000 */  sw    $t9, ($t0)
/* 04BE94 8004B294 30CF00FF */  andi  $t7, $a2, 0xff
/* 04BE98 8004B298 00045E00 */  sll   $t3, $a0, 0x18
/* 04BE9C 8004B29C 016D7025 */  or    $t6, $t3, $t5
/* 04BEA0 8004B2A0 000FC200 */  sll   $t8, $t7, 8
/* 04BEA4 8004B2A4 3C09FA00 */  lui   $t1, 0xfa00
/* 04BEA8 8004B2A8 01D8C825 */  or    $t9, $t6, $t8
/* 04BEAC 8004B2AC AC690000 */  sw    $t1, ($v1)
/* 04BEB0 8004B2B0 372900FF */  ori   $t1, $t9, 0xff
/* 04BEB4 8004B2B4 03E00008 */  jr    $ra
/* 04BEB8 8004B2B8 AC690004 */   sw    $t1, 4($v1)
