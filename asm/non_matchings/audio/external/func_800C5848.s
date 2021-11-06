glabel func_800C5848
/* 0C6448 800C5848 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C644C 800C584C AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C6450 800C5850 AFB00028 */  sw    $s0, 0x28($sp)
/* 0C6454 800C5854 3C10800F */  lui   $s0, %hi(D_800EA1BC) # $s0, 0x800f
/* 0C6458 800C5858 3C11800F */  lui   $s1, %hi(D_800EA1B8) # $s1, 0x800f
/* 0C645C 800C585C 2631A1B8 */  addiu $s1, %lo(D_800EA1B8) # addiu $s1, $s1, -0x5e48
/* 0C6460 800C5860 2610A1BC */  addiu $s0, %lo(D_800EA1BC) # addiu $s0, $s0, -0x5e44
/* 0C6464 800C5864 920E0000 */  lbu   $t6, ($s0)
/* 0C6468 800C5868 922F0000 */  lbu   $t7, ($s1)
/* 0C646C 800C586C AFBE0030 */  sw    $fp, 0x30($sp)
/* 0C6470 800C5870 03A0F025 */  move  $fp, $sp
/* 0C6474 800C5874 11CF0009 */  beq   $t6, $t7, .L800C589C
/* 0C6478 800C5878 AFBF0034 */   sw    $ra, 0x34($sp)
.L800C587C:
/* 0C647C 800C587C 0C0310E6 */  jal   func_800C4398
/* 0C6480 800C5880 00000000 */   nop   
/* 0C6484 800C5884 92180000 */  lbu   $t8, ($s0)
/* 0C6488 800C5888 92290000 */  lbu   $t1, ($s1)
/* 0C648C 800C588C 27190001 */  addiu $t9, $t8, 1
/* 0C6490 800C5890 332800FF */  andi  $t0, $t9, 0xff
/* 0C6494 800C5894 1509FFF9 */  bne   $t0, $t1, .L800C587C
/* 0C6498 800C5898 A2190000 */   sb    $t9, ($s0)
.L800C589C:
/* 0C649C 800C589C 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0C64A0 800C58A0 03C0E825 */  move  $sp, $fp
/* 0C64A4 800C58A4 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C64A8 800C58A8 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C64AC 800C58AC 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0C64B0 800C58B0 03E00008 */  jr    $ra
/* 0C64B4 800C58B4 27BD0038 */   addiu $sp, $sp, 0x38
