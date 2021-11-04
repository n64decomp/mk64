glabel func_800B4820
/* 0B5420 800B4820 3C018019 */  lui   $at, %hi(D_8018ED10) # $at, 0x8019
/* 0B5424 800B4824 A020ED10 */  sb    $zero, %lo(D_8018ED10)($at)
/* 0B5428 800B4828 3C018019 */  lui   $at, %hi(D_8018ED11) # $at, 0x8019
/* 0B542C 800B482C A020ED11 */  sb    $zero, %lo(D_8018ED11)($at)
/* 0B5430 800B4830 3C018019 */  lui   $at, %hi(D_8018ED12) # $at, 0x8019
/* 0B5434 800B4834 A020ED12 */  sb    $zero, %lo(D_8018ED12)($at)
/* 0B5438 800B4838 3C018019 */  lui   $at, %hi(D_8018ED13) # $at, 0x8019
/* 0B543C 800B483C A020ED13 */  sb    $zero, %lo(D_8018ED13)($at)
/* 0B5440 800B4840 3C018019 */  lui   $at, %hi(D_8018ED14) # $at, 0x8019
/* 0B5444 800B4844 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B5448 800B4848 A020ED14 */  sb    $zero, %lo(D_8018ED14)($at)
/* 0B544C 800B484C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5450 800B4850 3C018019 */  lui   $at, %hi(D_8018EDF2) # $at, 0x8019
/* 0B5454 800B4854 0C02D12F */  jal   func_800B44BC
/* 0B5458 800B4858 A020EDF2 */   sb    $zero, %lo(D_8018EDF2)($at)
/* 0B545C 800B485C 0C02D19C */  jal   func_800B4670
/* 0B5460 800B4860 00000000 */   nop   
/* 0B5464 800B4864 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5468 800B4868 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B546C 800B486C 03E00008 */  jr    $ra
/* 0B5470 800B4870 00000000 */   nop   
