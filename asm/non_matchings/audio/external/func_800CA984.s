glabel func_800CA984
/* 0CB584 800CA984 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0CB588 800CA988 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CB58C 800CA98C 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CB590 800CA990 AFBE0050 */  sw    $fp, 0x50($sp)
/* 0CB594 800CA994 AFB50044 */  sw    $s5, 0x44($sp)
/* 0CB598 800CA998 309500FF */  andi  $s5, $a0, 0xff
/* 0CB59C 800CA99C 03A0F025 */  move  $fp, $sp
/* 0CB5A0 800CA9A0 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0CB5A4 800CA9A4 AFB7004C */  sw    $s7, 0x4c($sp)
/* 0CB5A8 800CA9A8 AFB60048 */  sw    $s6, 0x48($sp)
/* 0CB5AC 800CA9AC AFB40040 */  sw    $s4, 0x40($sp)
/* 0CB5B0 800CA9B0 AFB3003C */  sw    $s3, 0x3c($sp)
/* 0CB5B4 800CA9B4 AFB20038 */  sw    $s2, 0x38($sp)
/* 0CB5B8 800CA9B8 AFB10034 */  sw    $s1, 0x34($sp)
/* 0CB5BC 800CA9BC AFB00030 */  sw    $s0, 0x30($sp)
/* 0CB5C0 800CA9C0 15C00035 */  bnez  $t6, .L800CAA98
/* 0CB5C4 800CA9C4 AFA40058 */   sw    $a0, 0x58($sp)
/* 0CB5C8 800CA9C8 3C0F800F */  lui   $t7, %hi(D_800EA0F0) # $t7, 0x800f
/* 0CB5CC 800CA9CC 91EFA0F0 */  lbu   $t7, %lo(D_800EA0F0)($t7)
/* 0CB5D0 800CA9D0 3C18800F */  lui   $t8, %hi(D_800EA1C0) # $t8, 0x800f
/* 0CB5D4 800CA9D4 55E00031 */  bnel  $t7, $zero, .L800CAA9C
/* 0CB5D8 800CA9D8 8FDF0054 */   lw    $ra, 0x54($fp)
/* 0CB5DC 800CA9DC 9318A1C0 */  lbu   $t8, %lo(D_800EA1C0)($t8)
/* 0CB5E0 800CA9E0 001540C0 */  sll   $t0, $s5, 3
/* 0CB5E4 800CA9E4 01154023 */  subu  $t0, $t0, $s5
/* 0CB5E8 800CA9E8 27190001 */  addiu $t9, $t8, 1
/* 0CB5EC 800CA9EC 1B20002A */  blez  $t9, .L800CAA98
/* 0CB5F0 800CA9F0 00008025 */   move  $s0, $zero
/* 0CB5F4 800CA9F4 00084100 */  sll   $t0, $t0, 4
/* 0CB5F8 800CA9F8 01154023 */  subu  $t0, $t0, $s5
/* 0CB5FC 800CA9FC 00084080 */  sll   $t0, $t0, 2
/* 0CB600 800CAA00 01154023 */  subu  $t0, $t0, $s5
/* 0CB604 800CAA04 3C09800F */  lui   $t1, %hi(gPlayers) # $t1, 0x800f
/* 0CB608 800CAA08 25296990 */  addiu $t1, %lo(gPlayers) # addiu $t1, $t1, 0x6990
/* 0CB60C 800CAA0C 000840C0 */  sll   $t0, $t0, 3
/* 0CB610 800CAA10 01091021 */  addu  $v0, $t0, $t1
/* 0CB614 800CAA14 3C14800F */  lui   $s4, %hi(D_800EA1DC) # $s4, 0x800f
/* 0CB618 800CAA18 3C13800F */  lui   $s3, %hi(D_800EA1C8) # $s3, 0x800f
/* 0CB61C 800CAA1C 3C12800F */  lui   $s2, %hi(D_800EA1D4) # $s2, 0x800f
/* 0CB620 800CAA20 3C113102 */  lui   $s1, (0x31029008 >> 16) # lui $s1, 0x3102
/* 0CB624 800CAA24 36319008 */  ori   $s1, (0x31029008 & 0xFFFF) # ori $s1, $s1, 0x9008
/* 0CB628 800CAA28 2652A1D4 */  addiu $s2, %lo(D_800EA1D4) # addiu $s2, $s2, -0x5e2c
/* 0CB62C 800CAA2C 2673A1C8 */  addiu $s3, %lo(D_800EA1C8) # addiu $s3, $s3, -0x5e38
/* 0CB630 800CAA30 2694A1DC */  addiu $s4, %lo(D_800EA1DC) # addiu $s4, $s4, -0x5e24
/* 0CB634 800CAA34 24560014 */  addiu $s6, $v0, 0x14
/* 0CB638 800CAA38 24570098 */  addiu $s7, $v0, 0x98
.L800CAA3C:
/* 0CB63C 800CAA3C 32A400FF */  andi  $a0, $s5, 0xff
/* 0CB640 800CAA40 02C02825 */  move  $a1, $s6
/* 0CB644 800CAA44 02603025 */  move  $a2, $s3
/* 0CB648 800CAA48 02E03825 */  move  $a3, $s7
/* 0CB64C 800CAA4C AFB00010 */  sw    $s0, 0x10($sp)
/* 0CB650 800CAA50 0C030722 */  jal   func_800C1C88
/* 0CB654 800CAA54 AFB10014 */   sw    $s1, 0x14($sp)
/* 0CB658 800CAA58 10400007 */  beqz  $v0, .L800CAA78
/* 0CB65C 800CAA5C 02202025 */   move  $a0, $s1
/* 0CB660 800CAA60 24450018 */  addiu $a1, $v0, 0x18
/* 0CB664 800CAA64 320600FF */  andi  $a2, $s0, 0xff
/* 0CB668 800CAA68 02403825 */  move  $a3, $s2
/* 0CB66C 800CAA6C AFB20010 */  sw    $s2, 0x10($sp)
/* 0CB670 800CAA70 0C031052 */  jal   play_sound
/* 0CB674 800CAA74 AFB40014 */   sw    $s4, 0x14($sp)
.L800CAA78:
/* 0CB678 800CAA78 3C0B800F */  lui   $t3, %hi(D_800EA1C0) # $t3, 0x800f
/* 0CB67C 800CAA7C 916BA1C0 */  lbu   $t3, %lo(D_800EA1C0)($t3)
/* 0CB680 800CAA80 26100001 */  addiu $s0, $s0, 1
/* 0CB684 800CAA84 320A00FF */  andi  $t2, $s0, 0xff
/* 0CB688 800CAA88 256C0001 */  addiu $t4, $t3, 1
/* 0CB68C 800CAA8C 014C082A */  slt   $at, $t2, $t4
/* 0CB690 800CAA90 1420FFEA */  bnez  $at, .L800CAA3C
/* 0CB694 800CAA94 01408025 */   move  $s0, $t2
.L800CAA98:
/* 0CB698 800CAA98 8FDF0054 */  lw    $ra, 0x54($fp)
.L800CAA9C:
/* 0CB69C 800CAA9C 03C0E825 */  move  $sp, $fp
/* 0CB6A0 800CAAA0 8FD00030 */  lw    $s0, 0x30($fp)
/* 0CB6A4 800CAAA4 8FD10034 */  lw    $s1, 0x34($fp)
/* 0CB6A8 800CAAA8 8FD20038 */  lw    $s2, 0x38($fp)
/* 0CB6AC 800CAAAC 8FD3003C */  lw    $s3, 0x3c($fp)
/* 0CB6B0 800CAAB0 8FD40040 */  lw    $s4, 0x40($fp)
/* 0CB6B4 800CAAB4 8FD50044 */  lw    $s5, 0x44($fp)
/* 0CB6B8 800CAAB8 8FD60048 */  lw    $s6, 0x48($fp)
/* 0CB6BC 800CAABC 8FD7004C */  lw    $s7, 0x4c($fp)
/* 0CB6C0 800CAAC0 8FDE0050 */  lw    $fp, 0x50($fp)
/* 0CB6C4 800CAAC4 03E00008 */  jr    $ra
/* 0CB6C8 800CAAC8 27BD0058 */   addiu $sp, $sp, 0x58
