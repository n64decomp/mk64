glabel func_80004EAC
/* 005AAC 80004EAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 005AB0 80004EB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 005AB4 80004EB4 0C0A9EF5 */  jal   lookup_item
/* 005AB8 80004EB8 AFA5001C */   sw    $a1, 0x1c($sp)
/* 005ABC 80004EBC 87AE001E */  lh    $t6, 0x1e($sp)
/* 005AC0 80004EC0 000E7880 */  sll   $t7, $t6, 2
/* 005AC4 80004EC4 004FC021 */  addu  $t8, $v0, $t7
/* 005AC8 80004EC8 0C0A9EF5 */  jal   lookup_item
/* 005ACC 80004ECC 8F040000 */   lw    $a0, ($t8)
/* 005AD0 80004ED0 84420008 */  lh    $v0, 8($v0)
/* 005AD4 80004ED4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 005AD8 80004ED8 27BD0018 */  addiu $sp, $sp, 0x18
/* 005ADC 80004EDC 2442FFFF */  addiu $v0, $v0, -1
/* 005AE0 80004EE0 0002CC00 */  sll   $t9, $v0, 0x10
/* 005AE4 80004EE4 03E00008 */  jr    $ra
/* 005AE8 80004EE8 00191403 */   sra   $v0, $t9, 0x10
