
glabel func_8008A610
/* 08B210 8008A610 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 08B214 8008A614 AFB40024 */  sw    $s4, 0x24($sp)
/* 08B218 8008A618 3C140004 */  lui   $s4, 4
/* 08B21C 8008A61C AFBF002C */  sw    $ra, 0x2c($sp)
/* 08B220 8008A620 AFB2001C */  sw    $s2, 0x1c($sp)
/* 08B224 8008A624 00809025 */  move  $s2, $a0
/* 08B228 8008A628 AFB50028 */  sw    $s5, 0x28($sp)
/* 08B22C 8008A62C AFB30020 */  sw    $s3, 0x20($sp)
/* 08B230 8008A630 AFB10018 */  sw    $s1, 0x18($sp)
/* 08B234 8008A634 AFB00014 */  sw    $s0, 0x14($sp)
/* 08B238 8008A638 0C01C87A */  jal   func_800721E8
/* 08B23C 8008A63C 02802825 */   move  $a1, $s4
/* 08B240 8008A640 3C15800E */  lui   $s5, %hi(gPlayerCountSelection1) # $s5, 0x800e
/* 08B244 8008A644 26B5C538 */  addiu $s5, %lo(gPlayerCountSelection1) # addiu $s5, $s5, -0x3ac8
/* 08B248 8008A648 8EAE0000 */  lw    $t6, ($s5)
/* 08B24C 8008A64C 3C10800E */  lui   $s0, %hi(camera1) # $s0, 0x800e
/* 08B250 8008A650 8E10DB40 */  lw    $s0, %lo(camera1)($s0)
/* 08B254 8008A654 19C00018 */  blez  $t6, .L8008A6B8
/* 08B258 8008A658 00008825 */   move  $s1, $zero
/* 08B25C 8008A65C 001278C0 */  sll   $t7, $s2, 3
/* 08B260 8008A660 01F27823 */  subu  $t7, $t7, $s2
/* 08B264 8008A664 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 08B268 8008A668 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 08B26C 8008A66C 000F7940 */  sll   $t7, $t7, 5
/* 08B270 8008A670 01F89821 */  addu  $s3, $t7, $t8
/* 08B274 8008A674 867900A6 */  lh    $t9, 0xa6($s3)
.L8008A678:
/* 08B278 8008A678 02402025 */  move  $a0, $s2
/* 08B27C 8008A67C 02002825 */  move  $a1, $s0
/* 08B280 8008A680 53200008 */  beql  $t9, $zero, .L8008A6A4
/* 08B284 8008A684 8EA80000 */   lw    $t0, ($s5)
/* 08B288 8008A688 0C022850 */  jal   func_8008A140
/* 08B28C 8008A68C 24062AAB */   li    $a2, 10923
/* 08B290 8008A690 10400003 */  beqz  $v0, .L8008A6A0
/* 08B294 8008A694 02402025 */   move  $a0, $s2
/* 08B298 8008A698 0C01C870 */  jal   func_800721C0
/* 08B29C 8008A69C 02802825 */   move  $a1, $s4
.L8008A6A0:
/* 08B2A0 8008A6A0 8EA80000 */  lw    $t0, ($s5)
.L8008A6A4:
/* 08B2A4 8008A6A4 26310001 */  addiu $s1, $s1, 1
/* 08B2A8 8008A6A8 261000B8 */  addiu $s0, $s0, 0xb8
/* 08B2AC 8008A6AC 0228082A */  slt   $at, $s1, $t0
/* 08B2B0 8008A6B0 5420FFF1 */  bnel  $at, $zero, .L8008A678
/* 08B2B4 8008A6B4 867900A6 */   lh    $t9, 0xa6($s3)
.L8008A6B8:
/* 08B2B8 8008A6B8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 08B2BC 8008A6BC 8FB00014 */  lw    $s0, 0x14($sp)
/* 08B2C0 8008A6C0 8FB10018 */  lw    $s1, 0x18($sp)
/* 08B2C4 8008A6C4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 08B2C8 8008A6C8 8FB30020 */  lw    $s3, 0x20($sp)
/* 08B2CC 8008A6CC 8FB40024 */  lw    $s4, 0x24($sp)
/* 08B2D0 8008A6D0 8FB50028 */  lw    $s5, 0x28($sp)
/* 08B2D4 8008A6D4 03E00008 */  jr    $ra
/* 08B2D8 8008A6D8 27BD0030 */   addiu $sp, $sp, 0x30
