glabel func_8001D794
/* 01E394 8001D794 27BDFF70 */  addiu $sp, $sp, -0x90
/* 01E398 8001D798 AFBF0034 */  sw    $ra, 0x34($sp)
/* 01E39C 8001D79C AFB20030 */  sw    $s2, 0x30($sp)
/* 01E3A0 8001D7A0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 01E3A4 8001D7A4 AFB00028 */  sw    $s0, 0x28($sp)
/* 01E3A8 8001D7A8 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 01E3AC 8001D7AC AFA7009C */  sw    $a3, 0x9c($sp)
/* 01E3B0 8001D7B0 C4A40030 */  lwc1  $f4, 0x30($a1)
/* 01E3B4 8001D7B4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01E3B8 8001D7B8 4481A000 */  mtc1  $at, $f20
/* 01E3BC 8001D7BC E7A40060 */  swc1  $f4, 0x60($sp)
/* 01E3C0 8001D7C0 C4A60034 */  lwc1  $f6, 0x34($a1)
/* 01E3C4 8001D7C4 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 01E3C8 8001D7C8 44815000 */  mtc1  $at, $f10
/* 01E3CC 8001D7CC E7A60064 */  swc1  $f6, 0x64($sp)
/* 01E3D0 8001D7D0 C4A80038 */  lwc1  $f8, 0x38($a1)
/* 01E3D4 8001D7D4 44800000 */  mtc1  $zero, $f0
/* 01E3D8 8001D7D8 00A08025 */  move  $s0, $a1
/* 01E3DC 8001D7DC 460A4101 */  sub.s $f4, $f8, $f10
/* 01E3E0 8001D7E0 00C08825 */  move  $s1, $a2
/* 01E3E4 8001D7E4 00809025 */  move  $s2, $a0
/* 01E3E8 8001D7E8 44070000 */  mfc1  $a3, $f0
/* 01E3EC 8001D7EC E7A40068 */  swc1  $f4, 0x68($sp)
/* 01E3F0 8001D7F0 C4A6003C */  lwc1  $f6, 0x3c($a1)
/* 01E3F4 8001D7F4 27A4006C */  addiu $a0, $sp, 0x6c
/* 01E3F8 8001D7F8 E7A60054 */  swc1  $f6, 0x54($sp)
/* 01E3FC 8001D7FC C4A80040 */  lwc1  $f8, 0x40($a1)
/* 01E400 8001D800 E7A80058 */  swc1  $f8, 0x58($sp)
/* 01E404 8001D804 C4AA0044 */  lwc1  $f10, 0x44($a1)
/* 01E408 8001D808 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 01E40C 8001D80C C4A4000C */  lwc1  $f4, 0xc($a1)
/* 01E410 8001D810 E4C40000 */  swc1  $f4, ($a2)
/* 01E414 8001D814 C4A60010 */  lwc1  $f6, 0x10($a1)
/* 01E418 8001D818 E4C60004 */  swc1  $f6, 4($a2)
/* 01E41C 8001D81C C4A80014 */  lwc1  $f8, 0x14($a1)
/* 01E420 8001D820 44050000 */  mfc1  $a1, $f0
/* 01E424 8001D824 E4C80008 */  swc1  $f8, 8($a2)
/* 01E428 8001D828 87AE00AA */  lh    $t6, 0xaa($sp)
/* 01E42C 8001D82C 4406A000 */  mfc1  $a2, $f20
/* 01E430 8001D830 0C0AD950 */  jal   func_802B6540
/* 01E434 8001D834 AFAE0010 */   sw    $t6, 0x10($sp)
/* 01E438 8001D838 27A40054 */  addiu $a0, $sp, 0x54
/* 01E43C 8001D83C 0C0AD8EE */  jal   func_802B63B8
/* 01E440 8001D840 27A5006C */   addiu $a1, $sp, 0x6c
/* 01E444 8001D844 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 01E448 8001D848 C6440014 */  lwc1  $f4, 0x14($s2)
/* 01E44C 8001D84C C7A6005C */  lwc1  $f6, 0x5c($sp)
/* 01E450 8001D850 C648001C */  lwc1  $f8, 0x1c($s2)
/* 01E454 8001D854 46045380 */  add.s $f14, $f10, $f4
/* 01E458 8001D858 C6440018 */  lwc1  $f4, 0x18($s2)
/* 01E45C 8001D85C C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 01E460 8001D860 46083400 */  add.s $f16, $f6, $f8
/* 01E464 8001D864 C608000C */  lwc1  $f8, 0xc($s0)
/* 01E468 8001D868 C6260000 */  lwc1  $f6, ($s1)
/* 01E46C 8001D86C 46045480 */  add.s $f18, $f10, $f4
/* 01E470 8001D870 27A40060 */  addiu $a0, $sp, 0x60
/* 01E474 8001D874 27A5006C */  addiu $a1, $sp, 0x6c
/* 01E478 8001D878 46087281 */  sub.s $f10, $f14, $f8
/* 01E47C 8001D87C 46145102 */  mul.s $f4, $f10, $f20
/* 01E480 8001D880 C62A0004 */  lwc1  $f10, 4($s1)
/* 01E484 8001D884 46043200 */  add.s $f8, $f6, $f4
/* 01E488 8001D888 E6280000 */  swc1  $f8, ($s1)
/* 01E48C 8001D88C C6060010 */  lwc1  $f6, 0x10($s0)
/* 01E490 8001D890 46069101 */  sub.s $f4, $f18, $f6
/* 01E494 8001D894 46142202 */  mul.s $f8, $f4, $f20
/* 01E498 8001D898 C6240008 */  lwc1  $f4, 8($s1)
/* 01E49C 8001D89C 46085180 */  add.s $f6, $f10, $f8
/* 01E4A0 8001D8A0 E6260004 */  swc1  $f6, 4($s1)
/* 01E4A4 8001D8A4 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 01E4A8 8001D8A8 460A8201 */  sub.s $f8, $f16, $f10
/* 01E4AC 8001D8AC 46144182 */  mul.s $f6, $f8, $f20
/* 01E4B0 8001D8B0 46062280 */  add.s $f10, $f4, $f6
/* 01E4B4 8001D8B4 0C0AD8EE */  jal   func_802B63B8
/* 01E4B8 8001D8B8 E62A0008 */   swc1  $f10, 8($s1)
/* 01E4BC 8001D8BC C7A80060 */  lwc1  $f8, 0x60($sp)
/* 01E4C0 8001D8C0 C6440014 */  lwc1  $f4, 0x14($s2)
/* 01E4C4 8001D8C4 C7A60068 */  lwc1  $f6, 0x68($sp)
/* 01E4C8 8001D8C8 C64A001C */  lwc1  $f10, 0x1c($s2)
/* 01E4CC 8001D8CC 46044380 */  add.s $f14, $f8, $f4
/* 01E4D0 8001D8D0 C6000000 */  lwc1  $f0, ($s0)
/* 01E4D4 8001D8D4 C6440018 */  lwc1  $f4, 0x18($s2)
/* 01E4D8 8001D8D8 460A3400 */  add.s $f16, $f6, $f10
/* 01E4DC 8001D8DC C7A80064 */  lwc1  $f8, 0x64($sp)
/* 01E4E0 8001D8E0 8FAF009C */  lw    $t7, 0x9c($sp)
/* 01E4E4 8001D8E4 46007181 */  sub.s $f6, $f14, $f0
/* 01E4E8 8001D8E8 46044480 */  add.s $f18, $f8, $f4
/* 01E4EC 8001D8EC 46143282 */  mul.s $f10, $f6, $f20
/* 01E4F0 8001D8F0 46005200 */  add.s $f8, $f10, $f0
/* 01E4F4 8001D8F4 E5E80000 */  swc1  $f8, ($t7)
/* 01E4F8 8001D8F8 C6020004 */  lwc1  $f2, 4($s0)
/* 01E4FC 8001D8FC 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 01E500 8001D900 46029101 */  sub.s $f4, $f18, $f2
/* 01E504 8001D904 46142182 */  mul.s $f6, $f4, $f20
/* 01E508 8001D908 46023280 */  add.s $f10, $f6, $f2
/* 01E50C 8001D90C E70A0000 */  swc1  $f10, ($t8)
/* 01E510 8001D910 C60C0008 */  lwc1  $f12, 8($s0)
/* 01E514 8001D914 8FB900A4 */  lw    $t9, 0xa4($sp)
/* 01E518 8001D918 460C8201 */  sub.s $f8, $f16, $f12
/* 01E51C 8001D91C 46144102 */  mul.s $f4, $f8, $f20
/* 01E520 8001D920 460C2180 */  add.s $f6, $f4, $f12
/* 01E524 8001D924 E7260000 */  swc1  $f6, ($t9)
/* 01E528 8001D928 8FBF0034 */  lw    $ra, 0x34($sp)
/* 01E52C 8001D92C 8FB20030 */  lw    $s2, 0x30($sp)
/* 01E530 8001D930 8FB1002C */  lw    $s1, 0x2c($sp)
/* 01E534 8001D934 8FB00028 */  lw    $s0, 0x28($sp)
/* 01E538 8001D938 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 01E53C 8001D93C 03E00008 */  jr    $ra
/* 01E540 8001D940 27BD0090 */   addiu $sp, $sp, 0x90
