glabel func_8004C628
/* 04D228 8004C628 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04D22C 8004C62C 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04D230 8004C630 8D220000 */  lw    $v0, ($t1)
/* 04D234 8004C634 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04D238 8004C638 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04D23C 8004C63C 244E0008 */  addiu $t6, $v0, 8
/* 04D240 8004C640 AFA40020 */  sw    $a0, 0x20($sp)
/* 04D244 8004C644 AFA50024 */  sw    $a1, 0x24($sp)
/* 04D248 8004C648 AFA60028 */  sw    $a2, 0x28($sp)
/* 04D24C 8004C64C AD2E0000 */  sw    $t6, ($t1)
/* 04D250 8004C650 3C180D00 */  lui   $t8, %hi(D_0D007EF8) # $t8, 0xd00
/* 04D254 8004C654 27187EF8 */  addiu $t8, %lo(D_0D007EF8) # addiu $t8, $t8, 0x7ef8
/* 04D258 8004C658 3C0F0600 */  lui   $t7, 0x600
/* 04D25C 8004C65C AC4F0000 */  sw    $t7, ($v0)
/* 04D260 8004C660 AC580004 */  sw    $t8, 4($v0)
/* 04D264 8004C664 8D220000 */  lw    $v0, ($t1)
/* 04D268 8004C668 3C0AB900 */  lui   $t2, (0xB9000002 >> 16) # lui $t2, 0xb900
/* 04D26C 8004C66C 354A0002 */  ori   $t2, (0xB9000002 & 0xFFFF) # ori $t2, $t2, 2
/* 04D270 8004C670 24590008 */  addiu $t9, $v0, 8
/* 04D274 8004C674 AD390000 */  sw    $t9, ($t1)
/* 04D278 8004C678 240B0001 */  li    $t3, 1
/* 04D27C 8004C67C AC4B0004 */  sw    $t3, 4($v0)
/* 04D280 8004C680 AC4A0000 */  sw    $t2, ($v0)
/* 04D284 8004C684 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04D288 8004C688 8FA50028 */  lw    $a1, 0x28($sp)
/* 04D28C 8004C68C 8FA40030 */  lw    $a0, 0x30($sp)
/* 04D290 8004C690 0C010EA1 */  jal   func_80043A84
/* 04D294 8004C694 00E03025 */   move  $a2, $a3
/* 04D298 8004C698 8FA60028 */  lw    $a2, 0x28($sp)
/* 04D29C 8004C69C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 04D2A0 8004C6A0 8FAC0020 */  lw    $t4, 0x20($sp)
/* 04D2A4 8004C6A4 8FAE0024 */  lw    $t6, 0x24($sp)
/* 04D2A8 8004C6A8 24180001 */  li    $t8, 1
/* 04D2AC 8004C6AC 00066842 */  srl   $t5, $a2, 1
/* 04D2B0 8004C6B0 00077842 */  srl   $t7, $a3, 1
/* 04D2B4 8004C6B4 AFB80010 */  sw    $t8, 0x10($sp)
/* 04D2B8 8004C6B8 018D2023 */  subu  $a0, $t4, $t5
/* 04D2BC 8004C6BC 0C012E5F */  jal   func_8004B97C
/* 04D2C0 8004C6C0 01CF2823 */   subu  $a1, $t6, $t7
/* 04D2C4 8004C6C4 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04D2C8 8004C6C8 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04D2CC 8004C6CC 8D220000 */  lw    $v0, ($t1)
/* 04D2D0 8004C6D0 3C0B0D00 */  lui   $t3, %hi(D_0D007EB8) # $t3, 0xd00
/* 04D2D4 8004C6D4 256B7EB8 */  addiu $t3, %lo(D_0D007EB8) # addiu $t3, $t3, 0x7eb8
/* 04D2D8 8004C6D8 24590008 */  addiu $t9, $v0, 8
/* 04D2DC 8004C6DC AD390000 */  sw    $t9, ($t1)
/* 04D2E0 8004C6E0 3C0A0600 */  lui   $t2, 0x600
/* 04D2E4 8004C6E4 AC4A0000 */  sw    $t2, ($v0)
/* 04D2E8 8004C6E8 AC4B0004 */  sw    $t3, 4($v0)
/* 04D2EC 8004C6EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04D2F0 8004C6F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 04D2F4 8004C6F4 03E00008 */  jr    $ra
/* 04D2F8 8004C6F8 00000000 */   nop   
