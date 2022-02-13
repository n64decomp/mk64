glabel func_800A0EB8
/* 0A1AB8 800A0EB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A1ABC 800A0EBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A1AC0 800A0EC0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A1AC4 800A0EC4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0A1AC8 800A0EC8 0C02ABBD */  jal   find_8018D9E0_entry_dupe
/* 0A1ACC 800A0ECC 240400DA */   li    $a0, 218
/* 0A1AD0 800A0ED0 8FA4001C */  lw    $a0, 0x1c($sp)
/* 0A1AD4 800A0ED4 00405825 */  move  $t3, $v0
/* 0A1AD8 800A0ED8 3C0E8019 */  lui   $t6, %hi(gControllerPakMenuSelection) # $t6, 0x8019
/* 0A1ADC 800A0EDC 14800009 */  bnez  $a0, .L800A0F04
/* 0A1AE0 800A0EE0 3C028019 */   lui   $v0, %hi(gControllerPakMenuSelection) # $v0, 0x8019
/* 0A1AE4 800A0EE4 81CEEDF0 */  lb    $t6, %lo(gControllerPakMenuSelection)($t6)
/* 0A1AE8 800A0EE8 24010002 */  li    $at, 2
/* 0A1AEC 800A0EEC 15C10003 */  bne   $t6, $at, .L800A0EFC
/* 0A1AF0 800A0EF0 00000000 */   nop   
/* 0A1AF4 800A0EF4 1000000C */  b     .L800A0F28
/* 0A1AF8 800A0EF8 24090001 */   li    $t1, 1
.L800A0EFC:
/* 0A1AFC 800A0EFC 1000000A */  b     .L800A0F28
/* 0A1B00 800A0F00 00004825 */   move  $t1, $zero
.L800A0F04:
/* 0A1B04 800A0F04 8042EDF0 */  lb    $v0, %lo(gControllerPakMenuSelection)($v0)
/* 0A1B08 800A0F08 24010003 */  li    $at, 3
/* 0A1B0C 800A0F0C 00047840 */  sll   $t7, $a0, 1
/* 0A1B10 800A0F10 10410003 */  beq   $v0, $at, .L800A0F20
/* 0A1B14 800A0F14 00401825 */   move  $v1, $v0
/* 0A1B18 800A0F18 24010004 */  li    $at, 4
/* 0A1B1C 800A0F1C 1461001D */  bne   $v1, $at, .L800A0F94
.L800A0F20:
/* 0A1B20 800A0F20 01E24821 */   addu  $t1, $t7, $v0
/* 0A1B24 800A0F24 2529FFFD */  addiu $t1, $t1, -3
.L800A0F28:
/* 0A1B28 800A0F28 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 0A1B2C 800A0F2C 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 0A1B30 800A0F30 8D480000 */  lw    $t0, ($t2)
/* 0A1B34 800A0F34 3C19FA00 */  lui   $t9, 0xfa00
/* 0A1B38 800A0F38 3C01FF00 */  lui   $at, 0xff00
/* 0A1B3C 800A0F3C 25180008 */  addiu $t8, $t0, 8
/* 0A1B40 800A0F40 AD580000 */  sw    $t8, ($t2)
/* 0A1B44 800A0F44 AD190000 */  sw    $t9, ($t0)
/* 0A1B48 800A0F48 8D6C0020 */  lw    $t4, 0x20($t3)
/* 0A1B4C 800A0F4C 0009C8C0 */  sll   $t9, $t1, 3
/* 0A1B50 800A0F50 3C050200 */  lui   $a1, %hi(D_0200184C) # $a1, 0x200
/* 0A1B54 800A0F54 318D00FF */  andi  $t5, $t4, 0xff
/* 0A1B58 800A0F58 000D7400 */  sll   $t6, $t5, 0x10
/* 0A1B5C 800A0F5C 01C17825 */  or    $t7, $t6, $at
/* 0A1B60 800A0F60 35F800FF */  ori   $t8, $t7, 0xff
/* 0A1B64 800A0F64 3C0C800E */  lui   $t4, %hi(D_800E7278) # $t4, 0x800e
/* 0A1B68 800A0F68 258C7278 */  addiu $t4, %lo(D_800E7278) # addiu $t4, $t4, 0x7278
/* 0A1B6C 800A0F6C AD180004 */  sw    $t8, 4($t0)
/* 0A1B70 800A0F70 032C1021 */  addu  $v0, $t9, $t4
/* 0A1B74 800A0F74 84460000 */  lh    $a2, ($v0)
/* 0A1B78 800A0F78 84470002 */  lh    $a3, 2($v0)
/* 0A1B7C 800A0F7C 8D440000 */  lw    $a0, ($t2)
/* 0A1B80 800A0F80 0C026E9D */  jal   func_8009BA74
/* 0A1B84 800A0F84 24A5184C */   addiu $a1, %lo(D_0200184C) # addiu $a1, $a1, 0x184c
/* 0A1B88 800A0F88 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 0A1B8C 800A0F8C 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 0A1B90 800A0F90 AD420000 */  sw    $v0, ($t2)
.L800A0F94:
/* 0A1B94 800A0F94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A1B98 800A0F98 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A1B9C 800A0F9C 03E00008 */  jr    $ra
/* 0A1BA0 800A0FA0 00000000 */   nop   
