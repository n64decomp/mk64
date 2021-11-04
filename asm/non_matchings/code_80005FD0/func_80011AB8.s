glabel func_80011AB8
/* 0126B8 80011AB8 00041040 */  sll   $v0, $a0, 1
/* 0126BC 80011ABC 3C018016 */  lui   $at, %hi(D_801632B8) # 0x8016
/* 0126C0 80011AC0 00220821 */  addu  $at, $at, $v0
/* 0126C4 80011AC4 A42032B8 */  sh    $zero, %lo(D_801632B8)($at) # 0x32b8($at)
/* 0126C8 80011AC8 3C018016 */  lui   $at, %hi(D_801632D0) # 0x8016
/* 0126CC 80011ACC 00220821 */  addu  $at, $at, $v0
/* 0126D0 80011AD0 A42032D0 */  sh    $zero, %lo(D_801632D0)($at) # 0x32d0($at)
/* 0126D4 80011AD4 3C018016 */  lui   $at, %hi(D_801632E8) # 0x8016
/* 0126D8 80011AD8 00220821 */  addu  $at, $at, $v0
/* 0126DC 80011ADC 03E00008 */  jr    $ra
/* 0126E0 80011AE0 A42032E8 */   sh    $zero, %lo(D_801632E8)($at) # 0x32e8($at)
