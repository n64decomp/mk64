glabel update_obj_railroad_crossing
/* 1040E8 8029AAD8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1040EC 8029AADC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1040F0 8029AAE0 848E0006 */  lh    $t6, 6($a0)
/* 1040F4 8029AAE4 3C188016 */  lui   $t8, %hi(D_801637B8) # 0x8016
/* 1040F8 8029AAE8 00803825 */  move  $a3, $a0
/* 1040FC 8029AAEC 000E7840 */  sll   $t7, $t6, 1
/* 104100 8029AAF0 030FC021 */  addu  $t8, $t8, $t7
/* 104104 8029AAF4 971837B8 */  lhu   $t8, %lo(D_801637B8)($t8) # 0x37b8($t8)
/* 104108 8029AAF8 53000016 */  beql  $t8, $zero, .L8029AB54
/* 10410C 8029AAFC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 104110 8029AB00 84990004 */  lh    $t9, 4($a0)
/* 104114 8029AB04 3C061901 */  lui   $a2, (0x19017016 >> 16) # lui $a2, 0x1901
/* 104118 8029AB08 24090001 */  li    $t1, 1
/* 10411C 8029AB0C 27280001 */  addiu $t0, $t9, 1
/* 104120 8029AB10 A4880004 */  sh    $t0, 4($a0)
/* 104124 8029AB14 84820004 */  lh    $v0, 4($a0)
/* 104128 8029AB18 34C67016 */  ori   $a2, (0x19017016 & 0xFFFF) # ori $a2, $a2, 0x7016
/* 10412C 8029AB1C 24E50024 */  addiu $a1, $a3, 0x24
/* 104130 8029AB20 28410029 */  slti  $at, $v0, 0x29
/* 104134 8029AB24 54200004 */  bnel  $at, $zero, .L8029AB38
/* 104138 8029AB28 24010001 */   li    $at, 1
/* 10413C 8029AB2C A4890004 */  sh    $t1, 4($a0)
/* 104140 8029AB30 84820004 */  lh    $v0, 4($a0)
/* 104144 8029AB34 24010001 */  li    $at, 1
.L8029AB38:
/* 104148 8029AB38 10410003 */  beq   $v0, $at, .L8029AB48
/* 10414C 8029AB3C 24010014 */   li    $at, 20
/* 104150 8029AB40 54410004 */  bnel  $v0, $at, .L8029AB54
/* 104154 8029AB44 8FBF0014 */   lw    $ra, 0x14($sp)
.L8029AB48:
/* 104158 8029AB48 0C03262E */  jal   func_800C98B8
/* 10415C 8029AB4C 24E40018 */   addiu $a0, $a3, 0x18
/* 104160 8029AB50 8FBF0014 */  lw    $ra, 0x14($sp)
.L8029AB54:
/* 104164 8029AB54 27BD0018 */  addiu $sp, $sp, 0x18
/* 104168 8029AB58 03E00008 */  jr    $ra
/* 10416C 8029AB5C 00000000 */   nop   
