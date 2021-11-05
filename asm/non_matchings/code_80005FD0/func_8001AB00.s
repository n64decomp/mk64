glabel func_8001AB00
/* 01B700 8001AB00 3C038016 */  lui   $v1, %hi(D_801642D8) # $v1, 0x8016
/* 01B704 8001AB04 3C048016 */  lui   $a0, %hi(D_80164358) # $a0, 0x8016
/* 01B708 8001AB08 24844358 */  addiu $a0, %lo(D_80164358) # addiu $a0, $a0, 0x4358
/* 01B70C 8001AB0C 246342D8 */  addiu $v1, %lo(D_801642D8) # addiu $v1, $v1, 0x42d8
/* 01B710 8001AB10 2402FFFF */  li    $v0, -1
.L8001AB14:
/* 01B714 8001AB14 24630040 */  addiu $v1, $v1, 0x40
/* 01B718 8001AB18 A460FFD0 */  sh    $zero, -0x30($v1)
/* 01B71C 8001AB1C A460FFD4 */  sh    $zero, -0x2c($v1)
/* 01B720 8001AB20 A462FFD2 */  sh    $v0, -0x2e($v1)
/* 01B724 8001AB24 A460FFD6 */  sh    $zero, -0x2a($v1)
/* 01B728 8001AB28 A460FFD8 */  sh    $zero, -0x28($v1)
/* 01B72C 8001AB2C A460FFE0 */  sh    $zero, -0x20($v1)
/* 01B730 8001AB30 A460FFE4 */  sh    $zero, -0x1c($v1)
/* 01B734 8001AB34 A462FFE2 */  sh    $v0, -0x1e($v1)
/* 01B738 8001AB38 A460FFE6 */  sh    $zero, -0x1a($v1)
/* 01B73C 8001AB3C A460FFE8 */  sh    $zero, -0x18($v1)
/* 01B740 8001AB40 A460FFF0 */  sh    $zero, -0x10($v1)
/* 01B744 8001AB44 A460FFF4 */  sh    $zero, -0xc($v1)
/* 01B748 8001AB48 A462FFF2 */  sh    $v0, -0xe($v1)
/* 01B74C 8001AB4C A460FFF6 */  sh    $zero, -0xa($v1)
/* 01B750 8001AB50 A460FFF8 */  sh    $zero, -8($v1)
/* 01B754 8001AB54 A460FFC0 */  sh    $zero, -0x40($v1)
/* 01B758 8001AB58 A460FFC4 */  sh    $zero, -0x3c($v1)
/* 01B75C 8001AB5C A462FFC2 */  sh    $v0, -0x3e($v1)
/* 01B760 8001AB60 A460FFC6 */  sh    $zero, -0x3a($v1)
/* 01B764 8001AB64 1464FFEB */  bne   $v1, $a0, .L8001AB14
/* 01B768 8001AB68 A460FFC8 */   sh    $zero, -0x38($v1)
/* 01B76C 8001AB6C 03E00008 */  jr    $ra
/* 01B770 8001AB70 00000000 */   nop   
