glabel func_800876A0
/* 0882A0 800876A0 000470C0 */  sll   $t6, $a0, 3
/* 0882A4 800876A4 01C47023 */  subu  $t6, $t6, $a0
/* 0882A8 800876A8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 0882AC 800876AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0882B0 800876B0 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 0882B4 800876B4 000E7140 */  sll   $t6, $t6, 5
/* 0882B8 800876B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0882BC 800876BC 01CF1021 */  addu  $v0, $t6, $t7
/* 0882C0 800876C0 944400C0 */  lhu   $a0, 0xc0($v0)
/* 0882C4 800876C4 0C0AE006 */  jal   sins
/* 0882C8 800876C8 AFA20018 */   sw    $v0, 0x18($sp)
/* 0882CC 800876CC 8FA20018 */  lw    $v0, 0x18($sp)
/* 0882D0 800876D0 C4460034 */  lwc1  $f6, 0x34($v0)
/* 0882D4 800876D4 C4440028 */  lwc1  $f4, 0x28($v0)
/* 0882D8 800876D8 944400C0 */  lhu   $a0, 0xc0($v0)
/* 0882DC 800876DC 46003202 */  mul.s $f8, $f6, $f0
/* 0882E0 800876E0 46082280 */  add.s $f10, $f4, $f8
/* 0882E4 800876E4 0C0AE00E */  jal   coss
/* 0882E8 800876E8 E44A0028 */   swc1  $f10, 0x28($v0)
/* 0882EC 800876EC 8FA20018 */  lw    $v0, 0x18($sp)
/* 0882F0 800876F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0882F4 800876F4 C4520034 */  lwc1  $f18, 0x34($v0)
/* 0882F8 800876F8 C4500030 */  lwc1  $f16, 0x30($v0)
/* 0882FC 800876FC 27BD0020 */  addiu $sp, $sp, 0x20
/* 088300 80087700 46009182 */  mul.s $f6, $f18, $f0
/* 088304 80087704 46068100 */  add.s $f4, $f16, $f6
/* 088308 80087708 03E00008 */  jr    $ra
/* 08830C 8008770C E4440030 */   swc1  $f4, 0x30($v0)
