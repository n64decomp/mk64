glabel func_800C9060
/* 0C9C60 800C9060 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C9C64 800C9064 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0C9C68 800C9068 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0C9C6C 800C906C AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C9C70 800C9070 03A0F025 */  move  $fp, $sp
/* 0C9C74 800C9074 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C9C78 800C9078 AFA40038 */  sw    $a0, 0x38($sp)
/* 0C9C7C 800C907C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0C9C80 800C9080 15C00017 */  bnez  $t6, .L800C90E0
/* 0C9C84 800C9084 308600FF */   andi  $a2, $a0, 0xff
/* 0C9C88 800C9088 3C0F800F */  lui   $t7, %hi(D_800EA0EC) # $t7, 0x800f
/* 0C9C8C 800C908C 25EFA0EC */  addiu $t7, %lo(D_800EA0EC) # addiu $t7, $t7, -0x5f14
/* 0C9C90 800C9090 00CF1821 */  addu  $v1, $a2, $t7
/* 0C9C94 800C9094 90620000 */  lbu   $v0, ($v1)
/* 0C9C98 800C9098 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C9C9C 800C909C 24010002 */  li    $at, 2
/* 0C9CA0 800C90A0 10400004 */  beqz  $v0, .L800C90B4
/* 0C9CA4 800C90A4 24E7A1D4 */   addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C9CA8 800C90A8 1441000D */  bne   $v0, $at, .L800C90E0
/* 0C9CAC 800C90AC 24180001 */   li    $t8, 1
/* 0C9CB0 800C90B0 A0780000 */  sb    $t8, ($v1)
.L800C90B4:
/* 0C9CB4 800C90B4 0006C900 */  sll   $t9, $a2, 4
/* 0C9CB8 800C90B8 0326C823 */  subu  $t9, $t9, $a2
/* 0C9CBC 800C90BC 3C08800F */  lui   $t0, %hi(D_800E9F7C) # $t0, 0x800f
/* 0C9CC0 800C90C0 25089F7C */  addiu $t0, %lo(D_800E9F7C) # addiu $t0, $t0, -0x6084
/* 0C9CC4 800C90C4 0019C880 */  sll   $t9, $t9, 2
/* 0C9CC8 800C90C8 03282821 */  addu  $a1, $t9, $t0
/* 0C9CCC 800C90CC 24A90014 */  addiu $t1, $a1, 0x14
/* 0C9CD0 800C90D0 8FC4003C */  lw    $a0, 0x3c($fp)
/* 0C9CD4 800C90D4 AFA90014 */  sw    $t1, 0x14($sp)
/* 0C9CD8 800C90D8 0C031052 */  jal   play_sound
/* 0C9CDC 800C90DC AFA70010 */   sw    $a3, 0x10($sp)
.L800C90E0:
/* 0C9CE0 800C90E0 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0C9CE4 800C90E4 03C0E825 */  move  $sp, $fp
/* 0C9CE8 800C90E8 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C9CEC 800C90EC 03E00008 */  jr    $ra
/* 0C9CF0 800C90F0 27BD0038 */   addiu $sp, $sp, 0x38
