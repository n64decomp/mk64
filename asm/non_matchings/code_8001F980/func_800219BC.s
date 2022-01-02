glabel func_800219BC
/* 0225BC 800219BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0225C0 800219C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0225C4 800219C4 3C01800E */  lui   $at, %hi(D_800DDB58) # $at, 0x800e
/* 0225C8 800219C8 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 0225CC 800219CC 3C05800E */  lui   $a1, %hi(camera4) # $a1, 0x800e
/* 0225D0 800219D0 AC20DB58 */  sw    $zero, %lo(D_800DDB58)($at)
/* 0225D4 800219D4 8CA5DB4C */  lw    $a1, %lo(camera4)($a1)
/* 0225D8 800219D8 8C84C4FC */  lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 0225DC 800219DC 00003025 */  move  $a2, $zero
/* 0225E0 800219E0 0C008000 */  jal   func_80020000
/* 0225E4 800219E4 24070003 */   li    $a3, 3
/* 0225E8 800219E8 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0225EC 800219EC 3C05800E */  lui   $a1, %hi(camera4) # $a1, 0x800e
/* 0225F0 800219F0 8CA5DB4C */  lw    $a1, %lo(camera4)($a1)
/* 0225F4 800219F4 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0225F8 800219F8 24060001 */  li    $a2, 1
/* 0225FC 800219FC 0C008000 */  jal   func_80020000
/* 022600 80021A00 24070003 */   li    $a3, 3
/* 022604 80021A04 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022608 80021A08 3C05800E */  lui   $a1, %hi(camera4) # $a1, 0x800e
/* 02260C 80021A0C 8CA5DB4C */  lw    $a1, %lo(camera4)($a1)
/* 022610 80021A10 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 022614 80021A14 24060002 */  li    $a2, 2
/* 022618 80021A18 0C008000 */  jal   func_80020000
/* 02261C 80021A1C 24070003 */   li    $a3, 3
/* 022620 80021A20 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 022624 80021A24 3C05800E */  lui   $a1, %hi(camera4) # $a1, 0x800e
/* 022628 80021A28 8CA5DB4C */  lw    $a1, %lo(camera4)($a1)
/* 02262C 80021A2C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 022630 80021A30 24060003 */  li    $a2, 3
/* 022634 80021A34 0C008000 */  jal   func_80020000
/* 022638 80021A38 24070003 */   li    $a3, 3
/* 02263C 80021A3C 3C04800E */  lui   $a0, %hi(gPlayerOne) # $a0, 0x800e
/* 022640 80021A40 8C84C4DC */  lw    $a0, %lo(gPlayerOne)($a0)
/* 022644 80021A44 00002825 */  move  $a1, $zero
/* 022648 80021A48 0C008491 */  jal   func_80021244
/* 02264C 80021A4C 24060003 */   li    $a2, 3
/* 022650 80021A50 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 022654 80021A54 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 022658 80021A58 24050001 */  li    $a1, 1
/* 02265C 80021A5C 0C008491 */  jal   func_80021244
/* 022660 80021A60 24060003 */   li    $a2, 3
/* 022664 80021A64 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 022668 80021A68 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 02266C 80021A6C 24050002 */  li    $a1, 2
/* 022670 80021A70 0C008491 */  jal   func_80021244
/* 022674 80021A74 24060003 */   li    $a2, 3
/* 022678 80021A78 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 02267C 80021A7C 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 022680 80021A80 24050003 */  li    $a1, 3
/* 022684 80021A84 0C008491 */  jal   func_80021244
/* 022688 80021A88 24060003 */   li    $a2, 3
/* 02268C 80021A8C 3C0E800E */  lui   $t6, %hi(D_800DDB58) # $t6, 0x800e
/* 022690 80021A90 8DCEDB58 */  lw    $t6, %lo(D_800DDB58)($t6)
/* 022694 80021A94 3C04800E */  lui   $a0, %hi(gPlayerOneCopy) # $a0, 0x800e
/* 022698 80021A98 00002825 */  move  $a1, $zero
/* 02269C 80021A9C 11C00005 */  beqz  $t6, .L80021AB4
/* 0226A0 80021AA0 24060003 */   li    $a2, 3
/* 0226A4 80021AA4 0C0083C7 */  jal   func_80020F1C
/* 0226A8 80021AA8 00000000 */   nop
/* 0226AC 80021AAC 10000013 */  b     .L80021AFC
/* 0226B0 80021AB0 8FBF0014 */   lw    $ra, 0x14($sp)
.L80021AB4:
/* 0226B4 80021AB4 0C01B9D1 */  jal   func_8006E744
/* 0226B8 80021AB8 8C84C4FC */   lw    $a0, %lo(gPlayerOneCopy)($a0)
/* 0226BC 80021ABC 3C04800E */  lui   $a0, %hi(gPlayerTwo) # $a0, 0x800e
/* 0226C0 80021AC0 8C84C4E0 */  lw    $a0, %lo(gPlayerTwo)($a0)
/* 0226C4 80021AC4 24050001 */  li    $a1, 1
/* 0226C8 80021AC8 0C01B9D1 */  jal   func_8006E744
/* 0226CC 80021ACC 24060003 */   li    $a2, 3
/* 0226D0 80021AD0 3C04800E */  lui   $a0, %hi(gPlayerThree) # $a0, 0x800e
/* 0226D4 80021AD4 8C84C4E4 */  lw    $a0, %lo(gPlayerThree)($a0)
/* 0226D8 80021AD8 24050002 */  li    $a1, 2
/* 0226DC 80021ADC 0C01B9D1 */  jal   func_8006E744
/* 0226E0 80021AE0 24060003 */   li    $a2, 3
/* 0226E4 80021AE4 3C04800E */  lui   $a0, %hi(gPlayerFour) # $a0, 0x800e
/* 0226E8 80021AE8 8C84C4E8 */  lw    $a0, %lo(gPlayerFour)($a0)
/* 0226EC 80021AEC 24050003 */  li    $a1, 3
/* 0226F0 80021AF0 0C01B9D1 */  jal   func_8006E744
/* 0226F4 80021AF4 24060003 */   li    $a2, 3
/* 0226F8 80021AF8 8FBF0014 */  lw    $ra, 0x14($sp)
.L80021AFC:
/* 0226FC 80021AFC 3C01800E */  lui   $at, %hi(D_800DDB58) # $at, 0x800e
/* 022700 80021B00 AC20DB58 */  sw    $zero, %lo(D_800DDB58)($at)
/* 022704 80021B04 03E00008 */  jr    $ra
/* 022708 80021B08 27BD0018 */   addiu $sp, $sp, 0x18
