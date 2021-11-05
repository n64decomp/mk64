glabel func_8007D804
/* 07E404 8007D804 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 07E408 8007D808 AFB50028 */  sw    $s5, 0x28($sp)
/* 07E40C 8007D80C 3C15800E */  lui   $s5, %hi(gPlayerCountSelection1) # $s5, 0x800e
/* 07E410 8007D810 26B5C538 */  addiu $s5, %lo(gPlayerCountSelection1) # addiu $s5, $s5, -0x3ac8
/* 07E414 8007D814 8EAE0000 */  lw    $t6, ($s5)
/* 07E418 8007D818 AFB40024 */  sw    $s4, 0x24($sp)
/* 07E41C 8007D81C AFB2001C */  sw    $s2, 0x1c($sp)
/* 07E420 8007D820 AFB10018 */  sw    $s1, 0x18($sp)
/* 07E424 8007D824 0080A025 */  move  $s4, $a0
/* 07E428 8007D828 AFBF002C */  sw    $ra, 0x2c($sp)
/* 07E42C 8007D82C AFB30020 */  sw    $s3, 0x20($sp)
/* 07E430 8007D830 AFB00014 */  sw    $s0, 0x14($sp)
/* 07E434 8007D834 00009025 */  move  $s2, $zero
/* 07E438 8007D838 19C00012 */  blez  $t6, .L8007D884
/* 07E43C 8007D83C 00008825 */   move  $s1, $zero
/* 07E440 8007D840 3C13800E */  lui   $s3, %hi(D_800DDB40) # $s3, 0x800e
/* 07E444 8007D844 2673DB40 */  addiu $s3, %lo(D_800DDB40) # addiu $s3, $s3, -0x24c0
/* 07E448 8007D848 00008025 */  move  $s0, $zero
/* 07E44C 8007D84C 8E6F0000 */  lw    $t7, ($s3)
.L8007D850:
/* 07E450 8007D850 02802025 */  move  $a0, $s4
/* 07E454 8007D854 24064000 */  li    $a2, 16384
/* 07E458 8007D858 0C022850 */  jal   func_8008A140
/* 07E45C 8007D85C 020F2821 */   addu  $a1, $s0, $t7
/* 07E460 8007D860 50400003 */  beql  $v0, $zero, .L8007D870
/* 07E464 8007D864 8EB80000 */   lw    $t8, ($s5)
/* 07E468 8007D868 26520001 */  addiu $s2, $s2, 1
/* 07E46C 8007D86C 8EB80000 */  lw    $t8, ($s5)
.L8007D870:
/* 07E470 8007D870 26310001 */  addiu $s1, $s1, 1
/* 07E474 8007D874 261000B8 */  addiu $s0, $s0, 0xb8
/* 07E478 8007D878 0238082A */  slt   $at, $s1, $t8
/* 07E47C 8007D87C 5420FFF4 */  bnel  $at, $zero, .L8007D850
/* 07E480 8007D880 8E6F0000 */   lw    $t7, ($s3)
.L8007D884:
/* 07E484 8007D884 8FBF002C */  lw    $ra, 0x2c($sp)
/* 07E488 8007D888 02401025 */  move  $v0, $s2
/* 07E48C 8007D88C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 07E490 8007D890 8FB00014 */  lw    $s0, 0x14($sp)
/* 07E494 8007D894 8FB10018 */  lw    $s1, 0x18($sp)
/* 07E498 8007D898 8FB30020 */  lw    $s3, 0x20($sp)
/* 07E49C 8007D89C 8FB40024 */  lw    $s4, 0x24($sp)
/* 07E4A0 8007D8A0 8FB50028 */  lw    $s5, 0x28($sp)
/* 07E4A4 8007D8A4 03E00008 */  jr    $ra
/* 07E4A8 8007D8A8 27BD0030 */   addiu $sp, $sp, 0x30
