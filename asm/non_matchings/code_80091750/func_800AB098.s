glabel func_800AB098
/* 0ABC98 800AB098 8C8E0004 */  lw    $t6, 4($a0)
/* 0ABC9C 800AB09C 2DC10005 */  sltiu $at, $t6, 5
/* 0ABCA0 800AB0A0 1020002E */  beqz  $at, .L800AB15C
/* 0ABCA4 800AB0A4 000E7080 */   sll   $t6, $t6, 2
/* 0ABCA8 800AB0A8 3C01800F */  lui   $at, %hi(jpt_800F2608)
/* 0ABCAC 800AB0AC 002E0821 */  addu  $at, $at, $t6
/* 0ABCB0 800AB0B0 8C2E2608 */  lw    $t6, %lo(jpt_800F2608)($at)
/* 0ABCB4 800AB0B4 01C00008 */  jr    $t6
/* 0ABCB8 800AB0B8 00000000 */   nop   
glabel L800AB0BC
/* 0ABCBC 800AB0BC 3C188019 */  lui   $t8, %hi(gCupSelection) # $t8, 0x8019
/* 0ABCC0 800AB0C0 8318EE09 */  lb    $t8, %lo(gCupSelection)($t8)
/* 0ABCC4 800AB0C4 8C8F0000 */  lw    $t7, ($a0)
/* 0ABCC8 800AB0C8 24080002 */  li    $t0, 2
/* 0ABCCC 800AB0CC 27190053 */  addiu $t9, $t8, 0x53
/* 0ABCD0 800AB0D0 15F90003 */  bne   $t7, $t9, .L800AB0E0
/* 0ABCD4 800AB0D4 24090001 */   li    $t1, 1
/* 0ABCD8 800AB0D8 03E00008 */  jr    $ra
/* 0ABCDC 800AB0DC AC880004 */   sw    $t0, 4($a0)

.L800AB0E0:
/* 0ABCE0 800AB0E0 03E00008 */  jr    $ra
/* 0ABCE4 800AB0E4 AC890004 */   sw    $t1, 4($a0)

glabel L800AB0E8
/* 0ABCE8 800AB0E8 3C0B8019 */  lui   $t3, %hi(gCupSelection) # $t3, 0x8019
/* 0ABCEC 800AB0EC 816BEE09 */  lb    $t3, %lo(gCupSelection)($t3)
/* 0ABCF0 800AB0F0 8C8A0000 */  lw    $t2, ($a0)
/* 0ABCF4 800AB0F4 240D0002 */  li    $t5, 2
/* 0ABCF8 800AB0F8 256C0053 */  addiu $t4, $t3, 0x53
/* 0ABCFC 800AB0FC 154C0004 */  bne   $t2, $t4, .L800AB110
/* 0ABD00 800AB100 240E0001 */   li    $t6, 1
/* 0ABD04 800AB104 AC8D0004 */  sw    $t5, 4($a0)
/* 0ABD08 800AB108 03E00008 */  jr    $ra
/* 0ABD0C 800AB10C AC80001C */   sw    $zero, 0x1c($a0)

.L800AB110:
/* 0ABD10 800AB110 AC8E0004 */  sw    $t6, 4($a0)
glabel L800AB114
/* 0ABD14 800AB114 8C82001C */  lw    $v0, 0x1c($a0)
/* 0ABD18 800AB118 28410020 */  slti  $at, $v0, 0x20
/* 0ABD1C 800AB11C 1020000F */  beqz  $at, .L800AB15C
/* 0ABD20 800AB120 24580002 */   addiu $t8, $v0, 2
/* 0ABD24 800AB124 2B010020 */  slti  $at, $t8, 0x20
/* 0ABD28 800AB128 1420000C */  bnez  $at, .L800AB15C
/* 0ABD2C 800AB12C AC98001C */   sw    $t8, 0x1c($a0)
/* 0ABD30 800AB130 24190020 */  li    $t9, 32
/* 0ABD34 800AB134 03E00008 */  jr    $ra
/* 0ABD38 800AB138 AC99001C */   sw    $t9, 0x1c($a0)

glabel L800AB13C
/* 0ABD3C 800AB13C 3C098019 */  lui   $t1, %hi(gCupSelection) # $t1, 0x8019
/* 0ABD40 800AB140 8129EE09 */  lb    $t1, %lo(gCupSelection)($t1)
/* 0ABD44 800AB144 8C880000 */  lw    $t0, ($a0)
/* 0ABD48 800AB148 240A0002 */  li    $t2, 2
/* 0ABD4C 800AB14C 252B0053 */  addiu $t3, $t1, 0x53
/* 0ABD50 800AB150 150B0002 */  bne   $t0, $t3, .L800AB15C
/* 0ABD54 800AB154 00000000 */   nop   
/* 0ABD58 800AB158 AC8A0004 */  sw    $t2, 4($a0)
.L800AB15C:
glabel L800AB15C
/* 0ABD5C 800AB15C 03E00008 */  jr    $ra
/* 0ABD60 800AB160 00000000 */   nop   
