glabel func_80078220
/* 078E20 80078220 000470C0 */  sll   $t6, $a0, 3
/* 078E24 80078224 01C47023 */  subu  $t6, $t6, $a0
/* 078E28 80078228 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 078E2C 8007822C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 078E30 80078230 000E7140 */  sll   $t6, $t6, 5
/* 078E34 80078234 3C030D03 */  lui   $v1, %hi(D_0D0293D8) # $v1, 0xd03
/* 078E38 80078238 01CF1021 */  addu  $v0, $t6, $t7
/* 078E3C 8007823C 246393D8 */  addiu $v1, %lo(D_0D0293D8) # addiu $v1, $v1, -0x6c28
/* 078E40 80078240 3C180D00 */  lui   $t8, %hi(D_0D005770) # $t8, 0xd00
/* 078E44 80078244 27185770 */  addiu $t8, %lo(D_0D005770) # addiu $t8, $t8, 0x5770
/* 078E48 80078248 AC430064 */  sw    $v1, 0x64($v0)
/* 078E4C 8007824C AC43006C */  sw    $v1, 0x6c($v0)
/* 078E50 80078250 AC580074 */  sw    $t8, 0x74($v0)
/* 078E54 80078254 3C01800F */  lui   $at, %hi(D_800EEB48) # $at, 0x800f
/* 078E58 80078258 C424EB48 */  lwc1  $f4, %lo(D_800EEB48)($at)
/* 078E5C 8007825C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 078E60 80078260 AFBF0014 */  sw    $ra, 0x14($sp)
/* 078E64 80078264 AFA40018 */  sw    $a0, 0x18($sp)
/* 078E68 80078268 0C021BBC */  jal   func_80086EF0
/* 078E6C 8007826C E4440000 */   swc1  $f4, ($v0)
/* 078E70 80078270 0C01C922 */  jal   func_80072488
/* 078E74 80078274 8FA40018 */   lw    $a0, 0x18($sp)
/* 078E78 80078278 8FBF0014 */  lw    $ra, 0x14($sp)
/* 078E7C 8007827C 27BD0018 */  addiu $sp, $sp, 0x18
/* 078E80 80078280 03E00008 */  jr    $ra
/* 078E84 80078284 00000000 */   nop   
