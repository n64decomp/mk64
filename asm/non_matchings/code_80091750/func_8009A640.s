glabel func_8009A640
/* 09B240 8009A640 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 09B244 8009A644 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09B248 8009A648 AFA40028 */  sw    $a0, 0x28($sp)
/* 09B24C 8009A64C AFA60030 */  sw    $a2, 0x30($sp)
/* 09B250 8009A650 00E02025 */  move  $a0, $a3
/* 09B254 8009A654 0C026455 */  jal   segmented_to_virtual_dupe
/* 09B258 8009A658 AFA5002C */   sw    $a1, 0x2c($sp)
/* 09B25C 8009A65C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 09B260 8009A660 8FA5002C */  lw    $a1, 0x2c($sp)
/* 09B264 8009A664 3C188019 */  lui   $t8, %hi(D_8018DEE0) # $t8, 0x8019
/* 09B268 8009A668 000E7880 */  sll   $t7, $t6, 2
/* 09B26C 8009A66C 01EE7823 */  subu  $t7, $t7, $t6
/* 09B270 8009A670 000F78C0 */  sll   $t7, $t7, 3
/* 09B274 8009A674 2718DEE0 */  addiu $t8, %lo(D_8018DEE0) # addiu $t8, $t8, -0x2120
/* 09B278 8009A678 01F81821 */  addu  $v1, $t7, $t8
/* 09B27C 8009A67C 0005C8C0 */  sll   $t9, $a1, 3
/* 09B280 8009A680 AC620000 */  sw    $v0, ($v1)
/* 09B284 8009A684 03224021 */  addu  $t0, $t9, $v0
/* 09B288 8009A688 AC650004 */  sw    $a1, 4($v1)
/* 09B28C 8009A68C 8D090004 */  lw    $t1, 4($t0)
/* 09B290 8009A690 000550C0 */  sll   $t2, $a1, 3
/* 09B294 8009A694 004A5821 */  addu  $t3, $v0, $t2
/* 09B298 8009A698 AC690008 */  sw    $t1, 8($v1)
/* 09B29C 8009A69C 8D640000 */  lw    $a0, ($t3)
/* 09B2A0 8009A6A0 0C026449 */  jal   segmented_to_virtual
/* 09B2A4 8009A6A4 AFA3001C */   sw    $v1, 0x1c($sp)
/* 09B2A8 8009A6A8 8FA3001C */  lw    $v1, 0x1c($sp)
/* 09B2AC 8009A6AC 00402025 */  move  $a0, $v0
/* 09B2B0 8009A6B0 8FA50030 */  lw    $a1, 0x30($sp)
/* 09B2B4 8009A6B4 8C6C0014 */  lw    $t4, 0x14($v1)
/* 09B2B8 8009A6B8 39860001 */  xori  $a2, $t4, 1
/* 09B2BC 8009A6BC 0C026798 */  jal   func_80099E60
/* 09B2C0 8009A6C0 AC660014 */   sw    $a2, 0x14($v1)
/* 09B2C4 8009A6C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09B2C8 8009A6C8 27BD0028 */  addiu $sp, $sp, 0x28
/* 09B2CC 8009A6CC 03E00008 */  jr    $ra
/* 09B2D0 8009A6D0 00000000 */   nop   
