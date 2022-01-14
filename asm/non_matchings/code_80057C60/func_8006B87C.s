glabel func_8006B87C
/* 06C47C 8006B87C 00057600 */  sll   $t6, $a1, 0x18
/* 06C480 8006B880 000E7E03 */  sra   $t7, $t6, 0x18
/* 06C484 8006B884 000FC080 */  sll   $t8, $t7, 2
/* 06C488 8006B888 030FC023 */  subu  $t8, $t8, $t7
/* 06C48C 8006B88C 3C198019 */  lui   $t9, %hi(gPlayerBalloonStatus) # $t9, 0x8019
/* 06C490 8006B890 2739D5F0 */  addiu $t9, %lo(gPlayerBalloonStatus) # addiu $t9, $t9, -0x2a10
/* 06C494 8006B894 0018C040 */  sll   $t8, $t8, 1
/* 06C498 8006B898 03191021 */  addu  $v0, $t8, $t9
/* 06C49C 8006B89C AFA40000 */  sw    $a0, ($sp)
/* 06C4A0 8006B8A0 AFA50004 */  sw    $a1, 4($sp)
/* 06C4A4 8006B8A4 A4400000 */  sh    $zero, ($v0)
/* 06C4A8 8006B8A8 A4400002 */  sh    $zero, 2($v0)
/* 06C4AC 8006B8AC 03E00008 */  jr    $ra
/* 06C4B0 8006B8B0 A4400004 */   sh    $zero, 4($v0)
