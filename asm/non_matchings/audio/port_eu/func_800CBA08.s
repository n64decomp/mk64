glabel func_800CBA08
/* 0CC608 800CBA08 14A00002 */  bnez  $a1, .L800CBA14
/* 0CC60C 800CBA0C 27ADFFF0 */   addiu $t5, $sp, -0x10
/* 0CC610 800CBA10 24050001 */  li    $a1, 1
.L800CBA14:
/* 0CC614 800CBA14 44853000 */  mtc1  $a1, $f6
/* 0CC618 800CBA18 00047080 */  sll   $t6, $a0, 2
/* 0CC61C 800CBA1C 01C47021 */  addu  $t6, $t6, $a0
/* 0CC620 800CBA20 000E70C0 */  sll   $t6, $t6, 3
/* 0CC624 800CBA24 46803220 */  cvt.s.w $f8, $f6
/* 0CC628 800CBA28 01C47021 */  addu  $t6, $t6, $a0
/* 0CC62C 800CBA2C 3C0F803B */  lui   $t7, %hi(D_803B1510) # $t7, 0x803b
/* 0CC630 800CBA30 25EF1510 */  addiu $t7, %lo(D_803B1510) # addiu $t7, $t7, 0x1510
/* 0CC634 800CBA34 000E70C0 */  sll   $t6, $t6, 3
/* 0CC638 800CBA38 01CF1021 */  addu  $v0, $t6, $t7
/* 0CC63C 800CBA3C C4440018 */  lwc1  $f4, 0x18($v0)
/* 0CC640 800CBA40 24180002 */  li    $t8, 2
/* 0CC644 800CBA44 01A0E825 */  move  $sp, $t5
/* 0CC648 800CBA48 46082283 */  div.s $f10, $f4, $f8
/* 0CC64C 800CBA4C A0580001 */  sb    $t8, 1($v0)
/* 0CC650 800CBA50 A4450010 */  sh    $a1, 0x10($v0)
/* 0CC654 800CBA54 25BD0010 */  addiu $sp, $t5, 0x10
/* 0CC658 800CBA58 46005407 */  neg.s $f16, $f10
/* 0CC65C 800CBA5C 03E00008 */  jr    $ra
/* 0CC660 800CBA60 E450001C */   swc1  $f16, 0x1c($v0)
