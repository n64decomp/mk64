glabel func_80298C94
/* 1022A4 80298C94 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1022A8 80298C98 AFB20020 */  sw    $s2, 0x20($sp)
/* 1022AC 80298C9C AFB00018 */  sw    $s0, 0x18($sp)
/* 1022B0 80298CA0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1022B4 80298CA4 3C10800F */  lui   $s0, %hi(gPlayers) # $s0, 0x800f
/* 1022B8 80298CA8 3C128010 */  lui   $s2, %hi(gPlayers+0x3760) # $s2, 0x8010
/* 1022BC 80298CAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 1022C0 80298CB0 2652A0F0 */  addiu $s2, %lo(gPlayers+0x3760) # addiu $s2, $s2, -0x5f10
/* 1022C4 80298CB4 26106990 */  addiu $s0, %lo(gPlayers) # addiu $s0, $s0, 0x6990
/* 1022C8 80298CB8 24110008 */  li    $s1, 8
/* 1022CC 80298CBC 960E0000 */  lhu   $t6, ($s0)
.L80298CC0:
/* 1022D0 80298CC0 31CFC000 */  andi  $t7, $t6, 0xc000
/* 1022D4 80298CC4 51E0000A */  beql  $t7, $zero, .L80298CF0
/* 1022D8 80298CC8 26100DD8 */   addiu $s0, $s0, 0xdd8
/* 1022DC 80298CCC 0C0AAF44 */  jal   func_802ABD10
/* 1022E0 80298CD0 9604011A */   lhu   $a0, 0x11a($s0)
/* 1022E4 80298CD4 0002C600 */  sll   $t8, $v0, 0x18
/* 1022E8 80298CD8 0018CE03 */  sra   $t9, $t8, 0x18
/* 1022EC 80298CDC 56390004 */  bnel  $s1, $t9, .L80298CF0
/* 1022F0 80298CE0 26100DD8 */   addiu $s0, $s0, 0xdd8
/* 1022F4 80298CE4 0C0A62B0 */  jal   func_80298AC0
/* 1022F8 80298CE8 02002025 */   move  $a0, $s0
/* 1022FC 80298CEC 26100DD8 */  addiu $s0, $s0, 0xdd8
.L80298CF0:
/* 102300 80298CF0 5612FFF3 */  bnel  $s0, $s2, .L80298CC0
/* 102304 80298CF4 960E0000 */   lhu   $t6, ($s0)
/* 102308 80298CF8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 10230C 80298CFC 8FB00018 */  lw    $s0, 0x18($sp)
/* 102310 80298D00 8FB1001C */  lw    $s1, 0x1c($sp)
/* 102314 80298D04 8FB20020 */  lw    $s2, 0x20($sp)
/* 102318 80298D08 03E00008 */  jr    $ra
/* 10231C 80298D0C 27BD0028 */   addiu $sp, $sp, 0x28
