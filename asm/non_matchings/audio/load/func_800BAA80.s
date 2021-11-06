glabel func_800BAA80
/* 0BB680 800BAA80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BB684 800BAA84 AFA40028 */  sw    $a0, 0x28($sp)
/* 0BB688 800BAA88 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BB68C 800BAA8C AFA5002C */  sw    $a1, 0x2c($sp)
/* 0BB690 800BAA90 00A02025 */  move  $a0, $a1
/* 0BB694 800BAA94 AFA60030 */  sw    $a2, 0x30($sp)
/* 0BB698 800BAA98 0C0336E0 */  jal   osInvalDCache
/* 0BB69C 800BAA9C 00C02825 */   move  $a1, $a2
/* 0BB6A0 800BAAA0 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0BB6A4 800BAAA4 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0BB6A8 800BAAA8 3C18803B */  lui   $t8, %hi(D_803B6720) # $t8, 0x803b
/* 0BB6AC 800BAAAC 27186720 */  addiu $t8, %lo(D_803B6720) # addiu $t8, $t8, 0x6720
/* 0BB6B0 800BAAB0 3C04803B */  lui   $a0, %hi(D_803B6740) # $a0, 0x803b
/* 0BB6B4 800BAAB4 24846740 */  addiu $a0, %lo(D_803B6740) # addiu $a0, $a0, 0x6740
/* 0BB6B8 800BAAB8 AFB80018 */  sw    $t8, 0x18($sp)
/* 0BB6BC 800BAABC 24050001 */  li    $a1, 1
/* 0BB6C0 800BAAC0 00003025 */  move  $a2, $zero
/* 0BB6C4 800BAAC4 8FA70028 */  lw    $a3, 0x28($sp)
/* 0BB6C8 800BAAC8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0BB6CC 800BAACC 0C03370C */  jal   osPiStartDma
/* 0BB6D0 800BAAD0 AFAF0014 */   sw    $t7, 0x14($sp)
/* 0BB6D4 800BAAD4 3C04803B */  lui   $a0, %hi(D_803B6720) # $a0, 0x803b
/* 0BB6D8 800BAAD8 24846720 */  addiu $a0, %lo(D_803B6720) # addiu $a0, $a0, 0x6720
/* 0BB6DC 800BAADC 00002825 */  move  $a1, $zero
/* 0BB6E0 800BAAE0 0C0335D4 */  jal   osRecvMesg
/* 0BB6E4 800BAAE4 24060001 */   li    $a2, 1
/* 0BB6E8 800BAAE8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BB6EC 800BAAEC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0BB6F0 800BAAF0 03E00008 */  jr    $ra
/* 0BB6F4 800BAAF4 00000000 */   nop   
