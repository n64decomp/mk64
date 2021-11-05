glabel func_80055F48
/* 056B48 80055F48 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 056B4C 80055F4C AFB20020 */  sw    $s2, 0x20($sp)
/* 056B50 80055F50 AFB00018 */  sw    $s0, 0x18($sp)
/* 056B54 80055F54 AFB1001C */  sw    $s1, 0x1c($sp)
/* 056B58 80055F58 3C108018 */  lui   $s0, %hi(D_80183EA0) # $s0, 0x8018
/* 056B5C 80055F5C 3C128018 */  lui   $s2, %hi(D_80183EAC) # $s2, 0x8018
/* 056B60 80055F60 00808825 */  move  $s1, $a0
/* 056B64 80055F64 AFBF0024 */  sw    $ra, 0x24($sp)
/* 056B68 80055F68 26523EAC */  addiu $s2, %lo(D_80183EAC) # addiu $s2, $s2, 0x3eac
/* 056B6C 80055F6C 26103EA0 */  addiu $s0, %lo(D_80183EA0) # addiu $s0, $s0, 0x3ea0
/* 056B70 80055F70 8E040000 */  lw    $a0, ($s0)
.L80055F74:
/* 056B74 80055F74 0C0157BD */  jal   func_80055EF4
/* 056B78 80055F78 02202825 */   move  $a1, $s1
/* 056B7C 80055F7C 26100004 */  addiu $s0, $s0, 4
/* 056B80 80055F80 5612FFFC */  bnel  $s0, $s2, .L80055F74
/* 056B84 80055F84 8E040000 */   lw    $a0, ($s0)
/* 056B88 80055F88 8FBF0024 */  lw    $ra, 0x24($sp)
/* 056B8C 80055F8C 8FB00018 */  lw    $s0, 0x18($sp)
/* 056B90 80055F90 8FB1001C */  lw    $s1, 0x1c($sp)
/* 056B94 80055F94 8FB20020 */  lw    $s2, 0x20($sp)
/* 056B98 80055F98 03E00008 */  jr    $ra
/* 056B9C 80055F9C 27BD0028 */   addiu $sp, $sp, 0x28
