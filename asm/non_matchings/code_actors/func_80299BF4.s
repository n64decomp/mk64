glabel func_80299BF4
/* 103204 80299BF4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 103208 80299BF8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 10320C 80299BFC AFB00020 */  sw    $s0, 0x20($sp)
/* 103210 80299C00 AFA50054 */  sw    $a1, 0x54($sp)
/* 103214 80299C04 84C20002 */  lh    $v0, 2($a2)
/* 103218 80299C08 00C08025 */  move  $s0, $a2
/* 10321C 80299C0C 24C50018 */  addiu $a1, $a2, 0x18
/* 103220 80299C10 304E0800 */  andi  $t6, $v0, 0x800
/* 103224 80299C14 15C00064 */  bnez  $t6, .L80299DA8
/* 103228 80299C18 24070000 */   li    $a3, 0
/* 10322C 80299C1C 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 103230 80299C20 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 103234 80299C24 240100B8 */  li    $at, 184
/* 103238 80299C28 94860026 */  lhu   $a2, 0x26($a0)
/* 10323C 80299C2C 008FC023 */  subu  $t8, $a0, $t7
/* 103240 80299C30 0301001A */  div   $zero, $t8, $at
/* 103244 80299C34 0000C812 */  mflo  $t9
/* 103248 80299C38 00195880 */  sll   $t3, $t9, 2
/* 10324C 80299C3C 3C018015 */  lui   $at, %hi(D_80150130)
/* 103250 80299C40 002B0821 */  addu  $at, $at, $t3
/* 103254 80299C44 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 103258 80299C48 3C01802C */  lui   $at, %hi(D_802B9684) # $at, 0x802c
/* 10325C 80299C4C C4269684 */  lwc1  $f6, %lo(D_802B9684)($at)
/* 103260 80299C50 AFA50028 */  sw    $a1, 0x28($sp)
/* 103264 80299C54 A7A2004A */  sh    $v0, 0x4a($sp)
/* 103268 80299C58 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10326C 80299C5C 0C0AE034 */  jal   func_802B80D0
/* 103270 80299C60 E7A60014 */   swc1  $f6, 0x14($sp)
/* 103274 80299C64 44804000 */  mtc1  $zero, $f8
/* 103278 80299C68 87A2004A */  lh    $v0, 0x4a($sp)
/* 10327C 80299C6C 8FA70054 */  lw    $a3, 0x54($sp)
/* 103280 80299C70 4608003C */  c.lt.s $f0, $f8
/* 103284 80299C74 304C0400 */  andi  $t4, $v0, 0x400
/* 103288 80299C78 4503004C */  bc1tl .L80299DAC
/* 10328C 80299C7C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 103290 80299C80 1580000B */  bnez  $t4, .L80299CB0
/* 103294 80299C84 3C01802C */   lui   $at, %hi(D_802B9688) # $at, 0x802c
/* 103298 80299C88 C42A9688 */  lwc1  $f10, %lo(D_802B9688)($at)
/* 10329C 80299C8C 8FA40028 */  lw    $a0, 0x28($sp)
/* 1032A0 80299C90 26050010 */  addiu $a1, $s0, 0x10
/* 1032A4 80299C94 460A003C */  c.lt.s $f0, $f10
/* 1032A8 80299C98 3C064033 */  lui   $a2, (0x40333333 >> 16) # lui $a2, 0x4033
/* 1032AC 80299C9C 45020005 */  bc1fl .L80299CB4
/* 1032B0 80299CA0 C6100018 */   lwc1  $f16, 0x18($s0)
/* 1032B4 80299CA4 0C0A5E53 */  jal   func_8029794C
/* 1032B8 80299CA8 34C63333 */   ori   $a2, (0x40333333 & 0xFFFF) # ori $a2, $a2, 0x3333
/* 1032BC 80299CAC 8FA70054 */  lw    $a3, 0x54($sp)
.L80299CB0:
/* 1032C0 80299CB0 C6100018 */  lwc1  $f16, 0x18($s0)
.L80299CB4:
/* 1032C4 80299CB4 00E02025 */  move  $a0, $a3
/* 1032C8 80299CB8 00002825 */  move  $a1, $zero
/* 1032CC 80299CBC E4F00030 */  swc1  $f16, 0x30($a3)
/* 1032D0 80299CC0 C612001C */  lwc1  $f18, 0x1c($s0)
/* 1032D4 80299CC4 E4F20034 */  swc1  $f18, 0x34($a3)
/* 1032D8 80299CC8 C6040020 */  lwc1  $f4, 0x20($s0)
/* 1032DC 80299CCC 0C0AD3FE */  jal   func_802B4FF8
/* 1032E0 80299CD0 E4E40038 */   swc1  $f4, 0x38($a3)
/* 1032E4 80299CD4 10400034 */  beqz  $v0, .L80299DA8
/* 1032E8 80299CD8 3C038015 */   lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 1032EC 80299CDC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 1032F0 80299CE0 8C620000 */  lw    $v0, ($v1)
/* 1032F4 80299CE4 3C0F0D00 */  lui   $t7, %hi(D_0D004C68) # $t7, 0xd00
/* 1032F8 80299CE8 25EF4C68 */  addiu $t7, %lo(D_0D004C68) # addiu $t7, $t7, 0x4c68
/* 1032FC 80299CEC 244D0008 */  addiu $t5, $v0, 8
/* 103300 80299CF0 AC6D0000 */  sw    $t5, ($v1)
/* 103304 80299CF4 3C0EFD10 */  lui   $t6, 0xfd10
/* 103308 80299CF8 AC4E0000 */  sw    $t6, ($v0)
/* 10330C 80299CFC AC4F0004 */  sw    $t7, 4($v0)
/* 103310 80299D00 8C620000 */  lw    $v0, ($v1)
/* 103314 80299D04 3C19E800 */  lui   $t9, 0xe800
/* 103318 80299D08 3C0CF500 */  lui   $t4, (0xF5000100 >> 16) # lui $t4, 0xf500
/* 10331C 80299D0C 24580008 */  addiu $t8, $v0, 8
/* 103320 80299D10 AC780000 */  sw    $t8, ($v1)
/* 103324 80299D14 AC400004 */  sw    $zero, 4($v0)
/* 103328 80299D18 AC590000 */  sw    $t9, ($v0)
/* 10332C 80299D1C 8C620000 */  lw    $v0, ($v1)
/* 103330 80299D20 358C0100 */  ori   $t4, (0xF5000100 & 0xFFFF) # ori $t4, $t4, 0x100
/* 103334 80299D24 3C0D0700 */  lui   $t5, 0x700
/* 103338 80299D28 244B0008 */  addiu $t3, $v0, 8
/* 10333C 80299D2C AC6B0000 */  sw    $t3, ($v1)
/* 103340 80299D30 AC4D0004 */  sw    $t5, 4($v0)
/* 103344 80299D34 AC4C0000 */  sw    $t4, ($v0)
/* 103348 80299D38 8C620000 */  lw    $v0, ($v1)
/* 10334C 80299D3C 3C0FE600 */  lui   $t7, 0xe600
/* 103350 80299D40 3C0B073F */  lui   $t3, (0x073FC000 >> 16) # lui $t3, 0x73f
/* 103354 80299D44 244E0008 */  addiu $t6, $v0, 8
/* 103358 80299D48 AC6E0000 */  sw    $t6, ($v1)
/* 10335C 80299D4C AC400004 */  sw    $zero, 4($v0)
/* 103360 80299D50 AC4F0000 */  sw    $t7, ($v0)
/* 103364 80299D54 8C620000 */  lw    $v0, ($v1)
/* 103368 80299D58 356BC000 */  ori   $t3, (0x073FC000 & 0xFFFF) # ori $t3, $t3, 0xc000
/* 10336C 80299D5C 3C19F000 */  lui   $t9, 0xf000
/* 103370 80299D60 24580008 */  addiu $t8, $v0, 8
/* 103374 80299D64 AC780000 */  sw    $t8, ($v1)
/* 103378 80299D68 AC4B0004 */  sw    $t3, 4($v0)
/* 10337C 80299D6C AC590000 */  sw    $t9, ($v0)
/* 103380 80299D70 8C620000 */  lw    $v0, ($v1)
/* 103384 80299D74 3C0DE700 */  lui   $t5, 0xe700
/* 103388 80299D78 3C180601 */  lui   $t8, %hi(D_060090C8) # $t8, 0x601
/* 10338C 80299D7C 244C0008 */  addiu $t4, $v0, 8
/* 103390 80299D80 AC6C0000 */  sw    $t4, ($v1)
/* 103394 80299D84 AC400004 */  sw    $zero, 4($v0)
/* 103398 80299D88 AC4D0000 */  sw    $t5, ($v0)
/* 10339C 80299D8C 8C620000 */  lw    $v0, ($v1)
/* 1033A0 80299D90 271890C8 */  addiu $t8, %lo(D_060090C8) # addiu $t8, $t8, -0x6f38
/* 1033A4 80299D94 3C0F0600 */  lui   $t7, 0x600
/* 1033A8 80299D98 244E0008 */  addiu $t6, $v0, 8
/* 1033AC 80299D9C AC6E0000 */  sw    $t6, ($v1)
/* 1033B0 80299DA0 AC580004 */  sw    $t8, 4($v0)
/* 1033B4 80299DA4 AC4F0000 */  sw    $t7, ($v0)
.L80299DA8:
/* 1033B8 80299DA8 8FBF0024 */  lw    $ra, 0x24($sp)
.L80299DAC:
/* 1033BC 80299DAC 8FB00020 */  lw    $s0, 0x20($sp)
/* 1033C0 80299DB0 27BD0050 */  addiu $sp, $sp, 0x50
/* 1033C4 80299DB4 03E00008 */  jr    $ra
/* 1033C8 80299DB8 00000000 */   nop   
