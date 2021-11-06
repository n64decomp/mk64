glabel func_800BF084
/* 0BFC84 800BF084 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BFC88 800BF088 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BFC8C 800BF08C 3C12803B */  lui   $s2, %hi(D_803B5FB8) # $s2, 0x803b
/* 0BFC90 800BF090 26525FB8 */  addiu $s2, %lo(D_803B5FB8) # addiu $s2, $s2, 0x5fb8
/* 0BFC94 800BF094 AFB30020 */  sw    $s3, 0x20($sp)
/* 0BFC98 800BF098 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BFC9C 800BF09C AFB00014 */  sw    $s0, 0x14($sp)
/* 0BFCA0 800BF0A0 3C10803B */  lui   $s0, %hi(D_803B3EF0) # $s0, 0x803b
/* 0BFCA4 800BF0A4 3C11803B */  lui   $s1, %hi(D_803B3F5C) # $s1, 0x803b
/* 0BFCA8 800BF0A8 3C13803B */  lui   $s3, %hi(D_803B5F5C) # $s3, 0x803b
/* 0BFCAC 800BF0AC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BFCB0 800BF0B0 AE520000 */  sw    $s2, ($s2)
/* 0BFCB4 800BF0B4 AE520004 */  sw    $s2, 4($s2)
/* 0BFCB8 800BF0B8 AE400008 */  sw    $zero, 8($s2)
/* 0BFCBC 800BF0BC AE40000C */  sw    $zero, 0xc($s2)
/* 0BFCC0 800BF0C0 26735F5C */  addiu $s3, %lo(D_803B5F5C) # addiu $s3, $s3, 0x5f5c
/* 0BFCC4 800BF0C4 26313F5C */  addiu $s1, %lo(D_803B3F5C) # addiu $s1, $s1, 0x3f5c
/* 0BFCC8 800BF0C8 26103EF0 */  addiu $s0, %lo(D_803B3EF0) # addiu $s0, $s0, 0x3ef0
.L800BF0CC:
/* 0BFCCC 800BF0CC AE100074 */  sw    $s0, 0x74($s0)
/* 0BFCD0 800BF0D0 AE00006C */  sw    $zero, 0x6c($s0)
/* 0BFCD4 800BF0D4 02402025 */  move  $a0, $s2
/* 0BFCD8 800BF0D8 0C02FC01 */  jal   func_800BF004
/* 0BFCDC 800BF0DC 02202825 */   move  $a1, $s1
/* 0BFCE0 800BF0E0 26310080 */  addiu $s1, $s1, 0x80
/* 0BFCE4 800BF0E4 1633FFF9 */  bne   $s1, $s3, .L800BF0CC
/* 0BFCE8 800BF0E8 26100080 */   addiu $s0, $s0, 0x80
/* 0BFCEC 800BF0EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BFCF0 800BF0F0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BFCF4 800BF0F4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BFCF8 800BF0F8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BFCFC 800BF0FC 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BFD00 800BF100 03E00008 */  jr    $ra
/* 0BFD04 800BF104 27BD0028 */   addiu $sp, $sp, 0x28
