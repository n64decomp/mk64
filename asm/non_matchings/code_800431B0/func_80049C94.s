glabel func_80049C94
/* 04A894 80049C94 44876000 */  mtc1  $a3, $f12
/* 04A898 80049C98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04A89C 80049C9C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04A8A0 80049CA0 AFA60028 */  sw    $a2, 0x28($sp)
/* 04A8A4 80049CA4 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04A8A8 80049CA8 44076000 */  mfc1  $a3, $f12
/* 04A8AC 80049CAC 0C0108CC */  jal   func_80042330
/* 04A8B0 80049CB0 01C03025 */   move  $a2, $t6
/* 04A8B4 80049CB4 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04A8B8 80049CB8 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04A8BC 80049CBC 8D030000 */  lw    $v1, ($t0)
/* 04A8C0 80049CC0 3C190D00 */  lui   $t9, %hi(D_0D007A60) # $t9, 0xd00
/* 04A8C4 80049CC4 27397A60 */  addiu $t9, %lo(D_0D007A60) # addiu $t9, $t9, 0x7a60
/* 04A8C8 80049CC8 246F0008 */  addiu $t7, $v1, 8
/* 04A8CC 80049CCC AD0F0000 */  sw    $t7, ($t0)
/* 04A8D0 80049CD0 3C180600 */  lui   $t8, 0x600
/* 04A8D4 80049CD4 AC780000 */  sw    $t8, ($v1)
/* 04A8D8 80049CD8 AC790004 */  sw    $t9, 4($v1)
/* 04A8DC 80049CDC 8FAA0044 */  lw    $t2, 0x44($sp)
/* 04A8E0 80049CE0 8FA90040 */  lw    $t1, 0x40($sp)
/* 04A8E4 80049CE4 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04A8E8 80049CE8 8FA60038 */  lw    $a2, 0x38($sp)
/* 04A8EC 80049CEC 8FA50034 */  lw    $a1, 0x34($sp)
/* 04A8F0 80049CF0 8FA40030 */  lw    $a0, 0x30($sp)
/* 04A8F4 80049CF4 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A8F8 80049CF8 0C0124B5 */  jal   func_800492D4
/* 04A8FC 80049CFC AFA90010 */   sw    $t1, 0x10($sp)
/* 04A900 80049D00 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04A904 80049D04 27BD0020 */  addiu $sp, $sp, 0x20
/* 04A908 80049D08 03E00008 */  jr    $ra
/* 04A90C 80049D0C 00000000 */   nop   
