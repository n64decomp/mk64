glabel func_800B90B0
/* 0B9CB0 800B90B0 8C820004 */  lw    $v0, 4($a0)
/* 0B9CB4 800B90B4 8C8E000C */  lw    $t6, 0xc($a0)
/* 0B9CB8 800B90B8 2403FFFF */  li    $v1, -1
/* 0B9CBC 800B90BC AC800010 */  sw    $zero, 0x10($a0)
/* 0B9CC0 800B90C0 004E7821 */  addu  $t7, $v0, $t6
/* 0B9CC4 800B90C4 AC800000 */  sw    $zero, ($a0)
/* 0B9CC8 800B90C8 AC8F0020 */  sw    $t7, 0x20($a0)
/* 0B9CCC 800B90CC A483001E */  sh    $v1, 0x1e($a0)
/* 0B9CD0 800B90D0 A483002A */  sh    $v1, 0x2a($a0)
/* 0B9CD4 800B90D4 AC820008 */  sw    $v0, 8($a0)
/* 0B9CD8 800B90D8 03E00008 */  jr    $ra
/* 0B9CDC 800B90DC AC820014 */   sw    $v0, 0x14($a0)
