glabel func_8008B844
/* 08C444 8008B844 000470C0 */  sll   $t6, $a0, 3
/* 08C448 8008B848 01C47023 */  subu  $t6, $t6, $a0
/* 08C44C 8008B84C 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08C450 8008B850 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08C454 8008B854 000E7140 */  sll   $t6, $t6, 5
/* 08C458 8008B858 01CF1021 */  addu  $v0, $t6, $t7
/* 08C45C 8008B85C C4400010 */  lwc1  $f0, 0x10($v0)
/* 08C460 8008B860 C4440028 */  lwc1  $f4, 0x28($v0)
/* 08C464 8008B864 C448002C */  lwc1  $f8, 0x2c($v0)
/* 08C468 8008B868 C4500030 */  lwc1  $f16, 0x30($v0)
/* 08C46C 8008B86C 46002180 */  add.s $f6, $f4, $f0
/* 08C470 8008B870 46004280 */  add.s $f10, $f8, $f0
/* 08C474 8008B874 E4460004 */  swc1  $f6, 4($v0)
/* 08C478 8008B878 46008480 */  add.s $f18, $f16, $f0
/* 08C47C 8008B87C E44A0008 */  swc1  $f10, 8($v0)
/* 08C480 8008B880 03E00008 */  jr    $ra
/* 08C484 8008B884 E452000C */   swc1  $f18, 0xc($v0)
