glabel func_800B4E24
/* 0B5A24 800B4E24 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0B5A28 800B4E28 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0B5A2C 800B4E2C 3C188019 */  lui   $t8, %hi(gCourseSelection) # $t8, 0x8019
/* 0B5A30 800B4E30 8318EE0B */  lb    $t8, %lo(gCourseSelection)($t8)
/* 0B5A34 800B4E34 000E7880 */  sll   $t7, $t6, 2
/* 0B5A38 800B4E38 00802825 */  move  $a1, $a0
/* 0B5A3C 800B4E3C 01F81021 */  addu  $v0, $t7, $t8
/* 0B5A40 800B4E40 00056080 */  sll   $t4, $a1, 2
/* 0B5A44 800B4E44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B5A48 800B4E48 01856023 */  subu  $t4, $t4, $a1
/* 0B5A4C 800B4E4C 3C0E8019 */  lui   $t6, %hi(D_8018EB90) # $t6, 0x8019
/* 0B5A50 800B4E50 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5A54 800B4E54 04410003 */  bgez  $v0, .L800B4E64
/* 0B5A58 800B4E58 0002C883 */   sra   $t9, $v0, 2
/* 0B5A5C 800B4E5C 24410003 */  addiu $at, $v0, 3
/* 0B5A60 800B4E60 0001C883 */  sra   $t9, $at, 2
.L800B4E64:
/* 0B5A64 800B4E64 00194080 */  sll   $t0, $t9, 2
/* 0B5A68 800B4E68 01194023 */  subu  $t0, $t0, $t9
/* 0B5A6C 800B4E6C 00084140 */  sll   $t0, $t0, 5
/* 0B5A70 800B4E70 04410004 */  bgez  $v0, .L800B4E84
/* 0B5A74 800B4E74 30490003 */   andi  $t1, $v0, 3
/* 0B5A78 800B4E78 11200002 */  beqz  $t1, .L800B4E84
/* 0B5A7C 800B4E7C 00000000 */   nop   
/* 0B5A80 800B4E80 2529FFFC */  addiu $t1, $t1, -4
.L800B4E84:
/* 0B5A84 800B4E84 00095080 */  sll   $t2, $t1, 2
/* 0B5A88 800B4E88 01495023 */  subu  $t2, $t2, $t1
/* 0B5A8C 800B4E8C 000A50C0 */  sll   $t2, $t2, 3
/* 0B5A90 800B4E90 010A5821 */  addu  $t3, $t0, $t2
/* 0B5A94 800B4E94 016C6821 */  addu  $t5, $t3, $t4
/* 0B5A98 800B4E98 25CEEB90 */  addiu $t6, %lo(D_8018EB90) # addiu $t6, $t6, -0x1470
/* 0B5A9C 800B4E9C 0C02D37D */  jal   func_800B4DF4
/* 0B5AA0 800B4EA0 01AE2021 */   addu  $a0, $t5, $t6
/* 0B5AA4 800B4EA4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5AA8 800B4EA8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B5AAC 800B4EAC 03E00008 */  jr    $ra
/* 0B5AB0 800B4EB0 00000000 */   nop   
