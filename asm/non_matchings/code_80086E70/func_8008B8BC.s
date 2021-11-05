glabel func_8008B8BC
/* 08C4BC 8008B8BC 0004C8C0 */  sll   $t9, $a0, 3
/* 08C4C0 8008B8C0 0324C823 */  subu  $t9, $t9, $a0
/* 08C4C4 8008B8C4 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 08C4C8 8008B8C8 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 08C4CC 8008B8CC 0019C940 */  sll   $t9, $t9, 5
/* 08C4D0 8008B8D0 03281021 */  addu  $v0, $t9, $t0
/* 08C4D4 8008B8D4 AFA50004 */  sw    $a1, 4($sp)
/* 08C4D8 8008B8D8 AFA60008 */  sw    $a2, 8($sp)
/* 08C4DC 8008B8DC AFA7000C */  sw    $a3, 0xc($sp)
/* 08C4E0 8008B8E0 A44500B2 */  sh    $a1, 0xb2($v0)
/* 08C4E4 8008B8E4 A44600B4 */  sh    $a2, 0xb4($v0)
/* 08C4E8 8008B8E8 03E00008 */  jr    $ra
/* 08C4EC 8008B8EC A44700B6 */   sh    $a3, 0xb6($v0)
