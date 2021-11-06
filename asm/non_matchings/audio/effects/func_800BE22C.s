glabel func_800BE22C
/* 0BEE2C 800BE22C C4840010 */  lwc1  $f4, 0x10($a0)
/* 0BEE30 800BE230 8C8E0004 */  lw    $t6, 4($a0)
/* 0BEE34 800BE234 8C8A0008 */  lw    $t2, 8($a0)
/* 0BEE38 800BE238 4600218D */  trunc.w.s $f6, $f4
/* 0BEE3C 800BE23C 44183000 */  mfc1  $t8, $f6
/* 0BEE40 800BE240 00000000 */  nop   
/* 0BEE44 800BE244 01D8C821 */  addu  $t9, $t6, $t8
/* 0BEE48 800BE248 00194282 */  srl   $t0, $t9, 0xa
/* 0BEE4C 800BE24C 3109003F */  andi  $t1, $t0, 0x3f
/* 0BEE50 800BE250 00095840 */  sll   $t3, $t1, 1
/* 0BEE54 800BE254 AC990004 */  sw    $t9, 4($a0)
/* 0BEE58 800BE258 014B6021 */  addu  $t4, $t2, $t3
/* 0BEE5C 800BE25C 85820000 */  lh    $v0, ($t4)
/* 0BEE60 800BE260 00026A03 */  sra   $t5, $v0, 8
/* 0BEE64 800BE264 000D7C00 */  sll   $t7, $t5, 0x10
/* 0BEE68 800BE268 03E00008 */  jr    $ra
/* 0BEE6C 800BE26C 000F1403 */   sra   $v0, $t7, 0x10
