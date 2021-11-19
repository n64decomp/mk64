glabel func_802B7C6C
/* 12127C 802B7C6C 460C6182 */  mul.s $f6, $f12, $f12
/* 121280 802B7C70 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 121284 802B7C74 44812800 */  mtc1  $at, $f5
/* 121288 802B7C78 44802000 */  mtc1  $zero, $f4
/* 12128C 802B7C7C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 121290 802B7C80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 121294 802B7C84 46003221 */  cvt.d.s $f8, $f6
/* 121298 802B7C88 46282281 */  sub.d $f10, $f4, $f8
/* 12129C 802B7C8C 46205020 */  cvt.s.d $f0, $f10
/* 1212A0 802B7C90 0C0ADE6E */  jal   func_802B79B8
/* 1212A4 802B7C94 46000384 */   sqrt.s $f14, $f0
/* 1212A8 802B7C98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1212AC 802B7C9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1212B0 802B7CA0 03E00008 */  jr    $ra
/* 1212B4 802B7CA4 00000000 */   nop   
