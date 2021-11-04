glabel func_800463B0
/* 046FB0 800463B0 44876000 */  mtc1  $a3, $f12
/* 046FB4 800463B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 046FB8 800463B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 046FBC 800463BC AFA60028 */  sw    $a2, 0x28($sp)
/* 046FC0 800463C0 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 046FC4 800463C4 44076000 */  mfc1  $a3, $f12
/* 046FC8 800463C8 0C0108CC */  jal   func_80042330
/* 046FCC 800463CC 01C03025 */   move  $a2, $t6
/* 046FD0 800463D0 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 046FD4 800463D4 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 046FD8 800463D8 8D030000 */  lw    $v1, ($t0)
/* 046FDC 800463DC 3C190D00 */  lui   $t9, %hi(D_0D007928) # $t9, 0xd00
/* 046FE0 800463E0 27397928 */  addiu $t9, %lo(D_0D007928) # addiu $t9, $t9, 0x7928
/* 046FE4 800463E4 246F0008 */  addiu $t7, $v1, 8
/* 046FE8 800463E8 AD0F0000 */  sw    $t7, ($t0)
/* 046FEC 800463EC 3C180600 */  lui   $t8, 0x600
/* 046FF0 800463F0 AC780000 */  sw    $t8, ($v1)
/* 046FF4 800463F4 AC790004 */  sw    $t9, 4($v1)
/* 046FF8 800463F8 8FA90044 */  lw    $t1, 0x44($sp)
/* 046FFC 800463FC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 047000 80046400 8FA60038 */  lw    $a2, 0x38($sp)
/* 047004 80046404 8FA50034 */  lw    $a1, 0x34($sp)
/* 047008 80046408 8FA40030 */  lw    $a0, 0x30($sp)
/* 04700C 8004640C 0C011743 */  jal   func_80045D0C
/* 047010 80046410 AFA90010 */   sw    $t1, 0x10($sp)
/* 047014 80046414 8FBF001C */  lw    $ra, 0x1c($sp)
/* 047018 80046418 27BD0020 */  addiu $sp, $sp, 0x20
/* 04701C 8004641C 03E00008 */  jr    $ra
/* 047020 80046420 00000000 */   nop   
