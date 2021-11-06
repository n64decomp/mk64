glabel func_800C3478
/* 0C4078 800C3478 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C407C 800C347C AFB20030 */  sw    $s2, 0x30($sp)
/* 0C4080 800C3480 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0C4084 800C3484 3C11800F */  lui   $s1, %hi(D_800EA1E8) # $s1, 0x800f
/* 0C4088 800C3488 3C12800F */  lui   $s2, %hi(D_800EA1E4) # $s2, 0x800f
/* 0C408C 800C348C 2652A1E4 */  addiu $s2, %lo(D_800EA1E4) # addiu $s2, $s2, -0x5e1c
/* 0C4090 800C3490 2631A1E8 */  addiu $s1, %lo(D_800EA1E8) # addiu $s1, $s1, -0x5e18
/* 0C4094 800C3494 AFB00028 */  sw    $s0, 0x28($sp)
/* 0C4098 800C3498 92300000 */  lbu   $s0, ($s1)
/* 0C409C 800C349C 924E0000 */  lbu   $t6, ($s2)
/* 0C40A0 800C34A0 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0C40A4 800C34A4 03A0F025 */  move  $fp, $sp
/* 0C40A8 800C34A8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0C40AC 800C34AC 120E000D */  beq   $s0, $t6, .L800C34E4
/* 0C40B0 800C34B0 AFB30034 */   sw    $s3, 0x34($sp)
/* 0C40B4 800C34B4 3C138019 */  lui   $s3, %hi(D_80192CD0) # $s3, 0x8019
/* 0C40B8 800C34B8 26732CD0 */  addiu $s3, %lo(D_80192CD0) # addiu $s3, $s3, 0x2cd0
/* 0C40BC 800C34BC 00107880 */  sll   $t7, $s0, 2
.L800C34C0:
/* 0C40C0 800C34C0 026FC021 */  addu  $t8, $s3, $t7
/* 0C40C4 800C34C4 8F040000 */  lw    $a0, ($t8)
/* 0C40C8 800C34C8 26190001 */  addiu $t9, $s0, 1
/* 0C40CC 800C34CC 0C030A8B */  jal   func_800C2A2C
/* 0C40D0 800C34D0 A2390000 */   sb    $t9, ($s1)
/* 0C40D4 800C34D4 92300000 */  lbu   $s0, ($s1)
/* 0C40D8 800C34D8 92480000 */  lbu   $t0, ($s2)
/* 0C40DC 800C34DC 5608FFF8 */  bnel  $s0, $t0, .L800C34C0
/* 0C40E0 800C34E0 00107880 */   sll   $t7, $s0, 2
.L800C34E4:
/* 0C40E4 800C34E4 8FDF003C */  lw    $ra, 0x3c($fp)
/* 0C40E8 800C34E8 03C0E825 */  move  $sp, $fp
/* 0C40EC 800C34EC 8FD00028 */  lw    $s0, 0x28($fp)
/* 0C40F0 800C34F0 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0C40F4 800C34F4 8FD20030 */  lw    $s2, 0x30($fp)
/* 0C40F8 800C34F8 8FD30034 */  lw    $s3, 0x34($fp)
/* 0C40FC 800C34FC 8FDE0038 */  lw    $fp, 0x38($fp)
/* 0C4100 800C3500 03E00008 */  jr    $ra
/* 0C4104 800C3504 27BD0040 */   addiu $sp, $sp, 0x40
