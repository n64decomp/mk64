glabel func_80019DF4
/* 01A9F4 80019DF4 3C0E8016 */  lui   $t6, %hi(D_80164678) # $t6, 0x8016
/* 01A9F8 80019DF8 3C018016 */  lui   $at, %hi(D_80164670) # $at, 0x8016
/* 01A9FC 80019DFC 3C0F8016 */  lui   $t7, %hi(D_8016467A) # $t7, 0x8016
/* 01AA00 80019E00 3C188016 */  lui   $t8, %hi(D_8016467C) # $t8, 0x8016
/* 01AA04 80019E04 3C198016 */  lui   $t9, %hi(D_8016467E) # $t9, 0x8016
/* 01AA08 80019E08 8739467E */  lh    $t9, %lo(D_8016467E)($t9)
/* 01AA0C 80019E0C 8718467C */  lh    $t8, %lo(D_8016467C)($t8)
/* 01AA10 80019E10 85EF467A */  lh    $t7, %lo(D_8016467A)($t7)
/* 01AA14 80019E14 85CE4678 */  lh    $t6, %lo(D_80164678)($t6)
/* 01AA18 80019E18 3C028016 */  lui   $v0, %hi(gGPCurrentRacePlayerIdByRank) # $v0, 0x8016
/* 01AA1C 80019E1C 3C08800E */  lui   $t0, %hi(camera1)
/* 01AA20 80019E20 84424360 */  lh    $v0, %lo(gGPCurrentRacePlayerIdByRank)($v0)
/* 01AA24 80019E24 8D08DB40 */  lw    $t0, %lo(camera1)($t0)
/* 01AA28 80019E28 A4394676 */  sh    $t9, %lo(D_80164670+0x6)($at)
/* 01AA2C 80019E2C A4384674 */  sh    $t8, %lo(D_80164670+0x4)($at)
/* 01AA30 80019E30 A42F4672 */  sh    $t7, %lo(D_80164670+0x2)($at)
/* 01AA34 80019E34 A42E4670 */  sh    $t6, %lo(D_80164670)($at)
/* 01AA38 80019E38 3C018016 */  lui   $at, %hi(D_80164678) # $at, 0x8016
/* 01AA3C 80019E3C 24090001 */  li    $t1, 1
/* 01AA40 80019E40 A50200AE */  sh    $v0, 0xae($t0)
/* 01AA44 80019E44 A4294678 */  sh    $t1, %lo(D_80164678)($at)
/* 01AA48 80019E48 3C018016 */  lui   $at, %hi(D_801646CC) # 0x8016
/* 01AA4C 80019E4C 240A0002 */  li    $t2, 2
/* 01AA50 80019E50 03E00008 */  jr    $ra
/* 01AA54 80019E54 A42A46CC */   sh    $t2, %lo(D_801646CC)($at) # 0x46cc($at)
