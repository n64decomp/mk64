glabel render_sherbet_land
/* 0FDFC0 802949B0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FDFC4 802949B4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FDFC8 802949B8 8C620000 */  lw    $v0, ($v1)
/* 0FDFCC 802949BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FDFD0 802949C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FDFD4 802949C4 244E0008 */  addiu $t6, $v0, 8
/* 0FDFD8 802949C8 AC6E0000 */  sw    $t6, ($v1)
/* 0FDFDC 802949CC 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FDFE0 802949D0 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FDFE4 802949D4 2418FFFF */  li    $t8, -1
/* 0FDFE8 802949D8 AC580004 */  sw    $t8, 4($v0)
/* 0FDFEC 802949DC AC4F0000 */  sw    $t7, ($v0)
/* 0FDFF0 802949E0 8C620000 */  lw    $v0, ($v1)
/* 0FDFF4 802949E4 3C0BB600 */  lui   $t3, 0xb600
/* 0FDFF8 802949E8 3C0C0002 */  lui   $t4, 2
/* 0FDFFC 802949EC 24590008 */  addiu $t9, $v0, 8
/* 0FE000 802949F0 AC790000 */  sw    $t9, ($v1)
/* 0FE004 802949F4 AC4C0004 */  sw    $t4, 4($v0)
/* 0FE008 802949F8 AC4B0000 */  sw    $t3, ($v0)
/* 0FE00C 802949FC 8C620000 */  lw    $v0, ($v1)
/* 0FE010 80294A00 240F0200 */  li    $t7, 512
/* 0FE014 80294A04 3C0EB700 */  lui   $t6, 0xb700
/* 0FE018 80294A08 244D0008 */  addiu $t5, $v0, 8
/* 0FE01C 80294A0C AC6D0000 */  sw    $t5, ($v1)
/* 0FE020 80294A10 AC4F0004 */  sw    $t7, 4($v0)
/* 0FE024 80294A14 AC4E0000 */  sw    $t6, ($v0)
/* 0FE028 80294A18 8C620000 */  lw    $v0, ($v1)
/* 0FE02C 80294A1C 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FE030 80294A20 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FE034 80294A24 24580008 */  addiu $t8, $v0, 8
/* 0FE038 80294A28 AC780000 */  sw    $t8, ($v1)
/* 0FE03C 80294A2C 240BF9FC */  li    $t3, -1540
/* 0FE040 80294A30 AC4B0004 */  sw    $t3, 4($v0)
/* 0FE044 80294A34 AC590000 */  sw    $t9, ($v0)
/* 0FE048 80294A38 8C620000 */  lw    $v0, ($v1)
/* 0FE04C 80294A3C 00802825 */  move  $a1, $a0
/* 0FE050 80294A40 3C0E0055 */  lui   $t6, (0x00552078 >> 16) # lui $t6, 0x55
/* 0FE054 80294A44 3C0DB900 */  lui   $t5, (0xB900031D >> 16) # lui $t5, 0xb900
/* 0FE058 80294A48 244C0008 */  addiu $t4, $v0, 8
/* 0FE05C 80294A4C AC6C0000 */  sw    $t4, ($v1)
/* 0FE060 80294A50 35AD031D */  ori   $t5, (0xB900031D & 0xFFFF) # ori $t5, $t5, 0x31d
/* 0FE064 80294A54 35CE2078 */  ori   $t6, (0x00552078 & 0xFFFF) # ori $t6, $t6, 0x2078
/* 0FE068 80294A58 3C040900 */  lui   $a0, %hi(sherbet_land_dls) # $a0, 0x900
/* 0FE06C 80294A5C 248400B0 */  addiu $a0, %lo(sherbet_land_dls) # addiu $a0, $a0, 0xb0
/* 0FE070 80294A60 AC4E0004 */  sw    $t6, 4($v0)
/* 0FE074 80294A64 0C0A436B */  jal   load_surface_map
/* 0FE078 80294A68 AC4D0000 */   sw    $t5, ($v0)
/* 0FE07C 80294A6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FE080 80294A70 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FE084 80294A74 03E00008 */  jr    $ra
/* 0FE088 80294A78 00000000 */   nop   
