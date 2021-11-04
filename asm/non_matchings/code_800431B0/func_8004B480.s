glabel func_8004B480
/* 04C080 8004B480 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04C084 8004B484 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04C088 8004B488 8D030000 */  lw    $v1, ($t0)
/* 04C08C 8004B48C 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 04C090 8004B490 3C18FFFD */  lui   $t8, (0xFFFDF2F9 >> 16) # lui $t8, 0xfffd
/* 04C094 8004B494 246E0008 */  addiu $t6, $v1, 8
/* 04C098 8004B498 AD0E0000 */  sw    $t6, ($t0)
/* 04C09C 8004B49C 3718F2F9 */  ori   $t8, (0xFFFDF2F9 & 0xFFFF) # ori $t8, $t8, 0xf2f9
/* 04C0A0 8004B4A0 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 04C0A4 8004B4A4 AC6F0000 */  sw    $t7, ($v1)
/* 04C0A8 8004B4A8 AC780004 */  sw    $t8, 4($v1)
/* 04C0AC 8004B4AC 8D030000 */  lw    $v1, ($t0)
/* 04C0B0 8004B4B0 30AC00FF */  andi  $t4, $a1, 0xff
/* 04C0B4 8004B4B4 000C6C00 */  sll   $t5, $t4, 0x10
/* 04C0B8 8004B4B8 24790008 */  addiu $t9, $v1, 8
/* 04C0BC 8004B4BC AD190000 */  sw    $t9, ($t0)
/* 04C0C0 8004B4C0 30CF00FF */  andi  $t7, $a2, 0xff
/* 04C0C4 8004B4C4 00045E00 */  sll   $t3, $a0, 0x18
/* 04C0C8 8004B4C8 016D7025 */  or    $t6, $t3, $t5
/* 04C0CC 8004B4CC 000FC200 */  sll   $t8, $t7, 8
/* 04C0D0 8004B4D0 3C09FA00 */  lui   $t1, 0xfa00
/* 04C0D4 8004B4D4 01D8C825 */  or    $t9, $t6, $t8
/* 04C0D8 8004B4D8 AC690000 */  sw    $t1, ($v1)
/* 04C0DC 8004B4DC 372900FF */  ori   $t1, $t9, 0xff
/* 04C0E0 8004B4E0 03E00008 */  jr    $ra
/* 04C0E4 8004B4E4 AC690004 */   sw    $t1, 4($v1)

/* 04C0E8 8004B4E8 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04C0EC 8004B4EC 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04C0F0 8004B4F0 8D230000 */  lw    $v1, ($t1)
/* 04C0F4 8004B4F4 3C0FFC62 */  lui   $t7, (0xFC627EC4 >> 16) # lui $t7, 0xfc62
/* 04C0F8 8004B4F8 3C18FFFD */  lui   $t8, (0xFFFDF2F9 >> 16) # lui $t8, 0xfffd
/* 04C0FC 8004B4FC 246E0008 */  addiu $t6, $v1, 8
/* 04C100 8004B500 AD2E0000 */  sw    $t6, ($t1)
/* 04C104 8004B504 3718F2F9 */  ori   $t8, (0xFFFDF2F9 & 0xFFFF) # ori $t8, $t8, 0xf2f9
/* 04C108 8004B508 35EF7EC4 */  ori   $t7, (0xFC627EC4 & 0xFFFF) # ori $t7, $t7, 0x7ec4
/* 04C10C 8004B50C AC6F0000 */  sw    $t7, ($v1)
/* 04C110 8004B510 AC780004 */  sw    $t8, 4($v1)
/* 04C114 8004B514 8D230000 */  lw    $v1, ($t1)
/* 04C118 8004B518 30AD00FF */  andi  $t5, $a1, 0xff
/* 04C11C 8004B51C 000D7400 */  sll   $t6, $t5, 0x10
/* 04C120 8004B520 24790008 */  addiu $t9, $v1, 8
/* 04C124 8004B524 AD390000 */  sw    $t9, ($t1)
/* 04C128 8004B528 30D800FF */  andi  $t8, $a2, 0xff
/* 04C12C 8004B52C 3C0AFA00 */  lui   $t2, 0xfa00
/* 04C130 8004B530 00046600 */  sll   $t4, $a0, 0x18
/* 04C134 8004B534 018E7825 */  or    $t7, $t4, $t6
/* 04C138 8004B538 0018CA00 */  sll   $t9, $t8, 8
/* 04C13C 8004B53C AC6A0000 */  sw    $t2, ($v1)
/* 04C140 8004B540 01F95025 */  or    $t2, $t7, $t9
/* 04C144 8004B544 30EB00FF */  andi  $t3, $a3, 0xff
/* 04C148 8004B548 014B6825 */  or    $t5, $t2, $t3
/* 04C14C 8004B54C 03E00008 */  jr    $ra
/* 04C150 8004B550 AC6D0004 */   sw    $t5, 4($v1)

