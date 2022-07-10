glabel func_8004DAB8
/* 04E6B8 8004DAB8 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 04E6BC 8004DABC 3C088016 */  lui   $t0, %hi(D_801656B0) # $t0, 0x8016
/* 04E6C0 8004DAC0 250856B0 */  addiu $t0, %lo(D_801656B0) # addiu $t0, $t0, 0x56b0
/* 04E6C4 8004DAC4 3C0F8016 */  lui   $t7, %hi(D_80165710) # $t7, 0x8016
/* 04E6C8 8004DAC8 85EF5710 */  lh    $t7, %lo(D_80165710)($t7)
/* 04E6CC 8004DACC 950E0000 */  lhu   $t6, ($t0)
/* 04E6D0 8004DAD0 AFBE0050 */  sw    $fp, 0x50($sp)
/* 04E6D4 8004DAD4 8FBE0068 */  lw    $fp, 0x68($sp)
/* 04E6D8 8004DAD8 01CFC021 */  addu  $t8, $t6, $t7
/* 04E6DC 8004DADC F7B40020 */  sdc1  $f20, 0x20($sp)
/* 04E6E0 8004DAE0 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 04E6E4 8004DAE4 A5180000 */  sh    $t8, ($t0)
/* 04E6E8 8004DAE8 3C018019 */  lui   $at, %hi(D_8018D00C) # $at, 0x8019
/* 04E6EC 8004DAEC 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 04E6F0 8004DAF0 C434D00C */  lwc1  $f20, %lo(D_8018D00C)($at)
/* 04E6F4 8004DAF4 8D230000 */  lw    $v1, ($t1)
/* 04E6F8 8004DAF8 AFB7004C */  sw    $s7, 0x4c($sp)
/* 04E6FC 8004DAFC 3C178016 */  lui   $s7, %hi(D_80165708) # $s7, 0x8016
/* 04E700 8004DB00 AFB50044 */  sw    $s5, 0x44($sp)
/* 04E704 8004DB04 AFB40040 */  sw    $s4, 0x40($sp)
/* 04E708 8004DB08 AFB3003C */  sw    $s3, 0x3c($sp)
/* 04E70C 8004DB0C AFB20038 */  sw    $s2, 0x38($sp)
/* 04E710 8004DB10 AFB10034 */  sw    $s1, 0x34($sp)
/* 04E714 8004DB14 86F75708 */  lh    $s7, %lo(D_80165708)($s7)
/* 04E718 8004DB18 3C0C0D00 */  lui   $t4, %hi(D_0D007FE0) # $t4, 0xd00
/* 04E71C 8004DB1C 246A0008 */  addiu $t2, $v1, 8
/* 04E720 8004DB20 AFBF0054 */  sw    $ra, 0x54($sp)
/* 04E724 8004DB24 AFB60048 */  sw    $s6, 0x48($sp)
/* 04E728 8004DB28 AFB00030 */  sw    $s0, 0x30($sp)
/* 04E72C 8004DB2C F7B60028 */  sdc1  $f22, 0x28($sp)
/* 04E730 8004DB30 85110000 */  lh    $s1, ($t0)
/* 04E734 8004DB34 AD2A0000 */  sw    $t2, ($t1)
/* 04E738 8004DB38 258C7FE0 */  addiu $t4, %lo(D_0D007FE0) # addiu $t4, $t4, 0x7fe0
/* 04E73C 8004DB3C 3C0B0600 */  lui   $t3, 0x600
/* 04E740 8004DB40 00E09825 */  move  $s3, $a3
/* 04E744 8004DB44 00C09025 */  move  $s2, $a2
/* 04E748 8004DB48 07C10003 */  bgez  $fp, .L8004DB58
/* 04E74C 8004DB4C 001EC843 */   sra   $t9, $fp, 1
/* 04E750 8004DB50 27C10001 */  addiu $at, $fp, 1
/* 04E754 8004DB54 0001C843 */  sra   $t9, $at, 1
.L8004DB58:
/* 04E758 8004DB58 00B9A023 */  subu  $s4, $a1, $t9
/* 04E75C 8004DB5C 0000A825 */  move  $s5, $zero
/* 04E760 8004DB60 AC6B0000 */  sw    $t3, ($v1)
/* 04E764 8004DB64 1BC00025 */  blez  $fp, .L8004DBFC
/* 04E768 8004DB68 AC6C0004 */   sw    $t4, 4($v1)
/* 04E76C 8004DB6C 06610003 */  bgez  $s3, .L8004DB7C
/* 04E770 8004DB70 00136843 */   sra   $t5, $s3, 1
/* 04E774 8004DB74 26610001 */  addiu $at, $s3, 1
/* 04E778 8004DB78 00016843 */  sra   $t5, $at, 1
.L8004DB7C:
/* 04E77C 8004DB7C 008D7023 */  subu  $t6, $a0, $t5
/* 04E780 8004DB80 448E2000 */  mtc1  $t6, $f4
/* 04E784 8004DB84 00000000 */  nop   
/* 04E788 8004DB88 468025A0 */  cvt.s.w $f22, $f4
.L8004DB8C:
/* 04E78C 8004DB8C 3230FFFF */  andi  $s0, $s1, 0xffff
/* 04E790 8004DB90 0C0AE006 */  jal   sins
/* 04E794 8004DB94 3204FFFF */   andi  $a0, $s0, 0xffff
/* 04E798 8004DB98 46140182 */  mul.s $f6, $f0, $f20
/* 04E79C 8004DB9C 3204FFFF */  andi  $a0, $s0, 0xffff
/* 04E7A0 8004DBA0 46163200 */  add.s $f8, $f6, $f22
/* 04E7A4 8004DBA4 4600428D */  trunc.w.s $f10, $f8
/* 04E7A8 8004DBA8 44165000 */  mfc1  $s6, $f10
/* 04E7AC 8004DBAC 0C0AE006 */  jal   sins
/* 04E7B0 8004DBB0 00000000 */   nop   
/* 04E7B4 8004DBB4 02402025 */  move  $a0, $s2
/* 04E7B8 8004DBB8 02602825 */  move  $a1, $s3
/* 04E7BC 8004DBBC 0C011249 */  jal   func_80044924
/* 04E7C0 8004DBC0 24060001 */   li    $a2, 1
/* 04E7C4 8004DBC4 24180001 */  li    $t8, 1
/* 04E7C8 8004DBC8 AFB80010 */  sw    $t8, 0x10($sp)
/* 04E7CC 8004DBCC 02C02025 */  move  $a0, $s6
/* 04E7D0 8004DBD0 02802825 */  move  $a1, $s4
/* 04E7D4 8004DBD4 02603025 */  move  $a2, $s3
/* 04E7D8 8004DBD8 0C012E5F */  jal   func_8004B97C
/* 04E7DC 8004DBDC 24070001 */   li    $a3, 1
/* 04E7E0 8004DBE0 02378821 */  addu  $s1, $s1, $s7
/* 04E7E4 8004DBE4 26B50001 */  addiu $s5, $s5, 1
/* 04E7E8 8004DBE8 0011CC00 */  sll   $t9, $s1, 0x10
/* 04E7EC 8004DBEC 00198C03 */  sra   $s1, $t9, 0x10
/* 04E7F0 8004DBF0 02539021 */  addu  $s2, $s2, $s3
/* 04E7F4 8004DBF4 16BEFFE5 */  bne   $s5, $fp, .L8004DB8C
/* 04E7F8 8004DBF8 26940001 */   addiu $s4, $s4, 1
.L8004DBFC:
/* 04E7FC 8004DBFC 8FBF0054 */  lw    $ra, 0x54($sp)
/* 04E800 8004DC00 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 04E804 8004DC04 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 04E808 8004DC08 8FB00030 */  lw    $s0, 0x30($sp)
/* 04E80C 8004DC0C 8FB10034 */  lw    $s1, 0x34($sp)
/* 04E810 8004DC10 8FB20038 */  lw    $s2, 0x38($sp)
/* 04E814 8004DC14 8FB3003C */  lw    $s3, 0x3c($sp)
/* 04E818 8004DC18 8FB40040 */  lw    $s4, 0x40($sp)
/* 04E81C 8004DC1C 8FB50044 */  lw    $s5, 0x44($sp)
/* 04E820 8004DC20 8FB60048 */  lw    $s6, 0x48($sp)
/* 04E824 8004DC24 8FB7004C */  lw    $s7, 0x4c($sp)
/* 04E828 8004DC28 8FBE0050 */  lw    $fp, 0x50($sp)
/* 04E82C 8004DC2C 03E00008 */  jr    $ra
/* 04E830 8004DC30 27BD0058 */   addiu $sp, $sp, 0x58
