
glabel func_80041608
/* 042208 80041608 AFA60008 */  sw    $a2, 8($sp)
/* 04220C 8004160C C7A40008 */  lwc1  $f4, 8($sp)
/* 042210 80041610 C7A80010 */  lwc1  $f8, 0x10($sp)
/* 042214 80041614 AFA7000C */  sw    $a3, 0xc($sp)
/* 042218 80041618 460C2001 */  sub.s $f0, $f4, $f12
/* 04221C 8004161C C7A6000C */  lwc1  $f6, 0xc($sp)
/* 042220 80041620 46084282 */  mul.s $f10, $f8, $f8
/* 042224 80041624 00001825 */  move  $v1, $zero
/* 042228 80041628 460E3081 */  sub.s $f2, $f6, $f14
/* 04222C 8004162C 46000402 */  mul.s $f16, $f0, $f0
/* 042230 80041630 00000000 */  nop   
/* 042234 80041634 46021482 */  mul.s $f18, $f2, $f2
/* 042238 80041638 46128100 */  add.s $f4, $f16, $f18
/* 04223C 8004163C 460A203E */  c.le.s $f4, $f10
/* 042240 80041640 00000000 */  nop   
/* 042244 80041644 45000002 */  bc1f  .L80041650
/* 042248 80041648 00000000 */   nop   
/* 04224C 8004164C 24030001 */  li    $v1, 1
.L80041650:
/* 042250 80041650 03E00008 */  jr    $ra
/* 042254 80041654 00601025 */   move  $v0, $v1
