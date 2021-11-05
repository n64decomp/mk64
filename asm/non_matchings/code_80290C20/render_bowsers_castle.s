glabel render_bowsers_castle
/* 0FC3A8 80292D98 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FC3AC 80292D9C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FC3B0 80292DA0 8C620000 */  lw    $v0, ($v1)
/* 0FC3B4 80292DA4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FC3B8 80292DA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FC3BC 80292DAC 244E0008 */  addiu $t6, $v0, 8
/* 0FC3C0 80292DB0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FC3C4 80292DB4 AC6E0000 */  sw    $t6, ($v1)
/* 0FC3C8 80292DB8 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FC3CC 80292DBC 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FC3D0 80292DC0 2418FFFF */  li    $t8, -1
/* 0FC3D4 80292DC4 AC580004 */  sw    $t8, 4($v0)
/* 0FC3D8 80292DC8 AC4F0000 */  sw    $t7, ($v0)
/* 0FC3DC 80292DCC 8C620000 */  lw    $v0, ($v1)
/* 0FC3E0 80292DD0 3C08B700 */  lui   $t0, 0xb700
/* 0FC3E4 80292DD4 24090200 */  li    $t1, 512
/* 0FC3E8 80292DD8 24590008 */  addiu $t9, $v0, 8
/* 0FC3EC 80292DDC AC790000 */  sw    $t9, ($v1)
/* 0FC3F0 80292DE0 AC490004 */  sw    $t1, 4($v0)
/* 0FC3F4 80292DE4 AC480000 */  sw    $t0, ($v0)
/* 0FC3F8 80292DE8 8C620000 */  lw    $v0, ($v1)
/* 0FC3FC 80292DEC 3C0BB600 */  lui   $t3, 0xb600
/* 0FC400 80292DF0 3C0C0002 */  lui   $t4, 2
/* 0FC404 80292DF4 244A0008 */  addiu $t2, $v0, 8
/* 0FC408 80292DF8 AC6A0000 */  sw    $t2, ($v1)
/* 0FC40C 80292DFC AC4C0004 */  sw    $t4, 4($v0)
/* 0FC410 80292E00 AC4B0000 */  sw    $t3, ($v0)
/* 0FC414 80292E04 8FAD0018 */  lw    $t5, 0x18($sp)
/* 0FC418 80292E08 0C0A4308 */  jal   func_80290C20
/* 0FC41C 80292E0C 8DA40004 */   lw    $a0, 4($t5)
/* 0FC420 80292E10 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FC424 80292E14 24010001 */  li    $at, 1
/* 0FC428 80292E18 1441001B */  bne   $v0, $at, .L80292E88
/* 0FC42C 80292E1C 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FC430 80292E20 8C620000 */  lw    $v0, ($v1)
/* 0FC434 80292E24 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 0FC438 80292E28 3C18FFFE */  lui   $t8, (0xFFFE793C >> 16) # lui $t8, 0xfffe
/* 0FC43C 80292E2C 244E0008 */  addiu $t6, $v0, 8
/* 0FC440 80292E30 AC6E0000 */  sw    $t6, ($v1)
/* 0FC444 80292E34 3718793C */  ori   $t8, (0xFFFE793C & 0xFFFF) # ori $t8, $t8, 0x793c
/* 0FC448 80292E38 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FC44C 80292E3C AC4F0000 */  sw    $t7, ($v0)
/* 0FC450 80292E40 AC580004 */  sw    $t8, 4($v0)
/* 0FC454 80292E44 8C620000 */  lw    $v0, ($v1)
/* 0FC458 80292E48 3C08B900 */  lui   $t0, (0xB900031D >> 16) # lui $t0, 0xb900
/* 0FC45C 80292E4C 3C090055 */  lui   $t1, (0x00552078 >> 16) # lui $t1, 0x55
/* 0FC460 80292E50 24590008 */  addiu $t9, $v0, 8
/* 0FC464 80292E54 AC790000 */  sw    $t9, ($v1)
/* 0FC468 80292E58 35292078 */  ori   $t1, (0x00552078 & 0xFFFF) # ori $t1, $t1, 0x2078
/* 0FC46C 80292E5C 3508031D */  ori   $t0, (0xB900031D & 0xFFFF) # ori $t0, $t0, 0x31d
/* 0FC470 80292E60 AC480000 */  sw    $t0, ($v0)
/* 0FC474 80292E64 AC490004 */  sw    $t1, 4($v0)
/* 0FC478 80292E68 8C620000 */  lw    $v0, ($v1)
/* 0FC47C 80292E6C 3C0C0700 */  lui   $t4, (0x07006A80 >> 16) # lui $t4, 0x700
/* 0FC480 80292E70 358C6A80 */  ori   $t4, (0x07006A80 & 0xFFFF) # ori $t4, $t4, 0x6a80
/* 0FC484 80292E74 244A0008 */  addiu $t2, $v0, 8
/* 0FC488 80292E78 AC6A0000 */  sw    $t2, ($v1)
/* 0FC48C 80292E7C 3C0B0600 */  lui   $t3, 0x600
/* 0FC490 80292E80 AC4B0000 */  sw    $t3, ($v0)
/* 0FC494 80292E84 AC4C0004 */  sw    $t4, 4($v0)
.L80292E88:
/* 0FC498 80292E88 8C620000 */  lw    $v0, ($v1)
/* 0FC49C 80292E8C 3C0EFC12 */  lui   $t6, (0xFC121824 >> 16) # lui $t6, 0xfc12
/* 0FC4A0 80292E90 3C0FFF33 */  lui   $t7, (0xFF33FFFF >> 16) # lui $t7, 0xff33
/* 0FC4A4 80292E94 244D0008 */  addiu $t5, $v0, 8
/* 0FC4A8 80292E98 AC6D0000 */  sw    $t5, ($v1)
/* 0FC4AC 80292E9C 35EFFFFF */  ori   $t7, (0xFF33FFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FC4B0 80292EA0 35CE1824 */  ori   $t6, (0xFC121824 & 0xFFFF) # ori $t6, $t6, 0x1824
/* 0FC4B4 80292EA4 AC4E0000 */  sw    $t6, ($v0)
/* 0FC4B8 80292EA8 AC4F0004 */  sw    $t7, 4($v0)
/* 0FC4BC 80292EAC 8C620000 */  lw    $v0, ($v1)
/* 0FC4C0 80292EB0 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FC4C4 80292EB4 3C080055 */  lui   $t0, (0x00552078 >> 16) # lui $t0, 0x55
/* 0FC4C8 80292EB8 24580008 */  addiu $t8, $v0, 8
/* 0FC4CC 80292EBC AC780000 */  sw    $t8, ($v1)
/* 0FC4D0 80292EC0 3C06802C */  lui   $a2, %hi(D_802B87BC) # $a2, 0x802c
/* 0FC4D4 80292EC4 35082078 */  ori   $t0, (0x00552078 & 0xFFFF) # ori $t0, $t0, 0x2078
/* 0FC4D8 80292EC8 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FC4DC 80292ECC 24C687BC */  addiu $a2, %lo(D_802B87BC) # addiu $a2, $a2, -0x7844
/* 0FC4E0 80292ED0 AC590000 */  sw    $t9, ($v0)
/* 0FC4E4 80292ED4 AC480004 */  sw    $t0, 4($v0)
/* 0FC4E8 80292ED8 8CC90000 */  lw    $t1, ($a2)
/* 0FC4EC 80292EDC 3C040900 */  lui   $a0, %hi(bowsers_castle_dls) # $a0, 0x900
/* 0FC4F0 80292EE0 248401D0 */  addiu $a0, %lo(bowsers_castle_dls) # addiu $a0, $a0, 0x1d0
/* 0FC4F4 80292EE4 252A0001 */  addiu $t2, $t1, 1
/* 0FC4F8 80292EE8 29410100 */  slti  $at, $t2, 0x100
/* 0FC4FC 80292EEC 14200002 */  bnez  $at, .L80292EF8
/* 0FC500 80292EF0 ACCA0000 */   sw    $t2, ($a2)
/* 0FC504 80292EF4 ACC00000 */  sw    $zero, ($a2)
.L80292EF8:
/* 0FC508 80292EF8 0C0A436B */  jal   load_surface_map
/* 0FC50C 80292EFC 8FA50018 */   lw    $a1, 0x18($sp)
/* 0FC510 80292F00 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FC514 80292F04 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FC518 80292F08 8C620000 */  lw    $v0, ($v1)
/* 0FC51C 80292F0C 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FC520 80292F10 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FC524 80292F14 244C0008 */  addiu $t4, $v0, 8
/* 0FC528 80292F18 AC6C0000 */  sw    $t4, ($v1)
/* 0FC52C 80292F1C 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FC530 80292F20 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FC534 80292F24 AC4D0000 */  sw    $t5, ($v0)
/* 0FC538 80292F28 AC4E0004 */  sw    $t6, 4($v0)
/* 0FC53C 80292F2C 8C620000 */  lw    $v0, ($v1)
/* 0FC540 80292F30 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FC544 80292F34 3C190055 */  lui   $t9, (0x00553078 >> 16) # lui $t9, 0x55
/* 0FC548 80292F38 244F0008 */  addiu $t7, $v0, 8
/* 0FC54C 80292F3C AC6F0000 */  sw    $t7, ($v1)
/* 0FC550 80292F40 37393078 */  ori   $t9, (0x00553078 & 0xFFFF) # ori $t9, $t9, 0x3078
/* 0FC554 80292F44 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FC558 80292F48 AC580000 */  sw    $t8, ($v0)
/* 0FC55C 80292F4C AC590004 */  sw    $t9, 4($v0)
/* 0FC560 80292F50 8C620000 */  lw    $v0, ($v1)
/* 0FC564 80292F54 3C0A0700 */  lui   $t2, (0x07000248 >> 16) # lui $t2, 0x700
/* 0FC568 80292F58 354A0248 */  ori   $t2, (0x07000248 & 0xFFFF) # ori $t2, $t2, 0x248
/* 0FC56C 80292F5C 24480008 */  addiu $t0, $v0, 8
/* 0FC570 80292F60 AC680000 */  sw    $t0, ($v1)
/* 0FC574 80292F64 3C090600 */  lui   $t1, 0x600
/* 0FC578 80292F68 AC490000 */  sw    $t1, ($v0)
/* 0FC57C 80292F6C AC4A0004 */  sw    $t2, 4($v0)
/* 0FC580 80292F70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FC584 80292F74 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FC588 80292F78 03E00008 */  jr    $ra
/* 0FC58C 80292F7C 00000000 */   nop   