/* 04C154 8004B554 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 04C158 8004B558 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 04C15C 8004B55C 8CC30000 */  lw    $v1, ($a2)
/* 04C160 8004B560 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* 04C164 8004B564 3C18FF2E */  lui   $t8, (0xFF2E7F3F >> 16) # lui $t8, 0xff2e
/* 04C168 8004B568 246E0008 */  addiu $t6, $v1, 8
/* 04C16C 8004B56C ACCE0000 */  sw    $t6, ($a2)
/* 04C170 8004B570 37187F3F */  ori   $t8, (0xFF2E7F3F & 0xFFFF) # ori $t8, $t8, 0x7f3f
/* 04C174 8004B574 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* 04C178 8004B578 AC6F0000 */  sw    $t7, ($v1)
/* 04C17C 8004B57C AC780004 */  sw    $t8, 4($v1)
/* 04C180 8004B580 8CC30000 */  lw    $v1, ($a2)
/* 04C184 8004B584 308900FF */  andi  $t1, $a0, 0xff
/* 04C188 8004B588 2401FF00 */  li    $at, -256
/* 04C18C 8004B58C 24790008 */  addiu $t9, $v1, 8
/* 04C190 8004B590 ACD90000 */  sw    $t9, ($a2)
/* 04C194 8004B594 01215025 */  or    $t2, $t1, $at
/* 04C198 8004B598 3C08FA00 */  lui   $t0, 0xfa00
/* 04C19C 8004B59C AC680000 */  sw    $t0, ($v1)
/* 04C1A0 8004B5A0 03E00008 */  jr    $ra
/* 04C1A4 8004B5A4 AC6A0004 */   sw    $t2, 4($v1)

/* 04C1A8 8004B5A8 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04C1AC 8004B5AC 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04C1B0 8004B5B0 8D230000 */  lw    $v1, ($t1)
/* 04C1B4 8004B5B4 30AA00FF */  andi  $t2, $a1, 0xff
/* 04C1B8 8004B5B8 000A5C00 */  sll   $t3, $t2, 0x10
/* 04C1BC 8004B5BC 246E0008 */  addiu $t6, $v1, 8
/* 04C1C0 8004B5C0 AD2E0000 */  sw    $t6, ($t1)
/* 04C1C4 8004B5C4 3C0FFA00 */  lui   $t7, 0xfa00
/* 04C1C8 8004B5C8 0004CE00 */  sll   $t9, $a0, 0x18
/* 04C1CC 8004B5CC 30CD00FF */  andi  $t5, $a2, 0xff
/* 04C1D0 8004B5D0 000D7200 */  sll   $t6, $t5, 8
/* 04C1D4 8004B5D4 032B6025 */  or    $t4, $t9, $t3
/* 04C1D8 8004B5D8 AC6F0000 */  sw    $t7, ($v1)
/* 04C1DC 8004B5DC 018E7825 */  or    $t7, $t4, $t6
/* 04C1E0 8004B5E0 30F800FF */  andi  $t8, $a3, 0xff
/* 04C1E4 8004B5E4 01F85025 */  or    $t2, $t7, $t8
/* 04C1E8 8004B5E8 AC6A0004 */  sw    $t2, 4($v1)
/* 04C1EC 8004B5EC 8D230000 */  lw    $v1, ($t1)
/* 04C1F0 8004B5F0 3C0BFC60 */  lui   $t3, (0xFC60FEC1 >> 16) # lui $t3, 0xfc60
/* 04C1F4 8004B5F4 3C0DAAFD */  lui   $t5, (0xAAFDF2F9 >> 16) # lui $t5, 0xaafd
/* 04C1F8 8004B5F8 24790008 */  addiu $t9, $v1, 8
/* 04C1FC 8004B5FC AD390000 */  sw    $t9, ($t1)
/* 04C200 8004B600 35ADF2F9 */  ori   $t5, (0xAAFDF2F9 & 0xFFFF) # ori $t5, $t5, 0xf2f9
/* 04C204 8004B604 356BFEC1 */  ori   $t3, (0xFC60FEC1 & 0xFFFF) # ori $t3, $t3, 0xfec1
/* 04C208 8004B608 AC6B0000 */  sw    $t3, ($v1)
/* 04C20C 8004B60C 03E00008 */  jr    $ra
/* 04C210 8004B610 AC6D0004 */   sw    $t5, 4($v1)
