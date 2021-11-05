glabel func_80099A94
/* 09A694 80099A94 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09A698 80099A98 3C028019 */  lui   $v0, %hi(D_8018E060) # 0x8019
/* 09A69C 80099A9C 2443E060 */  addiu $v1, $v0, %lo(D_8018E060) # -0x1fa0
/* 09A6A0 80099AA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09A6A4 80099AA4 AFA50024 */  sw    $a1, 0x24($sp)
/* 09A6A8 80099AA8 8C6E0000 */  lw    $t6, ($v1)
/* 09A6AC 80099AAC 11C00005 */  beqz  $t6, .L80099AC4
/* 09A6B0 80099AB0 00000000 */   nop   
/* 09A6B4 80099AB4 8C6F0008 */  lw    $t7, 8($v1)
.L80099AB8:
/* 09A6B8 80099AB8 24630008 */  addiu $v1, $v1, 8
/* 09A6BC 80099ABC 55E0FFFE */  bnel  $t7, $zero, .L80099AB8
/* 09A6C0 80099AC0 8C6F0008 */   lw    $t7, 8($v1)
.L80099AC4:
/* 09A6C4 80099AC4 0C026449 */  jal   segmented_to_virtual
/* 09A6C8 80099AC8 AFA3001C */   sw    $v1, 0x1c($sp)
/* 09A6CC 80099ACC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 09A6D0 80099AD0 AC620000 */  sw    $v0, ($v1)
/* 09A6D4 80099AD4 8FB80024 */  lw    $t8, 0x24($sp)
/* 09A6D8 80099AD8 AC780004 */  sw    $t8, 4($v1)
/* 09A6DC 80099ADC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09A6E0 80099AE0 27BD0020 */  addiu $sp, $sp, 0x20
/* 09A6E4 80099AE4 03E00008 */  jr    $ra
/* 09A6E8 80099AE8 00000000 */   nop   
