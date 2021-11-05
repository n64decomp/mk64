glabel func_800B6088
/* 0B6C88 800B6088 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B6C8C 800B608C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B6C90 800B6090 0C02DA0A */  jal   func_800B6828
/* 0B6C94 800B6094 AFA40020 */   sw    $a0, 0x20($sp)
/* 0B6C98 800B6098 8FA70020 */  lw    $a3, 0x20($sp)
/* 0B6C9C 800B609C 3C0F8019 */  lui   $t7, %hi(D_8018EE10) # $t7, 0x8019
/* 0B6CA0 800B60A0 25EFEE10 */  addiu $t7, %lo(D_8018EE10) # addiu $t7, $t7, -0x11f0
/* 0B6CA4 800B60A4 000771C0 */  sll   $t6, $a3, 7
/* 0B6CA8 800B60A8 01CF1821 */  addu  $v1, $t6, $t7
/* 0B6CAC 800B60AC A062007F */  sb    $v0, 0x7f($v1)
/* 0B6CB0 800B60B0 3C048019 */  lui   $a0, %hi(D_8018E868) # $a0, 0x8019
/* 0B6CB4 800B60B4 3C058019 */  lui   $a1, %hi(D_8018EB84) # $a1, 0x8019
/* 0B6CB8 800B60B8 24180080 */  li    $t8, 128
/* 0B6CBC 800B60BC 01C03825 */  move  $a3, $t6
/* 0B6CC0 800B60C0 AFB80010 */  sw    $t8, 0x10($sp)
/* 0B6CC4 800B60C4 8CA5EB84 */  lw    $a1, %lo(D_8018EB84)($a1)
/* 0B6CC8 800B60C8 2484E868 */  addiu $a0, %lo(D_8018E868) # addiu $a0, $a0, -0x1798
/* 0B6CCC 800B60CC AFA30014 */  sw    $v1, 0x14($sp)
/* 0B6CD0 800B60D0 0C0340F3 */  jal   osPfsReadWriteFile
/* 0B6CD4 800B60D4 24060001 */   li    $a2, 1
/* 0B6CD8 800B60D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B6CDC 800B60DC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B6CE0 800B60E0 03E00008 */  jr    $ra
/* 0B6CE4 800B60E4 00000000 */   nop   
