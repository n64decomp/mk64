glabel func_800519D4
/* 0525D4 800519D4 000470C0 */  sll   $t6, $a0, 3
/* 0525D8 800519D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0525DC 800519DC 01C47023 */  subu  $t6, $t6, $a0
/* 0525E0 800519E0 3C0F8016 */  lui   $t7, %hi(gObjectList) # $t7, 0x8016
/* 0525E4 800519E4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0525E8 800519E8 25EF5C18 */  addiu $t7, %lo(gObjectList) # addiu $t7, $t7, 0x5c18
/* 0525EC 800519EC 000E7140 */  sll   $t6, $t6, 5
/* 0525F0 800519F0 01CF8021 */  addu  $s0, $t6, $t7
/* 0525F4 800519F4 8E180054 */  lw    $t8, 0x54($s0)
/* 0525F8 800519F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0525FC 800519FC AFA50024 */  sw    $a1, 0x24($sp)
/* 052600 80051A00 33190010 */  andi  $t9, $t8, 0x10
/* 052604 80051A04 13200028 */  beqz  $t9, .L80051AA8
/* 052608 80051A08 AFA60028 */   sw    $a2, 0x28($sp)
/* 05260C 80051A0C 3C038019 */  lui   $v1, %hi(D_8018D228) # $v1, 0x8019
/* 052610 80051A10 2463D228 */  addiu $v1, %lo(D_8018D228) # addiu $v1, $v1, -0x2dd8
/* 052614 80051A14 90680000 */  lbu   $t0, ($v1)
/* 052618 80051A18 920200D5 */  lbu   $v0, 0xd5($s0)
/* 05261C 80051A1C 51020007 */  beql  $t0, $v0, .L80051A3C
/* 052620 80051A20 240400FF */   li    $a0, 255
/* 052624 80051A24 A0620000 */  sb    $v0, ($v1)
/* 052628 80051A28 8E040064 */  lw    $a0, 0x64($s0)
/* 05262C 80051A2C 920500D9 */  lbu   $a1, 0xd9($s0)
/* 052630 80051A30 0C011368 */  jal   func_80044DA0
/* 052634 80051A34 920600DA */   lbu   $a2, 0xda($s0)
/* 052638 80051A38 240400FF */  li    $a0, 255
.L80051A3C:
/* 05263C 80051A3C 240500FF */  li    $a1, 255
/* 052640 80051A40 240600FF */  li    $a2, 255
/* 052644 80051A44 0C012C4E */  jal   func_8004B138
/* 052648 80051A48 860700A0 */   lh    $a3, 0xa0($s0)
/* 05264C 80051A4C 87A40026 */  lh    $a0, 0x26($sp)
/* 052650 80051A50 87A5002A */  lh    $a1, 0x2a($sp)
/* 052654 80051A54 00003025 */  move  $a2, $zero
/* 052658 80051A58 0C0108CC */  jal   func_80042330
/* 05265C 80051A5C 8E070000 */   lw    $a3, ($s0)
/* 052660 80051A60 3C058015 */  lui   $a1, %hi(gDisplayListHead) # $a1, 0x8015
/* 052664 80051A64 24A50298 */  addiu $a1, %lo(gDisplayListHead) # addiu $a1, $a1, 0x298
/* 052668 80051A68 8CA20000 */  lw    $v0, ($a1)
/* 05266C 80051A6C 3C0A0400 */  lui   $t2, (0x0400103F >> 16) # lui $t2, 0x400
/* 052670 80051A70 354A103F */  ori   $t2, (0x0400103F & 0xFFFF) # ori $t2, $t2, 0x103f
/* 052674 80051A74 24490008 */  addiu $t1, $v0, 8
/* 052678 80051A78 ACA90000 */  sw    $t1, ($a1)
/* 05267C 80051A7C AC4A0000 */  sw    $t2, ($v0)
/* 052680 80051A80 8E0B0074 */  lw    $t3, 0x74($s0)
/* 052684 80051A84 3C0E0D00 */  lui   $t6, %hi(common_rectangle_display) # $t6, 0xd00
/* 052688 80051A88 25CE6940 */  addiu $t6, %lo(common_rectangle_display) # addiu $t6, $t6, 0x6940
/* 05268C 80051A8C AC4B0004 */  sw    $t3, 4($v0)
/* 052690 80051A90 8CA20000 */  lw    $v0, ($a1)
/* 052694 80051A94 3C0D0600 */  lui   $t5, 0x600
/* 052698 80051A98 244C0008 */  addiu $t4, $v0, 8
/* 05269C 80051A9C ACAC0000 */  sw    $t4, ($a1)
/* 0526A0 80051AA0 AC4E0004 */  sw    $t6, 4($v0)
/* 0526A4 80051AA4 AC4D0000 */  sw    $t5, ($v0)
.L80051AA8:
/* 0526A8 80051AA8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0526AC 80051AAC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0526B0 80051AB0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0526B4 80051AB4 03E00008 */  jr    $ra
/* 0526B8 80051AB8 00000000 */   nop   
