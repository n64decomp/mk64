glabel func_8029A828
/* 103E38 8029A828 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 103E3C 8029A82C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 103E40 8029A830 8C620000 */  lw    $v0, ($v1)
/* 103E44 8029A834 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 103E48 8029A838 AFBF0014 */  sw    $ra, 0x14($sp)
/* 103E4C 8029A83C 244E0008 */  addiu $t6, $v0, 8
/* 103E50 8029A840 AC6E0000 */  sw    $t6, ($v1)
/* 103E54 8029A844 3C180D00 */  lui   $t8, %hi(D_0D005038) # $t8, 0xd00
/* 103E58 8029A848 27185038 */  addiu $t8, %lo(D_0D005038) # addiu $t8, $t8, 0x5038
/* 103E5C 8029A84C 3C0FFD10 */  lui   $t7, 0xfd10
/* 103E60 8029A850 AC4F0000 */  sw    $t7, ($v0)
/* 103E64 8029A854 AC580004 */  sw    $t8, 4($v0)
/* 103E68 8029A858 8C620000 */  lw    $v0, ($v1)
/* 103E6C 8029A85C 3C0DE800 */  lui   $t5, 0xe800
/* 103E70 8029A860 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 103E74 8029A864 24590008 */  addiu $t9, $v0, 8
/* 103E78 8029A868 AC790000 */  sw    $t9, ($v1)
/* 103E7C 8029A86C AC400004 */  sw    $zero, 4($v0)
/* 103E80 8029A870 AC4D0000 */  sw    $t5, ($v0)
/* 103E84 8029A874 8C620000 */  lw    $v0, ($v1)
/* 103E88 8029A878 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 103E8C 8029A87C 3C180700 */  lui   $t8, 0x700
/* 103E90 8029A880 244E0008 */  addiu $t6, $v0, 8
/* 103E94 8029A884 AC6E0000 */  sw    $t6, ($v1)
/* 103E98 8029A888 AC580004 */  sw    $t8, 4($v0)
/* 103E9C 8029A88C AC4F0000 */  sw    $t7, ($v0)
/* 103EA0 8029A890 8C620000 */  lw    $v0, ($v1)
/* 103EA4 8029A894 3C0DE600 */  lui   $t5, 0xe600
/* 103EA8 8029A898 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 103EAC 8029A89C 24590008 */  addiu $t9, $v0, 8
/* 103EB0 8029A8A0 AC790000 */  sw    $t9, ($v1)
/* 103EB4 8029A8A4 AC400004 */  sw    $zero, 4($v0)
/* 103EB8 8029A8A8 AC4D0000 */  sw    $t5, ($v0)
/* 103EBC 8029A8AC 8C620000 */  lw    $v0, ($v1)
/* 103EC0 8029A8B0 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 103EC4 8029A8B4 3C0FF000 */  lui   $t7, 0xf000
/* 103EC8 8029A8B8 244E0008 */  addiu $t6, $v0, 8
/* 103ECC 8029A8BC AC6E0000 */  sw    $t6, ($v1)
/* 103ED0 8029A8C0 AC580004 */  sw    $t8, 4($v0)
/* 103ED4 8029A8C4 AC4F0000 */  sw    $t7, ($v0)
/* 103ED8 8029A8C8 8C620000 */  lw    $v0, ($v1)
/* 103EDC 8029A8CC 3C0DE700 */  lui   $t5, 0xe700
/* 103EE0 8029A8D0 24590008 */  addiu $t9, $v0, 8
/* 103EE4 8029A8D4 AC790000 */  sw    $t9, ($v1)
/* 103EE8 8029A8D8 AC400004 */  sw    $zero, 4($v0)
/* 103EEC 8029A8DC 0C0A68EB */  jal   func_8029A3AC
/* 103EF0 8029A8E0 AC4D0000 */   sw    $t5, ($v0)
/* 103EF4 8029A8E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 103EF8 8029A8E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 103EFC 8029A8EC 03E00008 */  jr    $ra
/* 103F00 8029A8F0 00000000 */   nop   
