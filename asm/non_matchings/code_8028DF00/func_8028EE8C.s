
glabel func_8028EE8C
/* 0F849C 8028EE8C 000470C0 */  sll   $t6, $a0, 3
/* 0F84A0 8028EE90 01C47023 */  subu  $t6, $t6, $a0
/* 0F84A4 8028EE94 000E7100 */  sll   $t6, $t6, 4
/* 0F84A8 8028EE98 01C47023 */  subu  $t6, $t6, $a0
/* 0F84AC 8028EE9C 000E7080 */  sll   $t6, $t6, 2
/* 0F84B0 8028EEA0 01C47023 */  subu  $t6, $t6, $a0
/* 0F84B4 8028EEA4 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 0F84B8 8028EEA8 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 0F84BC 8028EEAC 000E70C0 */  sll   $t6, $t6, 3
/* 0F84C0 8028EEB0 01CF1021 */  addu  $v0, $t6, $t7
/* 0F84C4 8028EEB4 3C018016 */  lui   $at, %hi(D_8015F8D8) # $at, 0x8016
/* 0F84C8 8028EEB8 C442001C */  lwc1  $f2, 0x1c($v0)
/* 0F84CC 8028EEBC C430F8D8 */  lwc1  $f16, %lo(D_8015F8D8)($at)
/* 0F84D0 8028EEC0 C44C0028 */  lwc1  $f12, 0x28($v0)
/* 0F84D4 8028EEC4 3C01802C */  lui   $at, %hi(D_802B9254) # $at, 0x802c
/* 0F84D8 8028EEC8 46028381 */  sub.s $f14, $f16, $f2
/* 0F84DC 8028EECC C4249254 */  lwc1  $f4, %lo(D_802B9254)($at)
/* 0F84E0 8028EED0 3C01800E */  lui   $at, %hi(gCourseTimer) # $at, 0x800e
/* 0F84E4 8028EED4 46106481 */  sub.s $f18, $f12, $f16
/* 0F84E8 8028EED8 460E2182 */  mul.s $f6, $f4, $f14
/* 0F84EC 8028EEDC C424C598 */  lwc1  $f4, %lo(gCourseTimer)($at)
/* 0F84F0 8028EEE0 46127200 */  add.s $f8, $f14, $f18
/* 0F84F4 8028EEE4 46083283 */  div.s $f10, $f6, $f8
/* 0F84F8 8028EEE8 03E00008 */  jr    $ra
/* 0F84FC 8028EEEC 460A2001 */   sub.s $f0, $f4, $f10
