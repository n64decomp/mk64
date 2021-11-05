glabel func_8004CA58
/* 04D658 8004CA58 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04D65C 8004CA5C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04D660 8004CA60 8D030000 */  lw    $v1, ($t0)
/* 04D664 8004CA64 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04D668 8004CA68 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04D66C 8004CA6C 246E0008 */  addiu $t6, $v1, 8
/* 04D670 8004CA70 AFA40020 */  sw    $a0, 0x20($sp)
/* 04D674 8004CA74 AFA50024 */  sw    $a1, 0x24($sp)
/* 04D678 8004CA78 AFA60028 */  sw    $a2, 0x28($sp)
/* 04D67C 8004CA7C AD0E0000 */  sw    $t6, ($t0)
/* 04D680 8004CA80 3C180D00 */  lui   $t8, %hi(D_0D007F78) # $t8, 0xd00
/* 04D684 8004CA84 27187F78 */  addiu $t8, %lo(D_0D007F78) # addiu $t8, $t8, 0x7f78
/* 04D688 8004CA88 3C0F0600 */  lui   $t7, 0x600
/* 04D68C 8004CA8C AC6F0000 */  sw    $t7, ($v1)
/* 04D690 8004CA90 AC780004 */  sw    $t8, 4($v1)
/* 04D694 8004CA94 8FA60034 */  lw    $a2, 0x34($sp)
/* 04D698 8004CA98 8FA50030 */  lw    $a1, 0x30($sp)
/* 04D69C 8004CA9C 0C010F54 */  jal   func_80043D50
/* 04D6A0 8004CAA0 00E02025 */   move  $a0, $a3
/* 04D6A4 8004CAA4 C7A40028 */  lwc1  $f4, 0x28($sp)
/* 04D6A8 8004CAA8 8FA40020 */  lw    $a0, 0x20($sp)
/* 04D6AC 8004CAAC 8FA50024 */  lw    $a1, 0x24($sp)
/* 04D6B0 8004CAB0 8FA60030 */  lw    $a2, 0x30($sp)
/* 04D6B4 8004CAB4 8FA70034 */  lw    $a3, 0x34($sp)
/* 04D6B8 8004CAB8 0C012ECF */  jal   func_8004BB3C
/* 04D6BC 8004CABC E7A40010 */   swc1  $f4, 0x10($sp)
/* 04D6C0 8004CAC0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04D6C4 8004CAC4 27BD0020 */  addiu $sp, $sp, 0x20
/* 04D6C8 8004CAC8 03E00008 */  jr    $ra
/* 04D6CC 8004CACC 00000000 */   nop   
