glabel func_8008F104
/* 08FD04 8008F104 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08FD08 8008F108 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08FD0C 8008F10C 00A07025 */  move  $t6, $a1
/* 08FD10 8008F110 000E2E00 */  sll   $a1, $t6, 0x18
/* 08FD14 8008F114 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08FD18 8008F118 00057E03 */  sra   $t7, $a1, 0x18
/* 08FD1C 8008F11C 01E02825 */  move  $a1, $t7
/* 08FD20 8008F120 A3AE001F */  sb    $t6, 0x1f($sp)
/* 08FD24 8008F124 0C0230D5 */  jal   func_8008C354
/* 08FD28 8008F128 AFA40018 */   sw    $a0, 0x18($sp)
/* 08FD2C 8008F12C 8FA60018 */  lw    $a2, 0x18($sp)
/* 08FD30 8008F130 83A7001F */  lb    $a3, 0x1f($sp)
/* 08FD34 8008F134 24190002 */  li    $t9, 2
/* 08FD38 8008F138 8CC800BC */  lw    $t0, 0xbc($a2)
/* 08FD3C 8008F13C 84D8002E */  lh    $t8, 0x2e($a2)
/* 08FD40 8008F140 3C018019 */  lui   $at, %hi(D_8018D920) # 0x8019
/* 08FD44 8008F144 00075840 */  sll   $t3, $a3, 1
/* 08FD48 8008F148 35094000 */  ori   $t1, $t0, 0x4000
/* 08FD4C 8008F14C 002B0821 */  addu  $at, $at, $t3
/* 08FD50 8008F150 240A8000 */  li    $t2, -32768
/* 08FD54 8008F154 A4D900B2 */  sh    $t9, 0xb2($a2)
/* 08FD58 8008F158 A4C000C0 */  sh    $zero, 0xc0($a2)
/* 08FD5C 8008F15C ACC0007C */  sw    $zero, 0x7c($a2)
/* 08FD60 8008F160 ACC900BC */  sw    $t1, 0xbc($a2)
/* 08FD64 8008F164 A4C00078 */  sh    $zero, 0x78($a2)
/* 08FD68 8008F168 A4D800AE */  sh    $t8, 0xae($a2)
/* 08FD6C 8008F16C A42AD920 */  sh    $t2, %lo(D_8018D920)($at) # -0x26e0($at)
/* 08FD70 8008F170 94C20000 */  lhu   $v0, ($a2)
/* 08FD74 8008F174 24014000 */  li    $at, 16384
/* 08FD78 8008F178 304C4000 */  andi  $t4, $v0, 0x4000
/* 08FD7C 8008F17C 1581000A */  bne   $t4, $at, .L8008F1A8
/* 08FD80 8008F180 304D0100 */   andi  $t5, $v0, 0x100
/* 08FD84 8008F184 24010100 */  li    $at, 256
/* 08FD88 8008F188 11A10007 */  beq   $t5, $at, .L8008F1A8
/* 08FD8C 8008F18C 30E400FF */   andi  $a0, $a3, 0xff
/* 08FD90 8008F190 94C50254 */  lhu   $a1, 0x254($a2)
/* 08FD94 8008F194 3C012900 */  lui   $at, (0x29008003 >> 16) # lui $at, 0x2900
/* 08FD98 8008F198 34218003 */  ori   $at, (0x29008003 & 0xFFFF) # ori $at, $at, 0x8003
/* 08FD9C 8008F19C 00057100 */  sll   $t6, $a1, 4
/* 08FDA0 8008F1A0 0C03243D */  jal   func_800C90F4
/* 08FDA4 8008F1A4 01C12821 */   addu  $a1, $t6, $at
.L8008F1A8:
/* 08FDA8 8008F1A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08FDAC 8008F1AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 08FDB0 8008F1B0 03E00008 */  jr    $ra
/* 08FDB4 8008F1B4 00000000 */   nop   
