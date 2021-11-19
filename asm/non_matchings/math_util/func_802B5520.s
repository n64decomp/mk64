glabel func_802B5520
/* 11EB30 802B5520 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 11EB34 802B5524 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11EB38 802B5528 AFA40018 */  sw    $a0, 0x18($sp)
/* 11EB3C 802B552C 0C0AD4F2 */  jal   func_802B53C8
/* 11EB40 802B5530 AFA5001C */   sw    $a1, 0x1c($sp)
/* 11EB44 802B5534 8FA5001C */  lw    $a1, 0x1c($sp)
/* 11EB48 802B5538 8FA40018 */  lw    $a0, 0x18($sp)
/* 11EB4C 802B553C C4A40000 */  lwc1  $f4, ($a1)
/* 11EB50 802B5540 E4840030 */  swc1  $f4, 0x30($a0)
/* 11EB54 802B5544 C4A60004 */  lwc1  $f6, 4($a1)
/* 11EB58 802B5548 E4860034 */  swc1  $f6, 0x34($a0)
/* 11EB5C 802B554C C4A80008 */  lwc1  $f8, 8($a1)
/* 11EB60 802B5550 E4880038 */  swc1  $f8, 0x38($a0)
/* 11EB64 802B5554 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11EB68 802B5558 27BD0018 */  addiu $sp, $sp, 0x18
/* 11EB6C 802B555C 03E00008 */  jr    $ra
/* 11EB70 802B5560 00000000 */   nop   
