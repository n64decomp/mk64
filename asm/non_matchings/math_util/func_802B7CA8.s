glabel func_802B7CA8
/* 1212B8 802B7CA8 460C6182 */  mul.s $f6, $f12, $f12
/* 1212BC 802B7CAC 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 1212C0 802B7CB0 44812800 */  mtc1  $at, $f5
/* 1212C4 802B7CB4 44802000 */  mtc1  $zero, $f4
/* 1212C8 802B7CB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1212CC 802B7CBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1212D0 802B7CC0 46003221 */  cvt.d.s $f8, $f6
/* 1212D4 802B7CC4 46282281 */  sub.d $f10, $f4, $f8
/* 1212D8 802B7CC8 46205020 */  cvt.s.d $f0, $f10
/* 1212DC 802B7CCC 0C0ADE0C */  jal   func_802B7830
/* 1212E0 802B7CD0 46000384 */   sqrt.s $f14, $f0
/* 1212E4 802B7CD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1212E8 802B7CD8 00027400 */  sll   $t6, $v0, 0x10
/* 1212EC 802B7CDC 000E1403 */  sra   $v0, $t6, 0x10
/* 1212F0 802B7CE0 03E00008 */  jr    $ra
/* 1212F4 802B7CE4 27BD0018 */   addiu $sp, $sp, 0x18
