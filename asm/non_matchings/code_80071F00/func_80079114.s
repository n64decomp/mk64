glabel func_80079114
/* 079D14 80079114 240800E0 */  li    $t0, 224
/* 079D18 80079118 00880019 */  multu $a0, $t0
/* 079D1C 8007911C 3C078016 */  lui   $a3, %hi(D_80165C18) # $a3, 0x8016
/* 079D20 80079120 24E75C18 */  addiu $a3, %lo(D_80165C18) # addiu $a3, $a3, 0x5c18
/* 079D24 80079124 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 079D28 80079128 AFBF0014 */  sw    $ra, 0x14($sp)
/* 079D2C 8007912C 00007012 */  mflo  $t6
/* 079D30 80079130 00EE1821 */  addu  $v1, $a3, $t6
/* 079D34 80079134 846F00A6 */  lh    $t7, 0xa6($v1)
/* 079D38 80079138 29E10002 */  slti  $at, $t7, 2
/* 079D3C 8007913C 54200029 */  bnel  $at, $zero, .L800791E4
/* 079D40 80079140 8FBF0014 */   lw    $ra, 0x14($sp)
/* 079D44 80079144 907800D8 */  lbu   $t8, 0xd8($v1)
/* 079D48 80079148 24020001 */  li    $v0, 1
/* 079D4C 8007914C 14580011 */  bne   $v0, $t8, .L80079194
/* 079D50 80079150 00000000 */   nop   
/* 079D54 80079154 14A00005 */  bnez  $a1, .L8007916C
/* 079D58 80079158 3C058019 */   lui   $a1, %hi(D_8018C028) # $a1, 0x8019
/* 079D5C 8007915C 0C01D225 */  jal   func_80074894
/* 079D60 80079160 8CA5C028 */   lw    $a1, %lo(D_8018C028)($a1)
/* 079D64 80079164 1000001F */  b     .L800791E4
/* 079D68 80079168 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007916C:
/* 079D6C 8007916C 3C048018 */  lui   $a0, %hi(D_80183DB8) # $a0, 0x8018
/* 079D70 80079170 8C843DB8 */  lw    $a0, %lo(D_80183DB8)($a0)
/* 079D74 80079174 00880019 */  multu $a0, $t0
/* 079D78 80079178 0000C812 */  mflo  $t9
/* 079D7C 8007917C 00F91021 */  addu  $v0, $a3, $t9
/* 079D80 80079180 8C490060 */  lw    $t1, 0x60($v0)
/* 079D84 80079184 AC690060 */  sw    $t1, 0x60($v1)
/* 079D88 80079188 8C4A0064 */  lw    $t2, 0x64($v0)
/* 079D8C 8007918C 10000014 */  b     .L800791E0
/* 079D90 80079190 AC6A0064 */   sw    $t2, 0x64($v1)
.L80079194:
/* 079D94 80079194 10C00008 */  beqz  $a2, .L800791B8
/* 079D98 80079198 3C058019 */   lui   $a1, %hi(D_8018C028) # 0x8019
/* 079D9C 8007919C 10C2000A */  beq   $a2, $v0, .L800791C8
/* 079DA0 800791A0 3C058019 */   lui   $a1, %hi(D_8018C028) # 0x8019
/* 079DA4 800791A4 24010002 */  li    $at, 2
/* 079DA8 800791A8 10C1000B */  beq   $a2, $at, .L800791D8
/* 079DAC 800791AC 3C058019 */   lui   $a1, %hi(D_8018C028) # $a1, 0x8019
/* 079DB0 800791B0 1000000C */  b     .L800791E4
/* 079DB4 800791B4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800791B8:
/* 079DB8 800791B8 0C01D23D */  jal   func_800748F4
/* 079DBC 800791BC 8CA5C028 */   lw    $a1, %lo(D_8018C028)($a1)
/* 079DC0 800791C0 10000008 */  b     .L800791E4
/* 079DC4 800791C4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800791C8:
/* 079DC8 800791C8 0C01D231 */  jal   func_800748C4
/* 079DCC 800791CC 8CA5C028 */   lw    $a1, %lo(D_8018C028)($a1) # -0x3fd8($a1)
/* 079DD0 800791D0 10000004 */  b     .L800791E4
/* 079DD4 800791D4 8FBF0014 */   lw    $ra, 0x14($sp)
.L800791D8:
/* 079DD8 800791D8 0C01D225 */  jal   func_80074894
/* 079DDC 800791DC 8CA5C028 */   lw    $a1, %lo(D_8018C028)($a1) # -0x3fd8($a1)
.L800791E0:
/* 079DE0 800791E0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800791E4:
/* 079DE4 800791E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 079DE8 800791E8 03E00008 */  jr    $ra
/* 079DEC 800791EC 00000000 */   nop   
