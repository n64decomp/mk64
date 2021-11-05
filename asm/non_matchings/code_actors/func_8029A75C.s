glabel func_8029A75C
/* 103D6C 8029A75C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 103D70 8029A760 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 103D74 8029A764 8C620000 */  lw    $v0, ($v1)
/* 103D78 8029A768 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 103D7C 8029A76C AFBF0014 */  sw    $ra, 0x14($sp)
/* 103D80 8029A770 244E0008 */  addiu $t6, $v0, 8
/* 103D84 8029A774 AC6E0000 */  sw    $t6, ($v1)
/* 103D88 8029A778 3C18802C */  lui   $t8, %hi(D_802BA060) # $t8, 0x802c
/* 103D8C 8029A77C 2718A060 */  addiu $t8, %lo(D_802BA060) # addiu $t8, $t8, -0x5fa0
/* 103D90 8029A780 3C0FFD10 */  lui   $t7, 0xfd10
/* 103D94 8029A784 AC4F0000 */  sw    $t7, ($v0)
/* 103D98 8029A788 AC580004 */  sw    $t8, 4($v0)
/* 103D9C 8029A78C 8C620000 */  lw    $v0, ($v1)
/* 103DA0 8029A790 3C0DE800 */  lui   $t5, 0xe800
/* 103DA4 8029A794 3C0FF500 */  lui   $t7, (0xF5000100 >> 16) # lui $t7, 0xf500
/* 103DA8 8029A798 24590008 */  addiu $t9, $v0, 8
/* 103DAC 8029A79C AC790000 */  sw    $t9, ($v1)
/* 103DB0 8029A7A0 AC400004 */  sw    $zero, 4($v0)
/* 103DB4 8029A7A4 AC4D0000 */  sw    $t5, ($v0)
/* 103DB8 8029A7A8 8C620000 */  lw    $v0, ($v1)
/* 103DBC 8029A7AC 35EF0100 */  ori   $t7, (0xF5000100 & 0xFFFF) # ori $t7, $t7, 0x100
/* 103DC0 8029A7B0 3C180700 */  lui   $t8, 0x700
/* 103DC4 8029A7B4 244E0008 */  addiu $t6, $v0, 8
/* 103DC8 8029A7B8 AC6E0000 */  sw    $t6, ($v1)
/* 103DCC 8029A7BC AC580004 */  sw    $t8, 4($v0)
/* 103DD0 8029A7C0 AC4F0000 */  sw    $t7, ($v0)
/* 103DD4 8029A7C4 8C620000 */  lw    $v0, ($v1)
/* 103DD8 8029A7C8 3C0DE600 */  lui   $t5, 0xe600
/* 103DDC 8029A7CC 3C18073F */  lui   $t8, (0x073FC000 >> 16) # lui $t8, 0x73f
/* 103DE0 8029A7D0 24590008 */  addiu $t9, $v0, 8
/* 103DE4 8029A7D4 AC790000 */  sw    $t9, ($v1)
/* 103DE8 8029A7D8 AC400004 */  sw    $zero, 4($v0)
/* 103DEC 8029A7DC AC4D0000 */  sw    $t5, ($v0)
/* 103DF0 8029A7E0 8C620000 */  lw    $v0, ($v1)
/* 103DF4 8029A7E4 3718C000 */  ori   $t8, (0x073FC000 & 0xFFFF) # ori $t8, $t8, 0xc000
/* 103DF8 8029A7E8 3C0FF000 */  lui   $t7, 0xf000
/* 103DFC 8029A7EC 244E0008 */  addiu $t6, $v0, 8
/* 103E00 8029A7F0 AC6E0000 */  sw    $t6, ($v1)
/* 103E04 8029A7F4 AC580004 */  sw    $t8, 4($v0)
/* 103E08 8029A7F8 AC4F0000 */  sw    $t7, ($v0)
/* 103E0C 8029A7FC 8C620000 */  lw    $v0, ($v1)
/* 103E10 8029A800 3C0DE700 */  lui   $t5, 0xe700
/* 103E14 8029A804 24590008 */  addiu $t9, $v0, 8
/* 103E18 8029A808 AC790000 */  sw    $t9, ($v1)
/* 103E1C 8029A80C AC400004 */  sw    $zero, 4($v0)
/* 103E20 8029A810 0C0A68EB */  jal   func_8029A3AC
/* 103E24 8029A814 AC4D0000 */   sw    $t5, ($v0)
/* 103E28 8029A818 8FBF0014 */  lw    $ra, 0x14($sp)
/* 103E2C 8029A81C 27BD0018 */  addiu $sp, $sp, 0x18
/* 103E30 8029A820 03E00008 */  jr    $ra
/* 103E34 8029A824 00000000 */   nop   
