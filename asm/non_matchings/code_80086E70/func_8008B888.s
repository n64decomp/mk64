glabel func_8008B888
/* 08C488 8008B888 0004C8C0 */  sll   $t9, $a0, 3
/* 08C48C 8008B88C 0324C823 */  subu  $t9, $t9, $a0
/* 08C490 8008B890 3C088016 */  lui   $t0, %hi(D_80165C18) # $t0, 0x8016
/* 08C494 8008B894 25085C18 */  addiu $t0, %lo(D_80165C18) # addiu $t0, $t0, 0x5c18
/* 08C498 8008B898 0019C940 */  sll   $t9, $t9, 5
/* 08C49C 8008B89C 03281021 */  addu  $v0, $t9, $t0
/* 08C4A0 8008B8A0 AFA50004 */  sw    $a1, 4($sp)
/* 08C4A4 8008B8A4 AFA60008 */  sw    $a2, 8($sp)
/* 08C4A8 8008B8A8 AFA7000C */  sw    $a3, 0xc($sp)
/* 08C4AC 8008B8AC A44500BE */  sh    $a1, 0xbe($v0)
/* 08C4B0 8008B8B0 A44600C0 */  sh    $a2, 0xc0($v0)
/* 08C4B4 8008B8B4 03E00008 */  jr    $ra
/* 08C4B8 8008B8B8 A44700C2 */   sh    $a3, 0xc2($v0)
