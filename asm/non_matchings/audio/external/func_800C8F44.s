glabel func_800C8F44
/* 0C9B44 800C8F44 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9B48 800C8F48 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C9B4C 800C8F4C AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9B50 800C8F50 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9B54 800C8F54 308600FF */  andi  $a2, $a0, 0xff
/* 0C9B58 800C8F58 03A0F025 */  move  $fp, $sp
/* 0C9B5C 800C8F5C 00002025 */  move  $a0, $zero
/* 0C9B60 800C8F60 00002825 */  move  $a1, $zero
/* 0C9B64 800C8F64 0C030DB1 */  jal   func_800C36C4
/* 0C9B68 800C8F68 24070001 */   li    $a3, 1
/* 0C9B6C 800C8F6C 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C9B70 800C8F70 03C0E825 */  move  $sp, $fp
/* 0C9B74 800C8F74 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9B78 800C8F78 03E00008 */  jr    $ra
/* 0C9B7C 800C8F7C 27BD0030 */   addiu $sp, $sp, 0x30
