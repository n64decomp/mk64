glabel func_80022D60
/* 023960 80022D60 00057600 */  sll   $t6, $a1, 0x18
/* 023964 80022D64 000E7E03 */  sra   $t7, $t6, 0x18
/* 023968 80022D68 3C09800E */  lui   $t1, %hi(D_800DDBB4) # $t1, 0x800e
/* 02396C 80022D6C 2529DBB4 */  addiu $t1, %lo(D_800DDBB4) # addiu $t1, $t1, -0x244c
/* 023970 80022D70 000F4080 */  sll   $t0, $t7, 2
/* 023974 80022D74 01091021 */  addu  $v0, $t0, $t1
/* 023978 80022D78 8C4A0000 */  lw    $t2, ($v0)
/* 02397C 80022D7C 0007C600 */  sll   $t8, $a3, 0x18
/* 023980 80022D80 0018CE03 */  sra   $t9, $t8, 0x18
/* 023984 80022D84 AFA40000 */  sw    $a0, ($sp)
/* 023988 80022D88 00191900 */  sll   $v1, $t9, 4
/* 02398C 80022D8C 24040015 */  li    $a0, 21
/* 023990 80022D90 AFA50004 */  sw    $a1, 4($sp)
/* 023994 80022D94 AFA60008 */  sw    $a2, 8($sp)
/* 023998 80022D98 AFA7000C */  sw    $a3, 0xc($sp)
/* 02399C 80022D9C 01435821 */  addu  $t3, $t2, $v1
/* 0239A0 80022DA0 A5640002 */  sh    $a0, 2($t3)
/* 0239A4 80022DA4 8C4C0000 */  lw    $t4, ($v0)
/* 0239A8 80022DA8 01836821 */  addu  $t5, $t4, $v1
/* 0239AC 80022DAC 03E00008 */  jr    $ra
/* 0239B0 80022DB0 A5A40032 */   sh    $a0, 0x32($t5)
