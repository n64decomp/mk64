glabel func_800799A8
/* 07A5A8 800799A8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07A5AC 800799AC AFBF0024 */  sw    $ra, 0x24($sp)
/* 07A5B0 800799B0 AFB00020 */  sw    $s0, 0x20($sp)
/* 07A5B4 800799B4 00808025 */  move  $s0, $a0
/* 07A5B8 800799B8 0C01E47C */  jal   func_800791F0
/* 07A5BC 800799BC AFA5002C */   sw    $a1, 0x2c($sp)
/* 07A5C0 800799C0 3C050D02 */  lui   $a1, %hi(gTLUTLakituFishing) # $a1, 0xd02
/* 07A5C4 800799C4 3C060F0D */  lui   $a2, %hi(D_0F0CCF50) # $a2, 0xf0d
/* 07A5C8 800799C8 240E0048 */  li    $t6, 72
/* 07A5CC 800799CC AFAE0010 */  sw    $t6, 0x10($sp)
/* 07A5D0 800799D0 24C6CF50 */  addiu $a2, %lo(D_0F0CCF50) # addiu $a2, $a2, -0x30b0
/* 07A5D4 800799D4 24A55CD8 */  addiu $a1, %lo(gTLUTLakituFishing) # addiu $a1, $a1, 0x5cd8
/* 07A5D8 800799D8 02002025 */  move  $a0, $s0
/* 07A5DC 800799DC 0C01CD11 */  jal   func_80073444
/* 07A5E0 800799E0 24070038 */   li    $a3, 56
/* 07A5E4 800799E4 001078C0 */  sll   $t7, $s0, 3
/* 07A5E8 800799E8 01F07823 */  subu  $t7, $t7, $s0
/* 07A5EC 800799EC 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 07A5F0 800799F0 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 07A5F4 800799F4 000F7940 */  sll   $t7, $t7, 5
/* 07A5F8 800799F8 3C190D00 */  lui   $t9, %hi(D_0D005F30) # $t9, 0xd00
/* 07A5FC 800799FC 27395F30 */  addiu $t9, %lo(D_0D005F30) # addiu $t9, $t9, 0x5f30
/* 07A600 80079A00 01F81021 */  addu  $v0, $t7, $t8
/* 07A604 80079A04 AC590074 */  sw    $t9, 0x74($v0)
/* 07A608 80079A08 3C01800F */  lui   $at, %hi(D_800EEC54) # $at, 0x800f
/* 07A60C 80079A0C C424EC54 */  lwc1  $f4, %lo(D_800EEC54)($at)
/* 07A610 80079A10 02002025 */  move  $a0, $s0
/* 07A614 80079A14 0C021B9C */  jal   func_80086E70
/* 07A618 80079A18 E4440000 */   swc1  $f4, ($v0)
/* 07A61C 80079A1C 02002025 */  move  $a0, $s0
/* 07A620 80079A20 0C01C87A */  jal   func_800721E8
/* 07A624 80079A24 24050010 */   li    $a1, 16
/* 07A628 80079A28 0C01CDC8 */  jal   func_80073720
/* 07A62C 80079A2C 02002025 */   move  $a0, $s0
/* 07A630 80079A30 0C01C922 */  jal   func_80072488
/* 07A634 80079A34 02002025 */   move  $a0, $s0
/* 07A638 80079A38 3C050100 */  lui   $a1, (0x0100FA28 >> 16) # lui $a1, 0x100
/* 07A63C 80079A3C 34A5FA28 */  ori   $a1, (0x0100FA28 & 0xFFFF) # ori $a1, $a1, 0xfa28
/* 07A640 80079A40 0C0323E0 */  jal   func_800C8F80
/* 07A644 80079A44 93A4002F */   lbu   $a0, 0x2f($sp)
/* 07A648 80079A48 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07A64C 80079A4C 8FB00020 */  lw    $s0, 0x20($sp)
/* 07A650 80079A50 27BD0028 */  addiu $sp, $sp, 0x28
/* 07A654 80079A54 03E00008 */  jr    $ra
/* 07A658 80079A58 00000000 */   nop   
