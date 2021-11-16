glabel func_800744CC
/* 0750CC 800744CC 3C0E8019 */  lui   $t6, %hi(D_8018D224) # $t6, 0x8019
/* 0750D0 800744D0 8DCED224 */  lw    $t6, %lo(D_8018D224)($t6)
/* 0750D4 800744D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0750D8 800744D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0750DC 800744DC 11C00008 */  beqz  $t6, .L80074500
/* 0750E0 800744E0 3C048015 */   lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 0750E4 800744E4 3C058015 */  lui   $a1, %hi(gMainReceivedMesg) # $a1, 0x8015
/* 0750E8 800744E8 24A5F098 */  addiu $a1, %lo(gMainReceivedMesg) # addiu $a1, $a1, -0xf68
/* 0750EC 800744EC 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 0750F0 800744F0 0C0335D4 */  jal   osRecvMesg
/* 0750F4 800744F4 24060001 */   li    $a2, 1
/* 0750F8 800744F8 3C018019 */  lui   $at, %hi(D_8018D224) # $at, 0x8019
/* 0750FC 800744FC AC20D224 */  sw    $zero, %lo(D_8018D224)($at)
.L80074500:
/* 075100 80074500 8FBF0014 */  lw    $ra, 0x14($sp)
/* 075104 80074504 27BD0018 */  addiu $sp, $sp, 0x18
/* 075108 80074508 03E00008 */  jr    $ra
/* 07510C 8007450C 00000000 */   nop   
