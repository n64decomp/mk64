glabel func_800C5BD0
/* 0C67D0 800C5BD0 3C0E800F */  lui   $t6, %hi(D_800EA1C0) # $t6, 0x800f
/* 0C67D4 800C5BD4 91CEA1C0 */  lbu   $t6, %lo(D_800EA1C0)($t6)
/* 0C67D8 800C5BD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C67DC 800C5BDC AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C67E0 800C5BE0 03A0F025 */  move  $fp, $sp
/* 0C67E4 800C5BE4 15C0000D */  bnez  $t6, .L800C5C1C
/* 0C67E8 800C5BE8 AFBF002C */   sw    $ra, 0x2c($sp)
/* 0C67EC 800C5BEC 3C0F800F */  lui   $t7, %hi(gPlayers+0x254) # $t7, 0x800f
/* 0C67F0 800C5BF0 95EF6BE4 */  lhu   $t7, %lo(gPlayers+0x254)($t7)
/* 0C67F4 800C5BF4 3C04800F */  lui   $a0, %hi(D_800EA154)
/* 0C67F8 800C5BF8 3C01F300 */  lui   $at, 0xf300
/* 0C67FC 800C5BFC 008F2021 */  addu  $a0, $a0, $t7
/* 0C6800 800C5C00 9098A154 */  lbu   $t8, %lo(D_800EA154)($a0)
/* 0C6804 800C5C04 00002825 */  move  $a1, $zero
/* 0C6808 800C5C08 0018CA00 */  sll   $t9, $t8, 8
/* 0C680C 800C5C0C 0C032EFA */  jal   func_800CBBE8
/* 0C6810 800C5C10 03212025 */   or    $a0, $t9, $at
/* 0C6814 800C5C14 10000006 */  b     .L800C5C30
/* 0C6818 800C5C18 8FDF002C */   lw    $ra, 0x2c($fp)
.L800C5C1C:
/* 0C681C 800C5C1C 3C04F300 */  lui   $a0, (0xF3004D00 >> 16) # lui $a0, 0xf300
/* 0C6820 800C5C20 34844D00 */  ori   $a0, (0xF3004D00 & 0xFFFF) # ori $a0, $a0, 0x4d00
/* 0C6824 800C5C24 0C032EFA */  jal   func_800CBBE8
/* 0C6828 800C5C28 00002825 */   move  $a1, $zero
/* 0C682C 800C5C2C 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C5C30:
/* 0C6830 800C5C30 03C0E825 */  move  $sp, $fp
/* 0C6834 800C5C34 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C6838 800C5C38 03E00008 */  jr    $ra
/* 0C683C 800C5C3C 27BD0030 */   addiu $sp, $sp, 0x30
