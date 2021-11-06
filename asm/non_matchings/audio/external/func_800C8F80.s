glabel func_800C8F80
/* 0C9B80 800C8F80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C9B84 800C8F84 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0C9B88 800C8F88 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0C9B8C 800C8F8C AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C9B90 800C8F90 03A0F025 */  move  $fp, $sp
/* 0C9B94 800C8F94 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C9B98 800C8F98 AFA40038 */  sw    $a0, 0x38($sp)
/* 0C9B9C 800C8F9C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0C9BA0 800C8FA0 15C00018 */  bnez  $t6, .L800C9004
/* 0C9BA4 800C8FA4 308600FF */   andi  $a2, $a0, 0xff
/* 0C9BA8 800C8FA8 3C0F800F */  lui   $t7, %hi(D_800EA0EC) # $t7, 0x800f
/* 0C9BAC 800C8FAC 25EFA0EC */  addiu $t7, %lo(D_800EA0EC) # addiu $t7, $t7, -0x5f14
/* 0C9BB0 800C8FB0 00CF1821 */  addu  $v1, $a2, $t7
/* 0C9BB4 800C8FB4 90620000 */  lbu   $v0, ($v1)
/* 0C9BB8 800C8FB8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C9BBC 800C8FBC 24010002 */  li    $at, 2
/* 0C9BC0 800C8FC0 10400004 */  beqz  $v0, .L800C8FD4
/* 0C9BC4 800C8FC4 24E7A1D4 */   addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C9BC8 800C8FC8 1441000E */  bne   $v0, $at, .L800C9004
/* 0C9BCC 800C8FCC 24180001 */   li    $t8, 1
/* 0C9BD0 800C8FD0 A0780000 */  sb    $t8, ($v1)
.L800C8FD4:
/* 0C9BD4 800C8FD4 0006C900 */  sll   $t9, $a2, 4
/* 0C9BD8 800C8FD8 0326C823 */  subu  $t9, $t9, $a2
/* 0C9BDC 800C8FDC 3C08800F */  lui   $t0, %hi(D_800E9F7C) # $t0, 0x800f
/* 0C9BE0 800C8FE0 3C09800F */  lui   $t1, %hi(D_800EA1DC) # $t1, 0x800f
/* 0C9BE4 800C8FE4 2529A1DC */  addiu $t1, %lo(D_800EA1DC) # addiu $t1, $t1, -0x5e24
/* 0C9BE8 800C8FE8 25089F7C */  addiu $t0, %lo(D_800E9F7C) # addiu $t0, $t0, -0x6084
/* 0C9BEC 800C8FEC 0019C880 */  sll   $t9, $t9, 2
/* 0C9BF0 800C8FF0 8FC4003C */  lw    $a0, 0x3c($fp)
/* 0C9BF4 800C8FF4 AFA90014 */  sw    $t1, 0x14($sp)
/* 0C9BF8 800C8FF8 AFA70010 */  sw    $a3, 0x10($sp)
/* 0C9BFC 800C8FFC 0C031052 */  jal   play_sound
/* 0C9C00 800C9000 03282821 */   addu  $a1, $t9, $t0
.L800C9004:
/* 0C9C04 800C9004 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0C9C08 800C9008 03C0E825 */  move  $sp, $fp
/* 0C9C0C 800C900C 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C9C10 800C9010 03E00008 */  jr    $ra
/* 0C9C14 800C9014 27BD0038 */   addiu $sp, $sp, 0x38
