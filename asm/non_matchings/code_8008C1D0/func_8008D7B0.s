glabel func_8008D7B0
/* 08E3B0 8008D7B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08E3B4 8008D7B4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 08E3B8 8008D7B8 00A07025 */  move  $t6, $a1
/* 08E3BC 8008D7BC 000E2E00 */  sll   $a1, $t6, 0x18
/* 08E3C0 8008D7C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08E3C4 8008D7C4 00057E03 */  sra   $t7, $a1, 0x18
/* 08E3C8 8008D7C8 01E02825 */  move  $a1, $t7
/* 08E3CC 8008D7CC A3AE001F */  sb    $t6, 0x1f($sp)
/* 08E3D0 8008D7D0 0C0230D5 */  jal   func_8008C354
/* 08E3D4 8008D7D4 AFA40018 */   sw    $a0, 0x18($sp)
/* 08E3D8 8008D7D8 8FA60018 */  lw    $a2, 0x18($sp)
/* 08E3DC 8008D7DC 3C010080 */  lui   $at, 0x80
/* 08E3E0 8008D7E0 83A7001F */  lb    $a3, 0x1f($sp)
/* 08E3E4 8008D7E4 8CD900BC */  lw    $t9, 0xbc($a2)
/* 08E3E8 8008D7E8 8CCB000C */  lw    $t3, 0xc($a2)
/* 08E3EC 8008D7EC 94C20254 */  lhu   $v0, 0x254($a2)
/* 08E3F0 8008D7F0 03214025 */  or    $t0, $t9, $at
/* 08E3F4 8008D7F4 2401FFEF */  li    $at, -17
/* 08E3F8 8008D7F8 01015024 */  and   $t2, $t0, $at
/* 08E3FC 8008D7FC 3C01FFFD */  lui   $at, (0xFFFDFFFF >> 16) # lui $at, 0xfffd
/* 08E400 8008D800 84D8002E */  lh    $t8, 0x2e($a2)
/* 08E404 8008D804 3421FFFF */  ori   $at, (0xFFFDFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 08E408 8008D808 01616024 */  and   $t4, $t3, $at
/* 08E40C 8008D80C 3C01800E */  lui   $at, %hi(D_800E3770)
/* 08E410 8008D810 ACC800BC */  sw    $t0, 0xbc($a2)
/* 08E414 8008D814 00026880 */  sll   $t5, $v0, 2
/* 08E418 8008D818 002D0821 */  addu  $at, $at, $t5
/* 08E41C 8008D81C ACCA00BC */  sw    $t2, 0xbc($a2)
/* 08E420 8008D820 ACCC000C */  sw    $t4, 0xc($a2)
/* 08E424 8008D824 A4D800AE */  sh    $t8, 0xae($a2)
/* 08E428 8008D828 C4243770 */  lwc1  $f4, %lo(D_800E3770)($at)
/* 08E42C 8008D82C 44803000 */  mtc1  $zero, $f6
/* 08E430 8008D830 3C01800E */  lui   $at, %hi(D_800E3750)
/* 08E434 8008D834 002D0821 */  addu  $at, $at, $t5
/* 08E438 8008D838 E4C400F0 */  swc1  $f4, 0xf0($a2)
/* 08E43C 8008D83C E4C600F4 */  swc1  $f6, 0xf4($a2)
/* 08E440 8008D840 C4283750 */  lwc1  $f8, %lo(D_800E3750)($at)
/* 08E444 8008D844 3C018019 */  lui   $at, %hi(D_8018D920) # 0x8019
/* 08E448 8008D848 00077040 */  sll   $t6, $a3, 1
/* 08E44C 8008D84C 002E0821 */  addu  $at, $at, $t6
/* 08E450 8008D850 E4C800EC */  swc1  $f8, 0xec($a2)
/* 08E454 8008D854 A420D920 */  sh    $zero, %lo(D_8018D920)($at) # -0x26e0($at)
/* 08E458 8008D858 94C30000 */  lhu   $v1, ($a2)
/* 08E45C 8008D85C 240F0004 */  li    $t7, 4
/* 08E460 8008D860 24014000 */  li    $at, 16384
/* 08E464 8008D864 30784000 */  andi  $t8, $v1, 0x4000
/* 08E468 8008D868 A4CF00B2 */  sh    $t7, 0xb2($a2)
/* 08E46C 8008D86C A4C000C0 */  sh    $zero, 0xc0($a2)
/* 08E470 8008D870 ACC0007C */  sw    $zero, 0x7c($a2)
/* 08E474 8008D874 1701000B */  bne   $t8, $at, .L8008D8A4
/* 08E478 8008D878 A4C00078 */   sh    $zero, 0x78($a2)
/* 08E47C 8008D87C 30790100 */  andi  $t9, $v1, 0x100
/* 08E480 8008D880 24010100 */  li    $at, 256
/* 08E484 8008D884 13210007 */  beq   $t9, $at, .L8008D8A4
/* 08E488 8008D888 30E400FF */   andi  $a0, $a3, 0xff
/* 08E48C 8008D88C 94C50254 */  lhu   $a1, 0x254($a2)
/* 08E490 8008D890 3C012900 */  lui   $at, (0x29008003 >> 16) # lui $at, 0x2900
/* 08E494 8008D894 34218003 */  ori   $at, (0x29008003 & 0xFFFF) # ori $at, $at, 0x8003
/* 08E498 8008D898 00054100 */  sll   $t0, $a1, 4
/* 08E49C 8008D89C 0C03243D */  jal   func_800C90F4
/* 08E4A0 8008D8A0 01012821 */   addu  $a1, $t0, $at
.L8008D8A4:
/* 08E4A4 8008D8A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08E4A8 8008D8A8 27BD0018 */  addiu $sp, $sp, 0x18
/* 08E4AC 8008D8AC 03E00008 */  jr    $ra
/* 08E4B0 8008D8B0 00000000 */   nop   
