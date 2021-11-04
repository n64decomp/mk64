glabel func_80086EAC
/* 087AAC 80086EAC 0004C0C0 */  sll   $t8, $a0, 3
/* 087AB0 80086EB0 0304C023 */  subu  $t8, $t8, $a0
/* 087AB4 80086EB4 3C198016 */  lui   $t9, %hi(D_80165C18) # $t9, 0x8016
/* 087AB8 80086EB8 27395C18 */  addiu $t9, %lo(D_80165C18) # addiu $t9, $t9, 0x5c18
/* 087ABC 80086EBC 0018C140 */  sll   $t8, $t8, 5
/* 087AC0 80086EC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 087AC4 80086EC4 03191021 */  addu  $v0, $t8, $t9
/* 087AC8 80086EC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 087ACC 80086ECC A04500DD */  sb    $a1, 0xdd($v0)
/* 087AD0 80086ED0 AFA60020 */  sw    $a2, 0x20($sp)
/* 087AD4 80086ED4 A44600AE */  sh    $a2, 0xae($v0)
/* 087AD8 80086ED8 0C01C87A */  jal   func_800721E8
/* 087ADC 80086EDC 24050008 */   li    $a1, 8
/* 087AE0 80086EE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 087AE4 80086EE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 087AE8 80086EE8 03E00008 */  jr    $ra
/* 087AEC 80086EEC 00000000 */   nop   
