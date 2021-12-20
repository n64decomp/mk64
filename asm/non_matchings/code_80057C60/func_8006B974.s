glabel func_8006B974
/* 06C574 8006B974 00057600 */  sll   $t6, $a1, 0x18
/* 06C578 8006B978 000E7E03 */  sra   $t7, $t6, 0x18
/* 06C57C 8006B97C 000F4040 */  sll   $t0, $t7, 1
/* 06C580 8006B980 3C098019 */  lui   $t1, %hi(gPlayerBalloonCount)
/* 06C584 8006B984 01284821 */  addu  $t1, $t1, $t0
/* 06C588 8006B988 8529D8C0 */  lh    $t1, %lo(gPlayerBalloonCount)($t1)
/* 06C58C 8006B98C 0006C600 */  sll   $t8, $a2, 0x18
/* 06C590 8006B990 0018CE03 */  sra   $t9, $t8, 0x18
/* 06C594 8006B994 AFA40000 */  sw    $a0, ($sp)
/* 06C598 8006B998 AFA50004 */  sw    $a1, 4($sp)
/* 06C59C 8006B99C 05200009 */  bltz  $t1, .L8006B9C4
/* 06C5A0 8006B9A0 AFA60008 */   sw    $a2, 8($sp)
/* 06C5A4 8006B9A4 000F5080 */  sll   $t2, $t7, 2
/* 06C5A8 8006B9A8 014F5023 */  subu  $t2, $t2, $t7
/* 06C5AC 8006B9AC 000A5040 */  sll   $t2, $t2, 1
/* 06C5B0 8006B9B0 00195840 */  sll   $t3, $t9, 1
/* 06C5B4 8006B9B4 014B6021 */  addu  $t4, $t2, $t3
/* 06C5B8 8006B9B8 3C018019 */  lui   $at, %hi(D_8018D5F0)
/* 06C5BC 8006B9BC 002C0821 */  addu  $at, $at, $t4
/* 06C5C0 8006B9C0 A420D5F0 */  sh    $zero, %lo(D_8018D5F0)($at)
.L8006B9C4:
/* 06C5C4 8006B9C4 03E00008 */  jr    $ra
/* 06C5C8 8006B9C8 00000000 */   nop
