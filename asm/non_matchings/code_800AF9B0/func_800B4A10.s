glabel func_800B4A10
/* 0B5610 800B4A10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B5614 800B4A14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B5618 800B4A18 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B561C 800B4A1C 3C068019 */  lui   $a2, %hi(D_8018EB90) # $a2, 0x8019
/* 0B5620 800B4A20 AFB10018 */  sw    $s1, 0x18($sp)
/* 0B5624 800B4A24 AFB00014 */  sw    $s0, 0x14($sp)
/* 0B5628 800B4A28 24C6EB90 */  addiu $a2, %lo(D_8018EB90) # addiu $a2, $a2, -0x1470
/* 0B562C 800B4A2C 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B5630 800B4A30 00002825 */  move  $a1, $zero
/* 0B5634 800B4A34 0C034064 */  jal   osEepromLongRead
/* 0B5638 800B4A38 24070200 */   li    $a3, 512
/* 0B563C 800B4A3C 00008025 */  move  $s0, $zero
/* 0B5640 800B4A40 24110010 */  li    $s1, 16
.L800B4A44:
/* 0B5644 800B4A44 0C02D2A7 */  jal   func_800B4A9C
/* 0B5648 800B4A48 02002025 */   move  $a0, $s0
/* 0B564C 800B4A4C 26100001 */  addiu $s0, $s0, 1
/* 0B5650 800B4A50 1611FFFC */  bne   $s0, $s1, .L800B4A44
/* 0B5654 800B4A54 00000000 */   nop   
/* 0B5658 800B4A58 0C02D32D */  jal   func_800B4CB4
/* 0B565C 800B4A5C 00000000 */   nop   
/* 0B5660 800B4A60 3C0E8019 */  lui   $t6, %hi(D_8018ED14) # $t6, 0x8019
/* 0B5664 800B4A64 91CEED14 */  lbu   $t6, %lo(D_8018ED14)($t6)
/* 0B5668 800B4A68 3C028019 */  lui   $v0, %hi(D_8018EDF2) # $v0, 0x8019
/* 0B566C 800B4A6C 2442EDF2 */  addiu $v0, %lo(D_8018EDF2) # addiu $v0, $v0, -0x120e
/* 0B5670 800B4A70 31CF00FF */  andi  $t7, $t6, 0xff
/* 0B5674 800B4A74 29E10004 */  slti  $at, $t7, 4
/* 0B5678 800B4A78 14200003 */  bnez  $at, .L800B4A88
/* 0B567C 800B4A7C A04E0000 */   sb    $t6, ($v0)
/* 0B5680 800B4A80 24180003 */  li    $t8, 3
/* 0B5684 800B4A84 A0580000 */  sb    $t8, ($v0)
.L800B4A88:
/* 0B5688 800B4A88 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B568C 800B4A8C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B5690 800B4A90 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B5694 800B4A94 03E00008 */  jr    $ra
/* 0B5698 800B4A98 27BD0020 */   addiu $sp, $sp, 0x20
