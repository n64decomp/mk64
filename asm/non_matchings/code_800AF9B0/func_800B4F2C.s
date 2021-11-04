glabel func_800B4F2C
/* 0B5B2C 800B4F2C 3C0E8019 */  lui   $t6, %hi(gCupSelection) # $t6, 0x8019
/* 0B5B30 800B4F30 81CEEE09 */  lb    $t6, %lo(gCupSelection)($t6)
/* 0B5B34 800B4F34 3C188019 */  lui   $t8, %hi(gCourseSelection) # $t8, 0x8019
/* 0B5B38 800B4F38 8318EE0B */  lb    $t8, %lo(gCourseSelection)($t8)
/* 0B5B3C 800B4F3C 000E7880 */  sll   $t7, $t6, 2
/* 0B5B40 800B4F40 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B5B44 800B4F44 01F81021 */  addu  $v0, $t7, $t8
/* 0B5B48 800B4F48 3C0D8019 */  lui   $t5, %hi(D_8018EB90) # $t5, 0x8019
/* 0B5B4C 800B4F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5B50 800B4F50 04410003 */  bgez  $v0, .L800B4F60
/* 0B5B54 800B4F54 0002C883 */   sra   $t9, $v0, 2
/* 0B5B58 800B4F58 24410003 */  addiu $at, $v0, 3
/* 0B5B5C 800B4F5C 0001C883 */  sra   $t9, $at, 2
.L800B4F60:
/* 0B5B60 800B4F60 00194080 */  sll   $t0, $t9, 2
/* 0B5B64 800B4F64 01194023 */  subu  $t0, $t0, $t9
/* 0B5B68 800B4F68 00084140 */  sll   $t0, $t0, 5
/* 0B5B6C 800B4F6C 04410004 */  bgez  $v0, .L800B4F80
/* 0B5B70 800B4F70 30490003 */   andi  $t1, $v0, 3
/* 0B5B74 800B4F74 11200002 */  beqz  $t1, .L800B4F80
/* 0B5B78 800B4F78 00000000 */   nop   
/* 0B5B7C 800B4F7C 2529FFFC */  addiu $t1, $t1, -4
.L800B4F80:
/* 0B5B80 800B4F80 00095080 */  sll   $t2, $t1, 2
/* 0B5B84 800B4F84 01495023 */  subu  $t2, $t2, $t1
/* 0B5B88 800B4F88 000A50C0 */  sll   $t2, $t2, 3
/* 0B5B8C 800B4F8C 010A5821 */  addu  $t3, $t0, $t2
/* 0B5B90 800B4F90 256C000F */  addiu $t4, $t3, 0xf
/* 0B5B94 800B4F94 25ADEB90 */  addiu $t5, %lo(D_8018EB90) # addiu $t5, $t5, -0x1470
/* 0B5B98 800B4F98 0C02D37D */  jal   func_800B4DF4
/* 0B5B9C 800B4F9C 018D2021 */   addu  $a0, $t4, $t5
/* 0B5BA0 800B4FA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5BA4 800B4FA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B5BA8 800B4FA8 03E00008 */  jr    $ra
/* 0B5BAC 800B4FAC 00000000 */   nop   
