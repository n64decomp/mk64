glabel func_800C8EF8
/* 0C9AF8 800C8EF8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9AFC 800C8EFC AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9B00 800C8F00 97A40032 */  lhu   $a0, 0x32($sp)
/* 0C9B04 800C8F04 3C010101 */  lui   $at, 0x101
/* 0C9B08 800C8F08 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C9B0C 800C8F0C AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9B10 800C8F10 00817025 */  or    $t6, $a0, $at
/* 0C9B14 800C8F14 03A0F025 */  move  $fp, $sp
/* 0C9B18 800C8F18 0C030D12 */  jal   func_800C3448
/* 0C9B1C 800C8F1C 01C02025 */   move  $a0, $t6
/* 0C9B20 800C8F20 97CF0032 */  lhu   $t7, 0x32($fp)
/* 0C9B24 800C8F24 3C01800F */  lui   $at, %hi(D_800EA160) # $at, 0x800f
/* 0C9B28 800C8F28 03C0E825 */  move  $sp, $fp
/* 0C9B2C 800C8F2C A42FA160 */  sh    $t7, %lo(D_800EA160)($at)
/* 0C9B30 800C8F30 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C9B34 800C8F34 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9B38 800C8F38 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C9B3C 800C8F3C 03E00008 */  jr    $ra
/* 0C9B40 800C8F40 00000000 */   nop   
