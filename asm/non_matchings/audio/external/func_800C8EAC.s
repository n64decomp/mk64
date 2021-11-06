glabel func_800C8EAC
/* 0C9AAC 800C8EAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9AB0 800C8EB0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9AB4 800C8EB4 97A40032 */  lhu   $a0, 0x32($sp)
/* 0C9AB8 800C8EB8 3C010001 */  lui   $at, 1
/* 0C9ABC 800C8EBC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C9AC0 800C8EC0 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9AC4 800C8EC4 00817025 */  or    $t6, $a0, $at
/* 0C9AC8 800C8EC8 03A0F025 */  move  $fp, $sp
/* 0C9ACC 800C8ECC 0C030D12 */  jal   func_800C3448
/* 0C9AD0 800C8ED0 01C02025 */   move  $a0, $t6
/* 0C9AD4 800C8ED4 97CF0032 */  lhu   $t7, 0x32($fp)
/* 0C9AD8 800C8ED8 3C01800F */  lui   $at, %hi(D_800EA15C) # $at, 0x800f
/* 0C9ADC 800C8EDC 03C0E825 */  move  $sp, $fp
/* 0C9AE0 800C8EE0 A42FA15C */  sh    $t7, %lo(D_800EA15C)($at)
/* 0C9AE4 800C8EE4 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C9AE8 800C8EE8 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9AEC 800C8EEC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C9AF0 800C8EF0 03E00008 */  jr    $ra
/* 0C9AF4 800C8EF4 00000000 */   nop   
