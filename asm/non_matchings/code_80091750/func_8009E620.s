glabel func_8009E620
/* 09F220 8009E620 3C038019 */  lui   $v1, %hi(D_8018D9E0) # $v1, 0x8019
/* 09F224 8009E624 3C028019 */  lui   $v0, %hi(D_8018DEE0) # $v0, 0x8019
/* 09F228 8009E628 2442DEE0 */  addiu $v0, %lo(D_8018DEE0) # addiu $v0, $v0, -0x2120
/* 09F22C 8009E62C 2463D9E0 */  addiu $v1, %lo(D_8018D9E0) # addiu $v1, $v1, -0x2620
.L8009E630:
/* 09F230 8009E630 246300A0 */  addiu $v1, $v1, 0xa0
/* 09F234 8009E634 AC60FF88 */  sw    $zero, -0x78($v1)
/* 09F238 8009E638 AC60FFB0 */  sw    $zero, -0x50($v1)
/* 09F23C 8009E63C AC60FFD8 */  sw    $zero, -0x28($v1)
/* 09F240 8009E640 1462FFFB */  bne   $v1, $v0, .L8009E630
/* 09F244 8009E644 AC60FF60 */   sw    $zero, -0xa0($v1)
/* 09F248 8009E648 03E00008 */  jr    $ra
/* 09F24C 8009E64C 00000000 */   nop   
