glabel func_800B8F8C
/* 0B9B8C 800B8F8C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0B9B90 800B8F90 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0B9B94 800B8F94 AFB00018 */  sw    $s0, 0x18($sp)
/* 0B9B98 800B8F98 AFB20020 */  sw    $s2, 0x20($sp)
/* 0B9B9C 800B8F9C 3C10803B */  lui   $s0, %hi(D_803B1510) # $s0, 0x803b
/* 0B9BA0 800B8FA0 3C11803B */  lui   $s1, %hi(D_803B1A30) # $s1, 0x803b
/* 0B9BA4 800B8FA4 00809025 */  move  $s2, $a0
/* 0B9BA8 800B8FA8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0B9BAC 800B8FAC 26311A30 */  addiu $s1, %lo(D_803B1A30) # addiu $s1, $s1, 0x1a30
/* 0B9BB0 800B8FB0 26101510 */  addiu $s0, %lo(D_803B1510) # addiu $s0, $s0, 0x1510
/* 0B9BB4 800B8FB4 8E0E0000 */  lw    $t6, ($s0)
.L800B8FB8:
/* 0B9BB8 800B8FB8 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0B9BBC 800B8FBC 51E00007 */  beql  $t7, $zero, .L800B8FDC
/* 0B9BC0 800B8FC0 26100148 */   addiu $s0, $s0, 0x148
/* 0B9BC4 800B8FC4 92180004 */  lbu   $t8, 4($s0)
/* 0B9BC8 800B8FC8 56580004 */  bnel  $s2, $t8, .L800B8FDC
/* 0B9BCC 800B8FCC 26100148 */   addiu $s0, $s0, 0x148
/* 0B9BD0 800B8FD0 0C02FBCB */  jal   func_800BEF2C
/* 0B9BD4 800B8FD4 02002025 */   move  $a0, $s0
/* 0B9BD8 800B8FD8 26100148 */  addiu $s0, $s0, 0x148
.L800B8FDC:
/* 0B9BDC 800B8FDC 5611FFF6 */  bnel  $s0, $s1, .L800B8FB8
/* 0B9BE0 800B8FE0 8E0E0000 */   lw    $t6, ($s0)
/* 0B9BE4 800B8FE4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0B9BE8 800B8FE8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0B9BEC 800B8FEC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0B9BF0 800B8FF0 8FB20020 */  lw    $s2, 0x20($sp)
/* 0B9BF4 800B8FF4 03E00008 */  jr    $ra
/* 0B9BF8 800B8FF8 27BD0028 */   addiu $sp, $sp, 0x28
