glabel func_8007C420
/* 07D020 8007C420 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07D024 8007C424 000478C0 */  sll   $t7, $a0, 3
/* 07D028 8007C428 01E47823 */  subu  $t7, $t7, $a0
/* 07D02C 8007C42C 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 07D030 8007C430 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 07D034 8007C434 000F7940 */  sll   $t7, $t7, 5
/* 07D038 8007C438 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07D03C 8007C43C AFA40028 */  sw    $a0, 0x28($sp)
/* 07D040 8007C440 AFA60030 */  sw    $a2, 0x30($sp)
/* 07D044 8007C444 01F81821 */  addu  $v1, $t7, $t8
/* 07D048 8007C448 C4660004 */  lwc1  $f6, 4($v1)
/* 07D04C 8007C44C C4A40014 */  lwc1  $f4, 0x14($a1)
/* 07D050 8007C450 C46A000C */  lwc1  $f10, 0xc($v1)
/* 07D054 8007C454 C4A8001C */  lwc1  $f8, 0x1c($a1)
/* 07D058 8007C458 AFA30018 */  sw    $v1, 0x18($sp)
/* 07D05C 8007C45C 46062301 */  sub.s $f12, $f4, $f6
/* 07D060 8007C460 0C0ADE0C */  jal   atan2s
/* 07D064 8007C464 460A4381 */   sub.s $f14, $f8, $f10
/* 07D068 8007C468 8FA30018 */  lw    $v1, 0x18($sp)
/* 07D06C 8007C46C 3045FFFF */  andi  $a1, $v0, 0xffff
/* 07D070 8007C470 0C0105ED */  jal   func_800417B4
/* 07D074 8007C474 946400C0 */   lhu   $a0, 0xc0($v1)
/* 07D078 8007C478 8FA30018 */  lw    $v1, 0x18($sp)
/* 07D07C 8007C47C 8FA40028 */  lw    $a0, 0x28($sp)
/* 07D080 8007C480 8FA50030 */  lw    $a1, 0x30($sp)
/* 07D084 8007C484 0C01F0D8 */  jal   func_8007C360
/* 07D088 8007C488 A46200C0 */   sh    $v0, 0xc0($v1)
/* 07D08C 8007C48C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07D090 8007C490 27BD0028 */  addiu $sp, $sp, 0x28
/* 07D094 8007C494 03E00008 */  jr    $ra
/* 07D098 8007C498 00000000 */   nop   

/* 07D09C 8007C49C 03E00008 */  jr    $ra
/* 07D0A0 8007C4A0 00000000 */   nop   
