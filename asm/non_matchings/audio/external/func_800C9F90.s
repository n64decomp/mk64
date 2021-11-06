glabel func_800C9F90
/* 0CAB90 800C9F90 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CAB94 800C9F94 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CAB98 800C9F98 308E00FF */  andi  $t6, $a0, 0xff
/* 0CAB9C 800C9F9C 03A0F025 */  move  $fp, $sp
/* 0CABA0 800C9FA0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CABA4 800C9FA4 11C0000B */  beqz  $t6, .L800C9FD4
/* 0CABA8 800C9FA8 AFA40030 */   sw    $a0, 0x30($sp)
/* 0CABAC 800C9FAC 3C044900 */  lui   $a0, (0x49008005 >> 16) # lui $a0, 0x4900
/* 0CABB0 800C9FB0 0C032384 */  jal   play_sound2
/* 0CABB4 800C9FB4 34848005 */   ori   $a0, (0x49008005 & 0xFFFF) # ori $a0, $a0, 0x8005
/* 0CABB8 800C9FB8 3C04F100 */  lui   $a0, 0xf100
/* 0CABBC 800C9FBC 0C032EEE */  jal   func_800CBBB8
/* 0CABC0 800C9FC0 00002825 */   move  $a1, $zero
/* 0CABC4 800C9FC4 240F0001 */  li    $t7, 1
/* 0CABC8 800C9FC8 3C01800F */  lui   $at, %hi(D_800EA16C) # $at, 0x800f
/* 0CABCC 800C9FCC 10000009 */  b     .L800C9FF4
/* 0CABD0 800C9FD0 A02FA16C */   sb    $t7, %lo(D_800EA16C)($at)
.L800C9FD4:
/* 0CABD4 800C9FD4 3C044900 */  lui   $a0, (0x49008006 >> 16) # lui $a0, 0x4900
/* 0CABD8 800C9FD8 0C032384 */  jal   play_sound2
/* 0CABDC 800C9FDC 34848006 */   ori   $a0, (0x49008006 & 0xFFFF) # ori $a0, $a0, 0x8006
/* 0CABE0 800C9FE0 3C04F200 */  lui   $a0, 0xf200
/* 0CABE4 800C9FE4 0C032EEE */  jal   func_800CBBB8
/* 0CABE8 800C9FE8 00002825 */   move  $a1, $zero
/* 0CABEC 800C9FEC 3C01800F */  lui   $at, %hi(D_800EA16C) # $at, 0x800f
/* 0CABF0 800C9FF0 A020A16C */  sb    $zero, %lo(D_800EA16C)($at)
.L800C9FF4:
/* 0CABF4 800C9FF4 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CABF8 800C9FF8 03C0E825 */  move  $sp, $fp
/* 0CABFC 800C9FFC 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CAC00 800CA000 03E00008 */  jr    $ra
/* 0CAC04 800CA004 27BD0030 */   addiu $sp, $sp, 0x30
