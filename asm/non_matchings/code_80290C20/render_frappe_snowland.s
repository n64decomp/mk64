glabel render_frappe_snowland
/* 0FCAB0 802934A0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCAB4 802934A4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCAB8 802934A8 8C620000 */  lw    $v0, ($v1)
/* 0FCABC 802934AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FCAC0 802934B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FCAC4 802934B4 244E0008 */  addiu $t6, $v0, 8
/* 0FCAC8 802934B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FCACC 802934BC AC6E0000 */  sw    $t6, ($v1)
/* 0FCAD0 802934C0 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FCAD4 802934C4 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FCAD8 802934C8 2418FFFF */  li    $t8, -1
/* 0FCADC 802934CC AC580004 */  sw    $t8, 4($v0)
/* 0FCAE0 802934D0 AC4F0000 */  sw    $t7, ($v0)
/* 0FCAE4 802934D4 8C620000 */  lw    $v0, ($v1)
/* 0FCAE8 802934D8 3C08B700 */  lui   $t0, 0xb700
/* 0FCAEC 802934DC 24090200 */  li    $t1, 512
/* 0FCAF0 802934E0 24590008 */  addiu $t9, $v0, 8
/* 0FCAF4 802934E4 AC790000 */  sw    $t9, ($v1)
/* 0FCAF8 802934E8 AC490004 */  sw    $t1, 4($v0)
/* 0FCAFC 802934EC AC480000 */  sw    $t0, ($v0)
/* 0FCB00 802934F0 8C620000 */  lw    $v0, ($v1)
/* 0FCB04 802934F4 3C0BB600 */  lui   $t3, 0xb600
/* 0FCB08 802934F8 3C0C0002 */  lui   $t4, 2
/* 0FCB0C 802934FC 244A0008 */  addiu $t2, $v0, 8
/* 0FCB10 80293500 AC6A0000 */  sw    $t2, ($v1)
/* 0FCB14 80293504 AC4C0004 */  sw    $t4, 4($v0)
/* 0FCB18 80293508 AC4B0000 */  sw    $t3, ($v0)
/* 0FCB1C 8029350C 8FAD0018 */  lw    $t5, 0x18($sp)
/* 0FCB20 80293510 0C0A4308 */  jal   func_80290C20
/* 0FCB24 80293514 8DA40004 */   lw    $a0, 4($t5)
/* 0FCB28 80293518 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCB2C 8029351C 24010001 */  li    $at, 1
/* 0FCB30 80293520 1441001B */  bne   $v0, $at, .L80293590
/* 0FCB34 80293524 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCB38 80293528 8C620000 */  lw    $v0, ($v1)
/* 0FCB3C 8029352C 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 0FCB40 80293530 3C18FFFE */  lui   $t8, (0xFFFE793C >> 16) # lui $t8, 0xfffe
/* 0FCB44 80293534 244E0008 */  addiu $t6, $v0, 8
/* 0FCB48 80293538 AC6E0000 */  sw    $t6, ($v1)
/* 0FCB4C 8029353C 3718793C */  ori   $t8, (0xFFFE793C & 0xFFFF) # ori $t8, $t8, 0x793c
/* 0FCB50 80293540 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FCB54 80293544 AC4F0000 */  sw    $t7, ($v0)
/* 0FCB58 80293548 AC580004 */  sw    $t8, 4($v0)
/* 0FCB5C 8029354C 8C620000 */  lw    $v0, ($v1)
/* 0FCB60 80293550 3C08B900 */  lui   $t0, (0xB900031D >> 16) # lui $t0, 0xb900
/* 0FCB64 80293554 3C090055 */  lui   $t1, (0x00552078 >> 16) # lui $t1, 0x55
/* 0FCB68 80293558 24590008 */  addiu $t9, $v0, 8
/* 0FCB6C 8029355C AC790000 */  sw    $t9, ($v1)
/* 0FCB70 80293560 35292078 */  ori   $t1, (0x00552078 & 0xFFFF) # ori $t1, $t1, 0x2078
/* 0FCB74 80293564 3508031D */  ori   $t0, (0xB900031D & 0xFFFF) # ori $t0, $t0, 0x31d
/* 0FCB78 80293568 AC480000 */  sw    $t0, ($v0)
/* 0FCB7C 8029356C AC490004 */  sw    $t1, 4($v0)
/* 0FCB80 80293570 8C620000 */  lw    $v0, ($v1)
/* 0FCB84 80293574 3C0C0700 */  lui   $t4, (0x070065E0 >> 16) # lui $t4, 0x700
/* 0FCB88 80293578 358C65E0 */  ori   $t4, (0x070065E0 & 0xFFFF) # ori $t4, $t4, 0x65e0
/* 0FCB8C 8029357C 244A0008 */  addiu $t2, $v0, 8
/* 0FCB90 80293580 AC6A0000 */  sw    $t2, ($v1)
/* 0FCB94 80293584 3C0B0600 */  lui   $t3, 0x600
/* 0FCB98 80293588 AC4B0000 */  sw    $t3, ($v0)
/* 0FCB9C 8029358C AC4C0004 */  sw    $t4, 4($v0)
.L80293590:
/* 0FCBA0 80293590 8C620000 */  lw    $v0, ($v1)
/* 0FCBA4 80293594 3C0EFC12 */  lui   $t6, (0xFC121824 >> 16) # lui $t6, 0xfc12
/* 0FCBA8 80293598 3C0FFF33 */  lui   $t7, (0xFF33FFFF >> 16) # lui $t7, 0xff33
/* 0FCBAC 8029359C 244D0008 */  addiu $t5, $v0, 8
/* 0FCBB0 802935A0 AC6D0000 */  sw    $t5, ($v1)
/* 0FCBB4 802935A4 35EFFFFF */  ori   $t7, (0xFF33FFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FCBB8 802935A8 35CE1824 */  ori   $t6, (0xFC121824 & 0xFFFF) # ori $t6, $t6, 0x1824
/* 0FCBBC 802935AC AC4E0000 */  sw    $t6, ($v0)
/* 0FCBC0 802935B0 AC4F0004 */  sw    $t7, 4($v0)
/* 0FCBC4 802935B4 8C620000 */  lw    $v0, ($v1)
/* 0FCBC8 802935B8 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FCBCC 802935BC 3C080055 */  lui   $t0, (0x00552078 >> 16) # lui $t0, 0x55
/* 0FCBD0 802935C0 24580008 */  addiu $t8, $v0, 8
/* 0FCBD4 802935C4 AC780000 */  sw    $t8, ($v1)
/* 0FCBD8 802935C8 35082078 */  ori   $t0, (0x00552078 & 0xFFFF) # ori $t0, $t0, 0x2078
/* 0FCBDC 802935CC 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FCBE0 802935D0 3C040600 */  lui   $a0, %hi(frappe_snowland_dls) # $a0, 0x600
/* 0FCBE4 802935D4 AC590000 */  sw    $t9, ($v0)
/* 0FCBE8 802935D8 AC480004 */  sw    $t0, 4($v0)
/* 0FCBEC 802935DC 8FA50018 */  lw    $a1, 0x18($sp)
/* 0FCBF0 802935E0 0C0A436B */  jal   load_surface_map
/* 0FCBF4 802935E4 24847890 */   addiu $a0, %lo(frappe_snowland_dls) # addiu $a0, $a0, 0x7890
/* 0FCBF8 802935E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FCBFC 802935EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FCC00 802935F0 03E00008 */  jr    $ra
/* 0FCC04 802935F4 00000000 */   nop   
