glabel func_8029A690
/* 103CA0 8029A690 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 103CA4 8029A694 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 103CA8 8029A698 8C620000 */  lw    $v0, ($v1)
/* 103CAC 8029A69C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 103CB0 8029A6A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 103CB4 8029A6A4 244E0008 */  addiu $t6, $v0, 8
/* 103CB8 8029A6A8 AC6E0000 */  sw    $t6, ($v1)
/* 103CBC 8029A6AC 3C180D00 */  lui   $t8, %hi(D_0D004E38) # $t8, 0xd00
/* 103CC0 8029A6B0 27184E38 */  addiu $t8, %lo(D_0D004E38) # addiu $t8, $t8, 0x4e38
/* 103CC4 8029A6B4 3C0FFD10 */  lui   $t7, 0xfd10
/* 103CC8 8029A6B8 AC4F0000 */  sw    $t7, ($v0)
/* 103CCC 8029A6BC AC580004 */  sw    $t8, 4($v0)
/* 103CD0 8029A6C0 8C620000 */  lw    $v0, ($v1)
/* 103CD4 8029A6C4 3C0DE800 */  lui   $t5, 0xe800
/* 103CD8 8029A6C8 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 103CDC 8029A6CC 24590008 */  addiu $t9, $v0, 8
/* 103CE0 8029A6D0 AC790000 */  sw    $t9, ($v1)
/* 103CE4 8029A6D4 AC400004 */  sw    $zero, 4($v0)
/* 103CE8 8029A6D8 AC4D0000 */  sw    $t5, ($v0)
/* 103CEC 8029A6DC 8C620000 */  lw    $v0, ($v1)
/* 103CF0 8029A6E0 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 103CF4 8029A6E4 3C180700 */  lui   $t8, 0x700
/* 103CF8 8029A6E8 244E0008 */  addiu $t6, $v0, 8
/* 103CFC 8029A6EC AC6E0000 */  sw    $t6, ($v1)
/* 103D00 8029A6F0 AC580004 */  sw    $t8, 4($v0)
/* 103D04 8029A6F4 AC4F0000 */  sw    $t7, ($v0)
/* 103D08 8029A6F8 8C620000 */  lw    $v0, ($v1)
/* 103D0C 8029A6FC 3C0DE600 */  lui   $t5, 0xe600
/* 103D10 8029A700 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 103D14 8029A704 24590008 */  addiu $t9, $v0, 8
/* 103D18 8029A708 AC790000 */  sw    $t9, ($v1)
/* 103D1C 8029A70C AC400004 */  sw    $zero, 4($v0)
/* 103D20 8029A710 AC4D0000 */  sw    $t5, ($v0)
/* 103D24 8029A714 8C620000 */  lw    $v0, ($v1)
/* 103D28 8029A718 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 103D2C 8029A71C 3C0FF000 */  lui   $t7, 0xf000
/* 103D30 8029A720 244E0008 */  addiu $t6, $v0, 8
/* 103D34 8029A724 AC6E0000 */  sw    $t6, ($v1)
/* 103D38 8029A728 AC580004 */  sw    $t8, 4($v0)
/* 103D3C 8029A72C AC4F0000 */  sw    $t7, ($v0)
/* 103D40 8029A730 8C620000 */  lw    $v0, ($v1)
/* 103D44 8029A734 3C0DE700 */  lui   $t5, 0xe700
/* 103D48 8029A738 24590008 */  addiu $t9, $v0, 8
/* 103D4C 8029A73C AC790000 */  sw    $t9, ($v1)
/* 103D50 8029A740 AC400004 */  sw    $zero, 4($v0)
/* 103D54 8029A744 0C0A68EB */  jal   func_8029A3AC
/* 103D58 8029A748 AC4D0000 */   sw    $t5, ($v0)
/* 103D5C 8029A74C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 103D60 8029A750 27BD0018 */  addiu $sp, $sp, 0x18
/* 103D64 8029A754 03E00008 */  jr    $ra
/* 103D68 8029A758 00000000 */   nop   
