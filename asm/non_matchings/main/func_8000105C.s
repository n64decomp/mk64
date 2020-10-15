glabel func_8000105C
/* 001C5C 8000105C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 001C60 80001060 AFBF0014 */  sw    $ra, 0x14($sp)
/* 001C64 80001064 3C048028 */  lui   $a0, 0x8028
/* 001C68 80001068 0C033698 */  jal   bzero
/* 001C6C 8000106C 3405DF00 */   li    $a1, 57088
/* 001C70 80001070 0C033624 */  jal   osWritebackDCacheAll
/* 001C74 80001074 00000000 */   nop   
/* 001C78 80001078 3C050012 */  lui   $a1, %hi(_code_80280000SegmentRomStart) # $a1, 0x12
/* 001C7C 8000107C 3C0E0013 */  lui   $t6, %hi(_code_80280000SegmentRomEnd) # $t6, 0x13
/* 001C80 80001080 24A53640 */  addiu $a1, %lo(_code_80280000SegmentRomStart) # addiu $a1, $a1, 0x3640
/* 001C84 80001084 25CEAAE0 */  addiu $t6, %lo(_code_80280000SegmentRomEnd) # addiu $t6, $t6, -0x5520
/* 001C88 80001088 01C53023 */  subu  $a2, $t6, $a1
/* 001C8C 8000108C 24C6000F */  addiu $a2, $a2, 0xf
/* 001C90 80001090 2401FFF0 */  li    $at, -16
/* 001C94 80001094 00C17824 */  and   $t7, $a2, $at
/* 001C98 80001098 01E03025 */  move  $a2, $t7
/* 001C9C 8000109C 0C000456 */  jal   dma_copy
/* 001CA0 800010A0 3C048028 */   lui   $a0, 0x8028
/* 001CA4 800010A4 3C048028 */  lui   $a0, 0x8028
/* 001CA8 800010A8 0C0336C0 */  jal   osInvalCache
/* 001CAC 800010AC 3405DF00 */   li    $a1, 57088
/* 001CB0 800010B0 3C048028 */  lui   $a0, 0x8028
/* 001CB4 800010B4 0C0336E0 */  jal   osInvalDCache
/* 001CB8 800010B8 3405DF00 */   li    $a1, 57088
/* 001CBC 800010BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001CC0 800010C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 001CC4 800010C4 03E00008 */  jr    $ra
/* 001CC8 800010C8 00000000 */   nop   
