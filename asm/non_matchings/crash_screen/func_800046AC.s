glabel func_800046AC
/* 0052AC 800046AC 3C018016 */  lui   $at, %hi(pFramebuffer) # 0x8016
/* 0052B0 800046B0 03E00008 */  jr    $ra
/* 0052B4 800046B4 AC242D5C */   sw    $a0, %lo(pFramebuffer)($at) # 0x2d5c($at)
