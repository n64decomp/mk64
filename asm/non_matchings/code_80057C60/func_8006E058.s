glabel func_8006E058
/* 06EC58 8006E058 3C02800E */  lui   $v0, %hi(gActiveScreenMode) # $v0, 0x800e
/* 06EC5C 8006E05C 8C42C52C */  lw    $v0, %lo(gActiveScreenMode)($v0)
/* 06EC60 8006E060 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06EC64 8006E064 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06EC68 8006E068 1040000B */  beqz  $v0, .L8006E098
/* 06EC6C 8006E06C 24030001 */   li    $v1, 1
/* 06EC70 8006E070 10430078 */  beq   $v0, $v1, .L8006E254
/* 06EC74 8006E074 24040002 */   li    $a0, 2
/* 06EC78 8006E078 24040002 */  li    $a0, 2
/* 06EC7C 8006E07C 10440075 */  beq   $v0, $a0, .L8006E254
/* 06EC80 8006E080 00000000 */   nop
/* 06EC84 8006E084 24030003 */  li    $v1, 3
/* 06EC88 8006E088 104300C4 */  beq   $v0, $v1, .L8006E39C
/* 06EC8C 8006E08C 00000000 */   nop
/* 06EC90 8006E090 100000E0 */  b     .L8006E414
/* 06EC94 8006E094 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E098:
/* 06EC98 8006E098 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 06EC9C 8006E09C 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 06ECA0 8006E0A0 3C04800E */  lui   $a0, %hi(gPlayerOne)
/* 06ECA4 8006E0A4 00002825 */  move  $a1, $zero
/* 06ECA8 8006E0A8 1040000B */  beqz  $v0, .L8006E0D8
/* 06ECAC 8006E0AC 00003025 */   move  $a2, $zero
/* 06ECB0 8006E0B0 24030001 */  li    $v1, 1
/* 06ECB4 8006E0B4 1043002F */  beq   $v0, $v1, .L8006E174
/* 06ECB8 8006E0B8 3C04800E */   lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06ECBC 8006E0BC 24040002 */  li    $a0, 2
/* 06ECC0 8006E0C0 10440046 */  beq   $v0, $a0, .L8006E1DC
/* 06ECC4 8006E0C4 24030003 */   li    $v1, 3
/* 06ECC8 8006E0C8 10430044 */  beq   $v0, $v1, .L8006E1DC
/* 06ECCC 8006E0CC 00000000 */   nop
/* 06ECD0 8006E0D0 100000D0 */  b     .L8006E414
/* 06ECD4 8006E0D4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E0D8:
/* 06ECD8 8006E0D8 0C01B908 */  jal   func_8006E420
/* 06ECDC 8006E0DC 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 06ECE0 8006E0E0 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06ECE4 8006E0E4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06ECE8 8006E0E8 24050001 */  li    $a1, 1
/* 06ECEC 8006E0EC 0C01B908 */  jal   func_8006E420
/* 06ECF0 8006E0F0 00003025 */   move  $a2, $zero
/* 06ECF4 8006E0F4 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 06ECF8 8006E0F8 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 06ECFC 8006E0FC 24050002 */  li    $a1, 2
/* 06ED00 8006E100 0C01B908 */  jal   func_8006E420
/* 06ED04 8006E104 00003025 */   move  $a2, $zero
/* 06ED08 8006E108 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 06ED0C 8006E10C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 06ED10 8006E110 24050003 */  li    $a1, 3
/* 06ED14 8006E114 0C01B908 */  jal   func_8006E420
/* 06ED18 8006E118 00003025 */   move  $a2, $zero
/* 06ED1C 8006E11C 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 06ED20 8006E120 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 06ED24 8006E124 24050004 */  li    $a1, 4
/* 06ED28 8006E128 0C01B908 */  jal   func_8006E420
/* 06ED2C 8006E12C 00003025 */   move  $a2, $zero
/* 06ED30 8006E130 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 06ED34 8006E134 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 06ED38 8006E138 24050005 */  li    $a1, 5
/* 06ED3C 8006E13C 0C01B908 */  jal   func_8006E420
/* 06ED40 8006E140 00003025 */   move  $a2, $zero
/* 06ED44 8006E144 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 06ED48 8006E148 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 06ED4C 8006E14C 24050006 */  li    $a1, 6
/* 06ED50 8006E150 0C01B908 */  jal   func_8006E420
/* 06ED54 8006E154 00003025 */   move  $a2, $zero
/* 06ED58 8006E158 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 06ED5C 8006E15C 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 06ED60 8006E160 24050007 */  li    $a1, 7
/* 06ED64 8006E164 0C01B908 */  jal   func_8006E420
/* 06ED68 8006E168 00003025 */   move  $a2, $zero
/* 06ED6C 8006E16C 100000A9 */  b     .L8006E414
/* 06ED70 8006E170 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E174:
/* 06ED74 8006E174 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 06ED78 8006E178 00002825 */  move  $a1, $zero
/* 06ED7C 8006E17C 0C01B908 */  jal   func_8006E420
/* 06ED80 8006E180 00003025 */   move  $a2, $zero
/* 06ED84 8006E184 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06ED88 8006E188 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06ED8C 8006E18C 24010100 */  li    $at, 256
/* 06ED90 8006E190 24050001 */  li    $a1, 1
/* 06ED94 8006E194 948E0000 */  lhu   $t6, ($a0)
/* 06ED98 8006E198 31CF0100 */  andi  $t7, $t6, 0x100
/* 06ED9C 8006E19C 15E10003 */  bne   $t7, $at, .L8006E1AC
/* 06EDA0 8006E1A0 00000000 */   nop
/* 06EDA4 8006E1A4 0C01B908 */  jal   func_8006E420
/* 06EDA8 8006E1A8 00003025 */   move  $a2, $zero
.L8006E1AC:
/* 06EDAC 8006E1AC 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 06EDB0 8006E1B0 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 06EDB4 8006E1B4 24010100 */  li    $at, 256
/* 06EDB8 8006E1B8 24050002 */  li    $a1, 2
/* 06EDBC 8006E1BC 94980000 */  lhu   $t8, ($a0)
/* 06EDC0 8006E1C0 33190100 */  andi  $t9, $t8, 0x100
/* 06EDC4 8006E1C4 57210093 */  bnel  $t9, $at, .L8006E414
/* 06EDC8 8006E1C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06EDCC 8006E1CC 0C01B908 */  jal   func_8006E420
/* 06EDD0 8006E1D0 00003025 */   move  $a2, $zero
/* 06EDD4 8006E1D4 1000008F */  b     .L8006E414
/* 06EDD8 8006E1D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E1DC:
/* 06EDDC 8006E1DC 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06EDE0 8006E1E0 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 06EDE4 8006E1E4 00002825 */  move  $a1, $zero
/* 06EDE8 8006E1E8 0C01B908 */  jal   func_8006E420
/* 06EDEC 8006E1EC 00003025 */   move  $a2, $zero
/* 06EDF0 8006E1F0 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06EDF4 8006E1F4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06EDF8 8006E1F8 24050001 */  li    $a1, 1
/* 06EDFC 8006E1FC 0C01B908 */  jal   func_8006E420
/* 06EE00 8006E200 00003025 */   move  $a2, $zero
/* 06EE04 8006E204 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 06EE08 8006E208 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
/* 06EE0C 8006E20C 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 06EE10 8006E210 24050002 */  li    $a1, 2
/* 06EE14 8006E214 28410003 */  slti  $at, $v0, 3
/* 06EE18 8006E218 14200005 */  bnez  $at, .L8006E230
/* 06EE1C 8006E21C 00003025 */   move  $a2, $zero
/* 06EE20 8006E220 0C01B908 */  jal   func_8006E420
/* 06EE24 8006E224 8C84C4E4 */   lw    $a0, %lo(gPlayerThree)($a0)
/* 06EE28 8006E228 3C02800E */  lui   $v0, %hi(gPlayerCountSelection1) # $v0, 0x800e
/* 06EE2C 8006E22C 8C42C538 */  lw    $v0, %lo(gPlayerCountSelection1)($v0)
.L8006E230:
/* 06EE30 8006E230 24010004 */  li    $at, 4
/* 06EE34 8006E234 14410076 */  bne   $v0, $at, .L8006E410
/* 06EE38 8006E238 3C04800E */   lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 06EE3C 8006E23C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 06EE40 8006E240 24050003 */  li    $a1, 3
/* 06EE44 8006E244 0C01B908 */  jal   func_8006E420
/* 06EE48 8006E248 00003025 */   move  $a2, $zero
/* 06EE4C 8006E24C 10000071 */  b     .L8006E414
/* 06EE50 8006E250 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E254:
/* 06EE54 8006E254 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 06EE58 8006E258 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 06EE5C 8006E25C 00002825 */  move  $a1, $zero
/* 06EE60 8006E260 00003025 */  move  $a2, $zero
/* 06EE64 8006E264 10400009 */  beqz  $v0, .L8006E28C
/* 06EE68 8006E268 00000000 */   nop
/* 06EE6C 8006E26C 1043003B */  beq   $v0, $v1, .L8006E35C
/* 06EE70 8006E270 00002825 */   move  $a1, $zero
/* 06EE74 8006E274 1044002D */  beq   $v0, $a0, .L8006E32C
/* 06EE78 8006E278 24030003 */   li    $v1, 3
/* 06EE7C 8006E27C 1043002B */  beq   $v0, $v1, .L8006E32C
/* 06EE80 8006E280 00000000 */   nop
/* 06EE84 8006E284 10000063 */  b     .L8006E414
/* 06EE88 8006E288 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E28C:
/* 06EE8C 8006E28C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06EE90 8006E290 0C01B908 */  jal   func_8006E420
/* 06EE94 8006E294 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 06EE98 8006E298 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06EE9C 8006E29C 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06EEA0 8006E2A0 24050001 */  li    $a1, 1
/* 06EEA4 8006E2A4 0C01B908 */  jal   func_8006E420
/* 06EEA8 8006E2A8 00003025 */   move  $a2, $zero
/* 06EEAC 8006E2AC 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 06EEB0 8006E2B0 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 06EEB4 8006E2B4 24050002 */  li    $a1, 2
/* 06EEB8 8006E2B8 0C01B908 */  jal   func_8006E420
/* 06EEBC 8006E2BC 00003025 */   move  $a2, $zero
/* 06EEC0 8006E2C0 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 06EEC4 8006E2C4 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 06EEC8 8006E2C8 24050003 */  li    $a1, 3
/* 06EECC 8006E2CC 0C01B908 */  jal   func_8006E420
/* 06EED0 8006E2D0 00003025 */   move  $a2, $zero
/* 06EED4 8006E2D4 3C04800E */  lui   $a0, %hi(gPlayerFive) # $a0, 0x800e
/* 06EED8 8006E2D8 8C84C4EC */  lw    $a0, %lo(gPlayerFive)($a0)
/* 06EEDC 8006E2DC 24050004 */  li    $a1, 4
/* 06EEE0 8006E2E0 0C01B908 */  jal   func_8006E420
/* 06EEE4 8006E2E4 00003025 */   move  $a2, $zero
/* 06EEE8 8006E2E8 3C04800E */  lui   $a0, %hi(gPlayerSix) # $a0, 0x800e
/* 06EEEC 8006E2EC 8C84C4F0 */  lw    $a0, %lo(gPlayerSix)($a0)
/* 06EEF0 8006E2F0 24050005 */  li    $a1, 5
/* 06EEF4 8006E2F4 0C01B908 */  jal   func_8006E420
/* 06EEF8 8006E2F8 00003025 */   move  $a2, $zero
/* 06EEFC 8006E2FC 3C04800E */  lui   $a0, %hi(gPlayerSeven) # $a0, 0x800e
/* 06EF00 8006E300 8C84C4F4 */  lw    $a0, %lo(gPlayerSeven)($a0)
/* 06EF04 8006E304 24050006 */  li    $a1, 6
/* 06EF08 8006E308 0C01B908 */  jal   func_8006E420
/* 06EF0C 8006E30C 00003025 */   move  $a2, $zero
/* 06EF10 8006E310 3C04800E */  lui   $a0, %hi(gPlayerEight) # $a0, 0x800e
/* 06EF14 8006E314 8C84C4F8 */  lw    $a0, %lo(gPlayerEight)($a0)
/* 06EF18 8006E318 24050007 */  li    $a1, 7
/* 06EF1C 8006E31C 0C01B908 */  jal   func_8006E420
/* 06EF20 8006E320 00003025 */   move  $a2, $zero
/* 06EF24 8006E324 1000003B */  b     .L8006E414
/* 06EF28 8006E328 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E32C:
/* 06EF2C 8006E32C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06EF30 8006E330 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 06EF34 8006E334 00002825 */  move  $a1, $zero
/* 06EF38 8006E338 0C01B908 */  jal   func_8006E420
/* 06EF3C 8006E33C 00003025 */   move  $a2, $zero
/* 06EF40 8006E340 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06EF44 8006E344 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06EF48 8006E348 24050001 */  li    $a1, 1
/* 06EF4C 8006E34C 0C01B908 */  jal   func_8006E420
/* 06EF50 8006E350 00003025 */   move  $a2, $zero
/* 06EF54 8006E354 1000002F */  b     .L8006E414
/* 06EF58 8006E358 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E35C:
/* 06EF5C 8006E35C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06EF60 8006E360 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 06EF64 8006E364 0C01B908 */  jal   func_8006E420
/* 06EF68 8006E368 00003025 */   move  $a2, $zero
/* 06EF6C 8006E36C 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06EF70 8006E370 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06EF74 8006E374 34018000 */  li    $at, 32768
/* 06EF78 8006E378 24050001 */  li    $a1, 1
/* 06EF7C 8006E37C 94880000 */  lhu   $t0, ($a0)
/* 06EF80 8006E380 31098000 */  andi  $t1, $t0, 0x8000
/* 06EF84 8006E384 55210023 */  bnel  $t1, $at, .L8006E414
/* 06EF88 8006E388 8FBF0014 */   lw    $ra, 0x14($sp)
/* 06EF8C 8006E38C 0C01B908 */  jal   func_8006E420
/* 06EF90 8006E390 00003025 */   move  $a2, $zero
/* 06EF94 8006E394 1000001F */  b     .L8006E414
/* 06EF98 8006E398 8FBF0014 */   lw    $ra, 0x14($sp)
.L8006E39C:
/* 06EF9C 8006E39C 3C02800E */  lui   $v0, %hi(gModeSelection) # $v0, 0x800e
/* 06EFA0 8006E3A0 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 06EFA4 8006E3A4 00002825 */  move  $a1, $zero
/* 06EFA8 8006E3A8 00003025 */  move  $a2, $zero
/* 06EFAC 8006E3AC 10440002 */  beq   $v0, $a0, .L8006E3B8
/* 06EFB0 8006E3B0 00000000 */   nop
/* 06EFB4 8006E3B4 14430016 */  bne   $v0, $v1, .L8006E410
.L8006E3B8:
/* 06EFB8 8006E3B8 3C04800E */   lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 06EFBC 8006E3BC 0C01B908 */  jal   func_8006E420
/* 06EFC0 8006E3C0 8C84C4DC */   lw    $a0, %lo(gPlayerOne)($a0)
/* 06EFC4 8006E3C4 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 06EFC8 8006E3C8 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 06EFCC 8006E3CC 24050001 */  li    $a1, 1
/* 06EFD0 8006E3D0 0C01B908 */  jal   func_8006E420
/* 06EFD4 8006E3D4 00003025 */   move  $a2, $zero
/* 06EFD8 8006E3D8 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 06EFDC 8006E3DC 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 06EFE0 8006E3E0 24050002 */  li    $a1, 2
/* 06EFE4 8006E3E4 0C01B908 */  jal   func_8006E420
/* 06EFE8 8006E3E8 00003025 */   move  $a2, $zero
/* 06EFEC 8006E3EC 3C0A800E */  lui   $t2, %hi(gPlayerCountSelection1) # $t2, 0x800e
/* 06EFF0 8006E3F0 8D4AC538 */  lw    $t2, %lo(gPlayerCountSelection1)($t2)
/* 06EFF4 8006E3F4 24010004 */  li    $at, 4
/* 06EFF8 8006E3F8 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 06EFFC 8006E3FC 15410004 */  bne   $t2, $at, .L8006E410
/* 06F000 8006E400 24050003 */   li    $a1, 3
/* 06F004 8006E404 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 06F008 8006E408 0C01B908 */  jal   func_8006E420
/* 06F00C 8006E40C 00003025 */   move  $a2, $zero
.L8006E410:
/* 06F010 8006E410 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006E414:
/* 06F014 8006E414 27BD0018 */  addiu $sp, $sp, 0x18
/* 06F018 8006E418 03E00008 */  jr    $ra
/* 06F01C 8006E41C 00000000 */   nop
