glabel func_8007D6A8
/* 07E2A8 8007D6A8 000470C0 */  sll   $t6, $a0, 3
/* 07E2AC 8007D6AC 01C47023 */  subu  $t6, $t6, $a0
/* 07E2B0 8007D6B0 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 07E2B4 8007D6B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07E2B8 8007D6B8 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 07E2BC 8007D6BC 000E7140 */  sll   $t6, $t6, 5
/* 07E2C0 8007D6C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07E2C4 8007D6C4 01CF1021 */  addu  $v0, $t6, $t7
/* 07E2C8 8007D6C8 2418000D */  li    $t8, 13
/* 07E2CC 8007D6CC A05800D5 */  sb    $t8, 0xd5($v0)
/* 07E2D0 8007D6D0 AFA20018 */  sw    $v0, 0x18($sp)
/* 07E2D4 8007D6D4 0C01F4D8 */  jal   func_8007D360
/* 07E2D8 8007D6D8 AFA40028 */   sw    $a0, 0x28($sp)
/* 07E2DC 8007D6DC 3C01800F */  lui   $at, %hi(D_800EEF18) # $at, 0x800f
/* 07E2E0 8007D6E0 C424EF18 */  lwc1  $f4, %lo(D_800EEF18)($at)
/* 07E2E4 8007D6E4 8FB90018 */  lw    $t9, 0x18($sp)
/* 07E2E8 8007D6E8 8FA40028 */  lw    $a0, 0x28($sp)
/* 07E2EC 8007D6EC 24050200 */  li    $a1, 512
/* 07E2F0 8007D6F0 0C01C870 */  jal   func_800721C0
/* 07E2F4 8007D6F4 E7240000 */   swc1  $f4, ($t9)
/* 07E2F8 8007D6F8 8FA90018 */  lw    $t1, 0x18($sp)
/* 07E2FC 8007D6FC 24080003 */  li    $t0, 3
/* 07E300 8007D700 A52800C8 */  sh    $t0, 0xc8($t1)
/* 07E304 8007D704 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07E308 8007D708 27BD0028 */  addiu $sp, $sp, 0x28
/* 07E30C 8007D70C 03E00008 */  jr    $ra
/* 07E310 8007D710 00000000 */   nop   
