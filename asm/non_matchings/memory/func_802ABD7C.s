glabel func_802ABD7C
/* 11538C 802ABD7C 308EFFFF */  andi  $t6, $a0, 0xffff
/* 115390 802ABD80 000E7880 */  sll   $t7, $t6, 2
/* 115394 802ABD84 01EE7823 */  subu  $t7, $t7, $t6
/* 115398 802ABD88 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 11539C 802ABD8C 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 1153A0 802ABD90 000F7880 */  sll   $t7, $t7, 2
/* 1153A4 802ABD94 01EE7823 */  subu  $t7, $t7, $t6
/* 1153A8 802ABD98 000F7880 */  sll   $t7, $t7, 2
/* 1153AC 802ABD9C AFA40000 */  sw    $a0, ($sp)
/* 1153B0 802ABDA0 01F81821 */  addu  $v1, $t7, $t8
/* 1153B4 802ABDA4 94620000 */  lhu   $v0, ($v1)
/* 1153B8 802ABDA8 30591000 */  andi  $t9, $v0, 0x1000
/* 1153BC 802ABDAC 00194400 */  sll   $t0, $t9, 0x10
/* 1153C0 802ABDB0 03E00008 */  jr    $ra
/* 1153C4 802ABDB4 00081403 */   sra   $v0, $t0, 0x10
