glabel func_800C59C4
/* 0C65C4 800C59C4 3C0F803B */  lui   $t7, %hi(D_803B17D0) # $t7, 0x803b
/* 0C65C8 800C59C8 8DEF17D0 */  lw    $t7, %lo(D_803B17D0)($t7)
/* 0C65CC 800C59CC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C65D0 800C59D0 3C0E803B */  lui   $t6, %hi(D_803B5EF0) # $t6, 0x803b
/* 0C65D4 800C59D4 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C65D8 800C59D8 25CE5EF0 */  addiu $t6, %lo(D_803B5EF0) # addiu $t6, $t6, 0x5ef0
/* 0C65DC 800C59DC 03A0F025 */  move  $fp, $sp
/* 0C65E0 800C59E0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C65E4 800C59E4 11CF000F */  beq   $t6, $t7, .L800C5A24
/* 0C65E8 800C59E8 AFB00024 */   sw    $s0, 0x24($sp)
/* 0C65EC 800C59EC 3C018019 */  lui   $at, %hi(D_80192C38) # $at, 0x8019
/* 0C65F0 800C59F0 A0202C38 */  sb    $zero, %lo(D_80192C38)($at)
/* 0C65F4 800C59F4 00008025 */  move  $s0, $zero
.L800C59F8:
/* 0C65F8 800C59F8 0C031222 */  jal   func_800C4888
/* 0C65FC 800C59FC 320400FF */   andi  $a0, $s0, 0xff
/* 0C6600 800C5A00 0C0313F9 */  jal   func_800C4FE4
/* 0C6604 800C5A04 320400FF */   andi  $a0, $s0, 0xff
/* 0C6608 800C5A08 0C03165A */  jal   func_800C5968
/* 0C660C 800C5A0C 320400FF */   andi  $a0, $s0, 0xff
/* 0C6610 800C5A10 26100001 */  addiu $s0, $s0, 1
/* 0C6614 800C5A14 321800FF */  andi  $t8, $s0, 0xff
/* 0C6618 800C5A18 2B010006 */  slti  $at, $t8, 6
/* 0C661C 800C5A1C 1420FFF6 */  bnez  $at, .L800C59F8
/* 0C6620 800C5A20 03008025 */   move  $s0, $t8
.L800C5A24:
/* 0C6624 800C5A24 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C6628 800C5A28 03C0E825 */  move  $sp, $fp
/* 0C662C 800C5A2C 8FD00024 */  lw    $s0, 0x24($fp)
/* 0C6630 800C5A30 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C6634 800C5A34 03E00008 */  jr    $ra
/* 0C6638 800C5A38 27BD0030 */   addiu $sp, $sp, 0x30
