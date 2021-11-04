glabel func_80098FC8
/* 099BC8 80098FC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 099BCC 80098FCC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 099BD0 80098FD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 099BD4 80098FD4 240F00FF */  li    $t7, 255
/* 099BD8 80098FD8 AFAF0020 */  sw    $t7, 0x20($sp)
/* 099BDC 80098FDC AFA00014 */  sw    $zero, 0x14($sp)
/* 099BE0 80098FE0 AFA00018 */  sw    $zero, 0x18($sp)
/* 099BE4 80098FE4 AFA0001C */  sw    $zero, 0x1c($sp)
/* 099BE8 80098FE8 0C026306 */  jal   func_80098C18
/* 099BEC 80098FEC AFAE0010 */   sw    $t6, 0x10($sp)
/* 099BF0 80098FF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 099BF4 80098FF4 27BD0030 */  addiu $sp, $sp, 0x30
/* 099BF8 80098FF8 03E00008 */  jr    $ra
/* 099BFC 80098FFC 00000000 */   nop   
