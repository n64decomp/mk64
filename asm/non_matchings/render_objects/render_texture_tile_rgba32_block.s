glabel render_texture_tile_rgba32_block
/* 04D2FC 8004C6FC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 04D300 8004C700 AFB10024 */  sw    $s1, 0x24($sp)
/* 04D304 8004C704 8FB10058 */  lw    $s1, 0x58($sp)
/* 04D308 8004C708 3C0C8015 */  lui   $t4, %hi(gDisplayListHead) # $t4, 0x8015
/* 04D30C 8004C70C 258C0298 */  addiu $t4, %lo(gDisplayListHead) # addiu $t4, $t4, 0x298
/* 04D310 8004C710 00047400 */  sll   $t6, $a0, 0x10
/* 04D314 8004C714 00F10019 */  multu $a3, $s1
/* 04D318 8004C718 8D820000 */  lw    $v0, ($t4)
/* 04D31C 8004C71C 000E7C03 */  sra   $t7, $t6, 0x10
/* 04D320 8004C720 0005C400 */  sll   $t8, $a1, 0x10
/* 04D324 8004C724 0018CC03 */  sra   $t9, $t8, 0x10
/* 04D328 8004C728 AFBE0040 */  sw    $fp, 0x40($sp)
/* 04D32C 8004C72C AFA40048 */  sw    $a0, 0x48($sp)
/* 04D330 8004C730 00076842 */  srl   $t5, $a3, 1
/* 04D334 8004C734 01E02025 */  move  $a0, $t7
/* 04D338 8004C738 AFB40030 */  sw    $s4, 0x30($sp)
/* 04D33C 8004C73C AFA5004C */  sw    $a1, 0x4c($sp)
/* 04D340 8004C740 01EDF023 */  subu  $fp, $t7, $t5
/* 04D344 8004C744 00117042 */  srl   $t6, $s1, 1
/* 04D348 8004C748 03202825 */  move  $a1, $t9
/* 04D34C 8004C74C 032EA023 */  subu  $s4, $t9, $t6
/* 04D350 8004C750 244F0008 */  addiu $t7, $v0, 8
/* 04D354 8004C754 AFBF0044 */  sw    $ra, 0x44($sp)
/* 04D358 8004C758 AFB7003C */  sw    $s7, 0x3c($sp)
/* 04D35C 8004C75C AFB60038 */  sw    $s6, 0x38($sp)
/* 04D360 8004C760 AFB50034 */  sw    $s5, 0x34($sp)
/* 04D364 8004C764 AFB3002C */  sw    $s3, 0x2c($sp)
/* 04D368 8004C768 AFB20028 */  sw    $s2, 0x28($sp)
/* 04D36C 8004C76C AFB00020 */  sw    $s0, 0x20($sp)
/* 04D370 8004C770 AD8F0000 */  sw    $t7, ($t4)
/* 04D374 8004C774 3C190D00 */  lui   $t9, %hi(D_0D007EF8) # $t9, 0xd00
/* 04D378 8004C778 27397EF8 */  addiu $t9, %lo(D_0D007EF8) # addiu $t9, $t9, 0x7ef8
/* 04D37C 8004C77C 3C180600 */  lui   $t8, 0x600
/* 04D380 8004C780 AC580000 */  sw    $t8, ($v0)
/* 04D384 8004C784 AC590004 */  sw    $t9, 4($v0)
/* 04D388 8004C788 00404025 */  move  $t0, $v0
/* 04D38C 8004C78C 8D820000 */  lw    $v0, ($t4)
/* 04D390 8004C790 00001812 */  mflo  $v1
/* 04D394 8004C794 0003C080 */  sll   $t8, $v1, 2
/* 04D398 8004C798 3C0F0050 */  lui   $t7, (0x00504240 >> 16) # lui $t7, 0x50
/* 04D39C 8004C79C 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 04D3A0 8004C7A0 244D0008 */  addiu $t5, $v0, 8
/* 04D3A4 8004C7A4 AD8D0000 */  sw    $t5, ($t4)
/* 04D3A8 8004C7A8 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 04D3AC 8004C7AC 35EF4240 */  ori   $t7, (0x00504240 & 0xFFFF) # ori $t7, $t7, 0x4240
/* 04D3B0 8004C7B0 00185B02 */  srl   $t3, $t8, 0xc
/* 04D3B4 8004C7B4 33190FFF */  andi  $t9, $t8, 0xfff
/* 04D3B8 8004C7B8 00E09025 */  move  $s2, $a3
/* 04D3BC 8004C7BC 00C0A825 */  move  $s5, $a2
/* 04D3C0 8004C7C0 03001825 */  move  $v1, $t8
/* 04D3C4 8004C7C4 0300B025 */  move  $s6, $t8
/* 04D3C8 8004C7C8 01605025 */  move  $t2, $t3
/* 04D3CC 8004C7CC AC4F0004 */  sw    $t7, 4($v0)
/* 04D3D0 8004C7D0 AC4E0000 */  sw    $t6, ($v0)
/* 04D3D4 8004C7D4 13200002 */  beqz  $t9, .L8004C7E0
/* 04D3D8 8004C7D8 00404825 */   move  $t1, $v0
/* 04D3DC 8004C7DC 256A0001 */  addiu $t2, $t3, 1
.L8004C7E0:
/* 04D3E0 8004C7E0 022A001B */  divu  $zero, $s1, $t2
/* 04D3E4 8004C7E4 00008012 */  mflo  $s0
/* 04D3E8 8004C7E8 0140B825 */  move  $s7, $t2
/* 04D3EC 8004C7EC 15400002 */  bnez  $t2, .L8004C7F8
/* 04D3F0 8004C7F0 00000000 */   nop   
/* 04D3F4 8004C7F4 0007000D */  break 7
.L8004C7F8:
/* 04D3F8 8004C7F8 00009825 */  move  $s3, $zero
/* 04D3FC 8004C7FC 1940001F */  blez  $t2, .L8004C87C
/* 04D400 8004C800 00000000 */   nop   
.L8004C804:
/* 04D404 8004C804 02500019 */  multu $s2, $s0
/* 04D408 8004C808 02A02025 */  move  $a0, $s5
/* 04D40C 8004C80C 02402825 */  move  $a1, $s2
/* 04D410 8004C810 02003025 */  move  $a2, $s0
/* 04D414 8004C814 00008812 */  mflo  $s1
/* 04D418 8004C818 00116880 */  sll   $t5, $s1, 2
/* 04D41C 8004C81C 0C010F0A */  jal   load_texture_tile_rgba32_nomirror
/* 04D420 8004C820 01A08825 */   move  $s1, $t5
/* 04D424 8004C824 240E0001 */  li    $t6, 1
/* 04D428 8004C828 AFAE0010 */  sw    $t6, 0x10($sp)
/* 04D42C 8004C82C 03C02025 */  move  $a0, $fp
/* 04D430 8004C830 02802825 */  move  $a1, $s4
/* 04D434 8004C834 02403025 */  move  $a2, $s2
/* 04D438 8004C838 0C012E54 */  jal   render_texture_rectangle_wrap
/* 04D43C 8004C83C 02003825 */   move  $a3, $s0
/* 04D440 8004C840 02D11023 */  subu  $v0, $s6, $s1
/* 04D444 8004C844 04410008 */  bgez  $v0, .L8004C868
/* 04D448 8004C848 02B1A821 */   addu  $s5, $s5, $s1
/* 04D44C 8004C84C 02D2001B */  divu  $zero, $s6, $s2
/* 04D450 8004C850 00008012 */  mflo  $s0
/* 04D454 8004C854 16400002 */  bnez  $s2, .L8004C860
/* 04D458 8004C858 00000000 */   nop   
/* 04D45C 8004C85C 0007000D */  break 7
.L8004C860:
/* 04D460 8004C860 10000003 */  b     .L8004C870
/* 04D464 8004C864 26730001 */   addiu $s3, $s3, 1
.L8004C868:
/* 04D468 8004C868 0040B025 */  move  $s6, $v0
/* 04D46C 8004C86C 26730001 */  addiu $s3, $s3, 1
.L8004C870:
/* 04D470 8004C870 0277082A */  slt   $at, $s3, $s7
/* 04D474 8004C874 1420FFE3 */  bnez  $at, .L8004C804
/* 04D478 8004C878 0290A021 */   addu  $s4, $s4, $s0
.L8004C87C:
/* 04D47C 8004C87C 3C028015 */  lui   $v0, %hi(gDisplayListHead) # $v0, 0x8015
/* 04D480 8004C880 8C420298 */  lw    $v0, %lo(gDisplayListHead)($v0)
/* 04D484 8004C884 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 04D488 8004C888 3C190D00 */  lui   $t9, %hi(D_0D007EB8) # $t9, 0xd00
/* 04D48C 8004C88C 244F0008 */  addiu $t7, $v0, 8
/* 04D490 8004C890 AC2F0298 */  sw    $t7, %lo(gDisplayListHead)($at)
/* 04D494 8004C894 27397EB8 */  addiu $t9, %lo(D_0D007EB8) # addiu $t9, $t9, 0x7eb8
/* 04D498 8004C898 3C180600 */  lui   $t8, 0x600
/* 04D49C 8004C89C AC580000 */  sw    $t8, ($v0)
/* 04D4A0 8004C8A0 AC590004 */  sw    $t9, 4($v0)
/* 04D4A4 8004C8A4 8FBF0044 */  lw    $ra, 0x44($sp)
/* 04D4A8 8004C8A8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 04D4AC 8004C8AC 8FB7003C */  lw    $s7, 0x3c($sp)
/* 04D4B0 8004C8B0 8FB60038 */  lw    $s6, 0x38($sp)
/* 04D4B4 8004C8B4 8FB50034 */  lw    $s5, 0x34($sp)
/* 04D4B8 8004C8B8 8FB40030 */  lw    $s4, 0x30($sp)
/* 04D4BC 8004C8BC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 04D4C0 8004C8C0 8FB20028 */  lw    $s2, 0x28($sp)
/* 04D4C4 8004C8C4 8FB10024 */  lw    $s1, 0x24($sp)
/* 04D4C8 8004C8C8 8FB00020 */  lw    $s0, 0x20($sp)
/* 04D4CC 8004C8CC 03E00008 */  jr    $ra
/* 04D4D0 8004C8D0 27BD0048 */   addiu $sp, $sp, 0x48
