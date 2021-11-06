glabel func_800C11B0
/* 0C1DB0 800C11B0 00047080 */  sll   $t6, $a0, 2
/* 0C1DB4 800C11B4 01C47021 */  addu  $t6, $t6, $a0
/* 0C1DB8 800C11B8 000E70C0 */  sll   $t6, $t6, 3
/* 0C1DBC 800C11BC 01C47021 */  addu  $t6, $t6, $a0
/* 0C1DC0 800C11C0 3C0F803B */  lui   $t7, %hi(D_803B1510) # $t7, 0x803b
/* 0C1DC4 800C11C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C1DC8 800C11C8 25EF1510 */  addiu $t7, %lo(D_803B1510) # addiu $t7, $t7, 0x1510
/* 0C1DCC 800C11CC 000E70C0 */  sll   $t6, $t6, 3
/* 0C1DD0 800C11D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C1DD4 800C11D4 01CF2021 */  addu  $a0, $t6, $t7
/* 0C1DD8 800C11D8 0C02FBCB */  jal   func_800BEF2C
/* 0C1DDC 800C11DC AFA40018 */   sw    $a0, 0x18($sp)
/* 0C1DE0 800C11E0 8FA40018 */  lw    $a0, 0x18($sp)
/* 0C1DE4 800C11E4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C1DE8 800C11E8 44810000 */  mtc1  $at, $f0
/* 0C1DEC 800C11EC 44801000 */  mtc1  $zero, $f2
/* 0C1DF0 800C11F0 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0C1DF4 800C11F4 44812000 */  mtc1  $at, $f4
/* 0C1DF8 800C11F8 3C08800F */  lui   $t0, %hi(gDefaultShortNoteVelocityTable) # $t0, 0x800f
/* 0C1DFC 800C11FC 3C09800F */  lui   $t1, %hi(gDefaultShortNoteDurationTable) # $t1, 0x800f
/* 0C1E00 800C1200 24180001 */  li    $t8, 1
/* 0C1E04 800C1204 24191680 */  li    $t9, 5760
/* 0C1E08 800C1208 25086220 */  addiu $t0, %lo(gDefaultShortNoteVelocityTable) # addiu $t0, $t0, 0x6220
/* 0C1E0C 800C120C 25296230 */  addiu $t1, %lo(gDefaultShortNoteDurationTable) # addiu $t1, $t1, 0x6230
/* 0C1E10 800C1210 A480000E */  sh    $zero, 0xe($a0)
/* 0C1E14 800C1214 A0980001 */  sb    $t8, 1($a0)
/* 0C1E18 800C1218 A4800010 */  sh    $zero, 0x10($a0)
/* 0C1E1C 800C121C A4800012 */  sh    $zero, 0x12($a0)
/* 0C1E20 800C1220 A480000A */  sh    $zero, 0xa($a0)
/* 0C1E24 800C1224 A4990008 */  sh    $t9, 8($a0)
/* 0C1E28 800C1228 A480000C */  sh    $zero, 0xc($a0)
/* 0C1E2C 800C122C A0800002 */  sb    $zero, 2($a0)
/* 0C1E30 800C1230 AC88008C */  sw    $t0, 0x8c($a0)
/* 0C1E34 800C1234 AC890090 */  sw    $t1, 0x90($a0)
/* 0C1E38 800C1238 E4800018 */  swc1  $f0, 0x18($a0)
/* 0C1E3C 800C123C E4800028 */  swc1  $f0, 0x28($a0)
/* 0C1E40 800C1240 E482001C */  swc1  $f2, 0x1c($a0)
/* 0C1E44 800C1244 E4820020 */  swc1  $f2, 0x20($a0)
/* 0C1E48 800C1248 E4840024 */  swc1  $f4, 0x24($a0)
/* 0C1E4C 800C124C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C1E50 800C1250 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C1E54 800C1254 03E00008 */  jr    $ra
/* 0C1E58 800C1258 00000000 */   nop   
