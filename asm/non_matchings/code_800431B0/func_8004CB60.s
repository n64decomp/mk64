glabel func_8004CB60
/* 04D760 8004CB60 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04D764 8004CB64 AFA60028 */  sw    $a2, 0x28($sp)
/* 04D768 8004CB68 8FAE0028 */  lw    $t6, 0x28($sp)
/* 04D76C 8004CB6C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04D770 8004CB70 24060020 */  li    $a2, 32
/* 04D774 8004CB74 24070008 */  li    $a3, 8
/* 04D778 8004CB78 0C0130D9 */  jal   func_8004C364
/* 04D77C 8004CB7C AFAE0010 */   sw    $t6, 0x10($sp)
/* 04D780 8004CB80 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04D784 8004CB84 27BD0020 */  addiu $sp, $sp, 0x20
/* 04D788 8004CB88 03E00008 */  jr    $ra
/* 04D78C 8004CB8C 00000000 */   nop   
