glabel func_8006EE7C
/* 06FA7C 8006EE7C 000470C0 */  sll   $t6, $a0, 3
/* 06FA80 8006EE80 01C47023 */  subu  $t6, $t6, $a0
/* 06FA84 8006EE84 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 06FA88 8006EE88 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 06FA8C 8006EE8C 000E7140 */  sll   $t6, $t6, 5
/* 06FA90 8006EE90 01CF1021 */  addu  $v0, $t6, $t7
/* 06FA94 8006EE94 A44000A4 */  sh    $zero, 0xa4($v0)
/* 06FA98 8006EE98 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 06FA9C 8006EE9C 845800A4 */  lh    $t8, 0xa4($v0)
/* 06FAA0 8006EEA0 44812000 */  mtc1  $at, $f4
/* 06FAA4 8006EEA4 3C030D02 */  lui   $v1, %hi(D_0D01DED8) # $v1, 0xd02
/* 06FAA8 8006EEA8 3C050D02 */  lui   $a1, %hi(D_0D01FED8) # $a1, 0xd02
/* 06FAAC 8006EEAC 24A5FED8 */  addiu $a1, %lo(D_0D01FED8) # addiu $a1, $a1, -0x128
/* 06FAB0 8006EEB0 2463DED8 */  addiu $v1, %lo(D_0D01DED8) # addiu $v1, $v1, -0x2128
/* 06FAB4 8006EEB4 2419FFFF */  li    $t9, -1
/* 06FAB8 8006EEB8 240800A0 */  li    $t0, 160
/* 06FABC 8006EEBC 2409FFE0 */  li    $t1, -32
/* 06FAC0 8006EEC0 AC430068 */  sw    $v1, 0x68($v0)
/* 06FAC4 8006EEC4 AC430060 */  sw    $v1, 0x60($v0)
/* 06FAC8 8006EEC8 AC45006C */  sw    $a1, 0x6c($v0)
/* 06FACC 8006EECC AC450064 */  sw    $a1, 0x64($v0)
/* 06FAD0 8006EED0 AC59004C */  sw    $t9, 0x4c($v0)
/* 06FAD4 8006EED4 A448009C */  sh    $t0, 0x9c($v0)
/* 06FAD8 8006EED8 A449009E */  sh    $t1, 0x9e($v0)
/* 06FADC 8006EEDC A05800D2 */  sb    $t8, 0xd2($v0)
/* 06FAE0 8006EEE0 03E00008 */  jr    $ra
/* 06FAE4 8006EEE4 E4440000 */   swc1  $f4, ($v0)
