glabel func_800CA330
/* 0CAF30 800CA330 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CAF34 800CA334 308500FF */  andi  $a1, $a0, 0xff
/* 0CAF38 800CA338 3C011000 */  lui   $at, (0x100000FF >> 16) # lui $at, 0x1000
/* 0CAF3C 800CA33C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CAF40 800CA340 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CAF44 800CA344 AFA40038 */  sw    $a0, 0x38($sp)
/* 0CAF48 800CA348 342100FF */  ori   $at, (0x100000FF & 0xFFFF) # ori $at, $at, 0xff
/* 0CAF4C 800CA34C 00051400 */  sll   $v0, $a1, 0x10
/* 0CAF50 800CA350 03A0F025 */  move  $fp, $sp
/* 0CAF54 800CA354 00412025 */  or    $a0, $v0, $at
/* 0CAF58 800CA358 0C030D12 */  jal   func_800C3448
/* 0CAF5C 800CA35C AFA20034 */   sw    $v0, 0x34($sp)
/* 0CAF60 800CA360 8FC20034 */  lw    $v0, 0x34($fp)
/* 0CAF64 800CA364 3C011100 */  lui   $at, (0x110000FF >> 16) # lui $at, 0x1100
/* 0CAF68 800CA368 342100FF */  ori   $at, (0x110000FF & 0xFFFF) # ori $at, $at, 0xff
/* 0CAF6C 800CA36C 0C030D12 */  jal   func_800C3448
/* 0CAF70 800CA370 00412025 */   or    $a0, $v0, $at
/* 0CAF74 800CA374 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CAF78 800CA378 03C0E825 */  move  $sp, $fp
/* 0CAF7C 800CA37C 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CAF80 800CA380 03E00008 */  jr    $ra
/* 0CAF84 800CA384 27BD0038 */   addiu $sp, $sp, 0x38
