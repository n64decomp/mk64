glabel func_80072044
/* 072C44 80072044 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 072C48 80072048 AFBF001C */  sw    $ra, 0x1c($sp)
/* 072C4C 8007204C AFB00018 */  sw    $s0, 0x18($sp)
/* 072C50 80072050 8CA20000 */  lw    $v0, ($a1)
/* 072C54 80072054 00808025 */  move  $s0, $a0
/* 072C58 80072058 00001825 */  move  $v1, $zero
/* 072C5C 8007205C 0046082A */  slt   $at, $v0, $a2
/* 072C60 80072060 14200003 */  bnez  $at, .L80072070
/* 072C64 80072064 2407FFFF */   li    $a3, -1
/* 072C68 80072068 ACA00000 */  sw    $zero, ($a1)
/* 072C6C 8007206C 00001025 */  move  $v0, $zero
.L80072070:
/* 072C70 80072070 00027080 */  sll   $t6, $v0, 2
/* 072C74 80072074 18C0001A */  blez  $a2, .L800720E0
/* 072C78 80072078 01D02021 */   addu  $a0, $t6, $s0
.L8007207C:
/* 072C7C 8007207C 8C8F0000 */  lw    $t7, ($a0)
/* 072C80 80072080 24480001 */  addiu $t0, $v0, 1
/* 072C84 80072084 01001025 */  move  $v0, $t0
/* 072C88 80072088 14EF000D */  bne   $a3, $t7, .L800720C0
/* 072C8C 8007208C 0106082A */   slt   $at, $t0, $a2
/* 072C90 80072090 AFA30024 */  sw    $v1, 0x24($sp)
/* 072C94 80072094 AFA5002C */  sw    $a1, 0x2c($sp)
/* 072C98 80072098 0C01C7C0 */  jal   find_unused_obj_index
/* 072C9C 8007209C AFA60030 */   sw    $a2, 0x30($sp)
/* 072CA0 800720A0 8FA5002C */  lw    $a1, 0x2c($sp)
/* 072CA4 800720A4 8FA30024 */  lw    $v1, 0x24($sp)
/* 072CA8 800720A8 8FA60030 */  lw    $a2, 0x30($sp)
/* 072CAC 800720AC 8CB80000 */  lw    $t8, ($a1)
/* 072CB0 800720B0 27190001 */  addiu $t9, $t8, 1
/* 072CB4 800720B4 ACB90000 */  sw    $t9, ($a1)
/* 072CB8 800720B8 10000009 */  b     .L800720E0
/* 072CBC 800720BC AFA20020 */   sw    $v0, 0x20($sp)
.L800720C0:
/* 072CC0 800720C0 14200003 */  bnez  $at, .L800720D0
/* 072CC4 800720C4 ACA80000 */   sw    $t0, ($a1)
/* 072CC8 800720C8 ACA00000 */  sw    $zero, ($a1)
/* 072CCC 800720CC 00001025 */  move  $v0, $zero
.L800720D0:
/* 072CD0 800720D0 24630001 */  addiu $v1, $v1, 1
/* 072CD4 800720D4 00024880 */  sll   $t1, $v0, 2
/* 072CD8 800720D8 1466FFE8 */  bne   $v1, $a2, .L8007207C
/* 072CDC 800720DC 01302021 */   addu  $a0, $t1, $s0
.L800720E0:
/* 072CE0 800720E0 14660002 */  bne   $v1, $a2, .L800720EC
/* 072CE4 800720E4 8FA40020 */   lw    $a0, 0x20($sp)
/* 072CE8 800720E8 2404FFFF */  li    $a0, -1
.L800720EC:
/* 072CEC 800720EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 072CF0 800720F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 072CF4 800720F4 27BD0028 */  addiu $sp, $sp, 0x28
/* 072CF8 800720F8 03E00008 */  jr    $ra
/* 072CFC 800720FC 00801025 */   move  $v0, $a0
