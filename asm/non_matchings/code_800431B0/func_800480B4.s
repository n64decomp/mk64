glabel func_800480B4
/* 048CB4 800480B4 44866000 */  mtc1  $a2, $f12
/* 048CB8 800480B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 048CBC 800480BC AFBF0024 */  sw    $ra, 0x24($sp)
/* 048CC0 800480C0 44066000 */  mfc1  $a2, $f12
/* 048CC4 800480C4 0C010B80 */  jal   func_80042E00
/* 048CC8 800480C8 AFA70034 */   sw    $a3, 0x34($sp)
/* 048CCC 800480CC 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 048CD0 800480D0 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 048CD4 800480D4 8D030000 */  lw    $v1, ($t0)
/* 048CD8 800480D8 3C180D00 */  lui   $t8, %hi(D_0D007D78) # $t8, 0xd00
/* 048CDC 800480DC 27187D78 */  addiu $t8, %lo(D_0D007D78) # addiu $t8, $t8, 0x7d78
/* 048CE0 800480E0 246E0008 */  addiu $t6, $v1, 8
/* 048CE4 800480E4 AD0E0000 */  sw    $t6, ($t0)
/* 048CE8 800480E8 3C0F0600 */  lui   $t7, 0x600
/* 048CEC 800480EC AC6F0000 */  sw    $t7, ($v1)
/* 048CF0 800480F0 AC780004 */  sw    $t8, 4($v1)
/* 048CF4 800480F4 8FAA004C */  lw    $t2, 0x4c($sp)
/* 048CF8 800480F8 8FA90048 */  lw    $t1, 0x48($sp)
/* 048CFC 800480FC 8FB90044 */  lw    $t9, 0x44($sp)
/* 048D00 80048100 8FA70040 */  lw    $a3, 0x40($sp)
/* 048D04 80048104 8FA6003C */  lw    $a2, 0x3c($sp)
/* 048D08 80048108 8FA50038 */  lw    $a1, 0x38($sp)
/* 048D0C 8004810C 8FA40034 */  lw    $a0, 0x34($sp)
/* 048D10 80048110 AFAA0018 */  sw    $t2, 0x18($sp)
/* 048D14 80048114 AFA90014 */  sw    $t1, 0x14($sp)
/* 048D18 80048118 0C011C9C */  jal   func_80047270
/* 048D1C 8004811C AFB90010 */   sw    $t9, 0x10($sp)
/* 048D20 80048120 8FBF0024 */  lw    $ra, 0x24($sp)
/* 048D24 80048124 27BD0028 */  addiu $sp, $sp, 0x28
/* 048D28 80048128 03E00008 */  jr    $ra
/* 048D2C 8004812C 00000000 */   nop   
