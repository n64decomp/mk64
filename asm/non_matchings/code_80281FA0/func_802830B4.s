glabel func_802830B4
/* 1266F4 802830B4 AFA50004 */  sw    $a1, 4($sp)
/* 1266F8 802830B8 AFA60008 */  sw    $a2, 8($sp)
/* 1266FC 802830BC AFA7000C */  sw    $a3, 0xc($sp)
/* 126700 802830C0 848A0060 */  lh    $t2, 0x60($a0)
/* 126704 802830C4 00057400 */  sll   $t6, $a1, 0x10
/* 126708 802830C8 000E7C03 */  sra   $t7, $t6, 0x10
/* 12670C 802830CC 0006C400 */  sll   $t8, $a2, 0x10
/* 126710 802830D0 00074400 */  sll   $t0, $a3, 0x10
/* 126714 802830D4 014F082A */  slt   $at, $t2, $t7
/* 126718 802830D8 00083C03 */  sra   $a3, $t0, 0x10
/* 12671C 802830DC 10200006 */  beqz  $at, .L802830F8
/* 126720 802830E0 0018CC03 */   sra   $t9, $t8, 0x10
/* 126724 802830E4 44872000 */  mtc1  $a3, $f4
/* 126728 802830E8 A48F0060 */  sh    $t7, 0x60($a0)
/* 12672C 802830EC A499006C */  sh    $t9, 0x6c($a0)
/* 126730 802830F0 468021A0 */  cvt.s.w $f6, $f4
/* 126734 802830F4 E4860068 */  swc1  $f6, 0x68($a0)
.L802830F8:
/* 126738 802830F8 03E00008 */  jr    $ra
/* 12673C 802830FC 00000000 */   nop   
