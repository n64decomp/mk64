glabel func_8004F950
/* 050550 8004F950 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 050554 8004F954 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 050558 8004F958 8D030000 */  lw    $v1, ($t0)
/* 05055C 8004F95C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 050560 8004F960 AFBF0014 */  sw    $ra, 0x14($sp)
/* 050564 8004F964 AFA40018 */  sw    $a0, 0x18($sp)
/* 050568 8004F968 3C180D00 */  lui   $t8, %hi(D_0D007F38) # $t8, 0xd00
/* 05056C 8004F96C 246E0008 */  addiu $t6, $v1, 8
/* 050570 8004F970 AFA5001C */  sw    $a1, 0x1c($sp)
/* 050574 8004F974 AFA70024 */  sw    $a3, 0x24($sp)
/* 050578 8004F978 AD0E0000 */  sw    $t6, ($t0)
/* 05057C 8004F97C 27187F38 */  addiu $t8, %lo(D_0D007F38) # addiu $t8, $t8, 0x7f38
/* 050580 8004F980 3C0F0600 */  lui   $t7, 0x600
/* 050584 8004F984 00C02025 */  move  $a0, $a2
/* 050588 8004F988 AC6F0000 */  sw    $t7, ($v1)
/* 05058C 8004F98C 0C012CAF */  jal   func_8004B2BC
/* 050590 8004F990 AC780004 */   sw    $t8, 4($v1)
/* 050594 8004F994 3C040D01 */  lui   $a0, %hi(D_0D00C558) # $a0, 0xd01
/* 050598 8004F998 2484C558 */  addiu $a0, %lo(D_0D00C558) # addiu $a0, $a0, -0x3aa8
/* 05059C 8004F99C 24050068 */  li    $a1, 104
/* 0505A0 8004F9A0 0C010F54 */  jal   func_80043D50
/* 0505A4 8004F9A4 24060010 */   li    $a2, 16
/* 0505A8 8004F9A8 0C013DB4 */  jal   func_8004F6D0
/* 0505AC 8004F9AC 8FA40024 */   lw    $a0, 0x24($sp)
/* 0505B0 8004F9B0 8FA40018 */  lw    $a0, 0x18($sp)
/* 0505B4 8004F9B4 0C013E33 */  jal   func_8004F8CC
/* 0505B8 8004F9B8 8FA5001C */   lw    $a1, 0x1c($sp)
/* 0505BC 8004F9BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0505C0 8004F9C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0505C4 8004F9C4 03E00008 */  jr    $ra
/* 0505C8 8004F9C8 00000000 */   nop   
