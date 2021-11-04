glabel func_8005AA94
/* 05B694 8005AA94 3C028019 */  lui   $v0, %hi(D_8018D1A0) # $v0, 0x8019
/* 05B698 8005AA98 2442D1A0 */  addiu $v0, %lo(D_8018D1A0) # addiu $v0, $v0, -0x2e60
/* 05B69C 8005AA9C 8C4E0000 */  lw    $t6, ($v0)
/* 05B6A0 8005AAA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05B6A4 8005AAA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05B6A8 8005AAA8 15C00005 */  bnez  $t6, .L8005AAC0
/* 05B6AC 8005AAAC 3C038019 */   lui   $v1, %hi(D_8018D1D4) # $v1, 0x8019
/* 05B6B0 8005AAB0 2463D1D4 */  addiu $v1, %lo(D_8018D1D4) # addiu $v1, $v1, -0x2e2c
/* 05B6B4 8005AAB4 240F0001 */  li    $t7, 1
/* 05B6B8 8005AAB8 AC640000 */  sw    $a0, ($v1)
/* 05B6BC 8005AABC AC4F0000 */  sw    $t7, ($v0)
.L8005AAC0:
/* 05B6C0 8005AAC0 3C038019 */  lui   $v1, %hi(D_8018D1D4) # $v1, 0x8019
/* 05B6C4 8005AAC4 2463D1D4 */  addiu $v1, %lo(D_8018D1D4) # addiu $v1, $v1, -0x2e2c
/* 05B6C8 8005AAC8 8C780000 */  lw    $t8, ($v1)
/* 05B6CC 8005AACC 2719FFFF */  addiu $t9, $t8, -1
/* 05B6D0 8005AAD0 07210003 */  bgez  $t9, .L8005AAE0
/* 05B6D4 8005AAD4 AC790000 */   sw    $t9, ($v1)
/* 05B6D8 8005AAD8 0C016A93 */  jal   func_8005AA4C
/* 05B6DC 8005AADC AC400000 */   sw    $zero, ($v0)
.L8005AAE0:
/* 05B6E0 8005AAE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05B6E4 8005AAE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 05B6E8 8005AAE8 03E00008 */  jr    $ra
/* 05B6EC 8005AAEC 00000000 */   nop   
