glabel func_802A89C0
/* 111FD0 802A89C0 3C02802C */  lui   $v0, %hi(D_802BA270) # $v0, 0x802c
/* 111FD4 802A89C4 2442A270 */  addiu $v0, %lo(D_802BA270) # addiu $v0, $v0, -0x5d90
/* 111FD8 802A89C8 8C4F0000 */  lw    $t7, ($v0)
/* 111FDC 802A89CC AFA50004 */  sw    $a1, 4($sp)
/* 111FE0 802A89D0 AFA60008 */  sw    $a2, 8($sp)
/* 111FE4 802A89D4 000FC0C0 */  sll   $t8, $t7, 3
/* 111FE8 802A89D8 0098C821 */  addu  $t9, $a0, $t8
/* 111FEC 802A89DC 3C0EB800 */  lui   $t6, 0xb800
/* 111FF0 802A89E0 AF2E0000 */  sw    $t6, ($t9)
/* 111FF4 802A89E4 8C480000 */  lw    $t0, ($v0)
/* 111FF8 802A89E8 000848C0 */  sll   $t1, $t0, 3
/* 111FFC 802A89EC 00895021 */  addu  $t2, $a0, $t1
/* 112000 802A89F0 AD400004 */  sw    $zero, 4($t2)
/* 112004 802A89F4 8C4B0000 */  lw    $t3, ($v0)
/* 112008 802A89F8 256C0001 */  addiu $t4, $t3, 1
/* 11200C 802A89FC 03E00008 */  jr    $ra
/* 112010 802A8A00 AC4C0000 */   sw    $t4, ($v0)
