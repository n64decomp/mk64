glabel func_800C8C7C
/* 0C987C 800C8C7C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C9880 800C8C80 44812000 */  mtc1  $at, $f4
/* 0C9884 800C8C84 308E00FF */  andi  $t6, $a0, 0xff
/* 0C9888 800C8C88 000E1080 */  sll   $v0, $t6, 2
/* 0C988C 800C8C8C 3C01800F */  lui   $at, %hi(D_800E9F54)
/* 0C9890 800C8C90 00220821 */  addu  $at, $at, $v0
/* 0C9894 800C8C94 C4269F54 */  lwc1  $f6, %lo(D_800E9F54)($at)
/* 0C9898 800C8C98 3C01800F */  lui   $at, %hi(D_800EA130)
/* 0C989C 800C8C9C 00220821 */  addu  $at, $at, $v0
/* 0C98A0 800C8CA0 46062201 */  sub.s $f8, $f4, $f6
/* 0C98A4 800C8CA4 C42AA130 */  lwc1  $f10, %lo(D_800EA130)($at)
/* 0C98A8 800C8CA8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C98AC 800C8CAC 3C01800F */  lui   $at, %hi(D_800EA06C + 8)
/* 0C98B0 800C8CB0 460A4401 */  sub.s $f16, $f8, $f10
/* 0C98B4 800C8CB4 000E7900 */  sll   $t7, $t6, 4
/* 0C98B8 800C8CB8 AFA40010 */  sw    $a0, 0x10($sp)
/* 0C98BC 800C8CBC 002F0821 */  addu  $at, $at, $t7
/* 0C98C0 800C8CC0 E430A074 */  swc1  $f16, %lo(D_800EA06C + 8)($at)
/* 0C98C4 800C8CC4 03E00008 */  jr    $ra
/* 0C98C8 800C8CC8 27BD0010 */   addiu $sp, $sp, 0x10
