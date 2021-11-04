glabel func_8004E78C
/* 04F38C 8004E78C 00047140 */  sll   $t6, $a0, 5
/* 04F390 8004E790 01C47021 */  addu  $t6, $t6, $a0
/* 04F394 8004E794 3C0F8019 */  lui   $t7, %hi(D_8018CA70) # $t7, 0x8019
/* 04F398 8004E798 25EFCA70 */  addiu $t7, %lo(D_8018CA70) # addiu $t7, $t7, -0x3590
/* 04F39C 8004E79C 000E7080 */  sll   $t6, $t6, 2
/* 04F3A0 8004E7A0 01CF1021 */  addu  $v0, $t6, $t7
/* 04F3A4 8004E7A4 84450060 */  lh    $a1, 0x60($v0)
/* 04F3A8 8004E7A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04F3AC 8004E7AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04F3B0 8004E7B0 3C060D01 */  lui   $a2, %hi(D_0D00A958) # $a2, 0xd01
/* 04F3B4 8004E7B4 24C6A958 */  addiu $a2, %lo(D_0D00A958) # addiu $a2, $a2, -0x56a8
/* 04F3B8 8004E7B8 AFA2001C */  sw    $v0, 0x1c($sp)
/* 04F3BC 8004E7BC 8444005A */  lh    $a0, 0x5a($v0)
/* 04F3C0 8004E7C0 0C0132D8 */  jal   func_8004CB60
/* 04F3C4 8004E7C4 24A50003 */   addiu $a1, $a1, 3
/* 04F3C8 8004E7C8 8FA2001C */  lw    $v0, 0x1c($sp)
/* 04F3CC 8004E7CC 3C06800E */  lui   $a2, %hi(D_800E4570) # 0x800e
/* 04F3D0 8004E7D0 80580072 */  lb    $t8, 0x72($v0)
/* 04F3D4 8004E7D4 8444005A */  lh    $a0, 0x5a($v0)
/* 04F3D8 8004E7D8 84450060 */  lh    $a1, 0x60($v0)
/* 04F3DC 8004E7DC 0018C880 */  sll   $t9, $t8, 2
/* 04F3E0 8004E7E0 00D93021 */  addu  $a2, $a2, $t9
/* 04F3E4 8004E7E4 8CC64570 */  lw    $a2, %lo(D_800E4570)($a2) # 0x4570($a2)
/* 04F3E8 8004E7E8 0C0132E4 */  jal   func_8004CB90
/* 04F3EC 8004E7EC 2484001C */   addiu $a0, $a0, 0x1c
/* 04F3F0 8004E7F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04F3F4 8004E7F4 27BD0020 */  addiu $sp, $sp, 0x20
/* 04F3F8 8004E7F8 03E00008 */  jr    $ra
/* 04F3FC 8004E7FC 00000000 */   nop   
