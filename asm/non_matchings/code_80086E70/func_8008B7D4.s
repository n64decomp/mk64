glabel func_8008B7D4
/* 08C3D4 8008B7D4 000470C0 */  sll   $t6, $a0, 3
/* 08C3D8 8008B7D8 01C47023 */  subu  $t6, $t6, $a0
/* 08C3DC 8008B7DC 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08C3E0 8008B7E0 AFA7000C */  sw    $a3, 0xc($sp)
/* 08C3E4 8008B7E4 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08C3E8 8008B7E8 000E7140 */  sll   $t6, $t6, 5
/* 08C3EC 8008B7EC 44856000 */  mtc1  $a1, $f12
/* 08C3F0 8008B7F0 44867000 */  mtc1  $a2, $f14
/* 08C3F4 8008B7F4 C7A4000C */  lwc1  $f4, 0xc($sp)
/* 08C3F8 8008B7F8 01CF1021 */  addu  $v0, $t6, $t7
/* 08C3FC 8008B7FC E44C0010 */  swc1  $f12, 0x10($v0)
/* 08C400 8008B800 E44E0014 */  swc1  $f14, 0x14($v0)
/* 08C404 8008B804 03E00008 */  jr    $ra
/* 08C408 8008B808 E4440018 */   swc1  $f4, 0x18($v0)
